import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/effects/animated_flag_shader_delegate.dart";

void main() => group("$AnimatedFlagShaderDelegate", () {
  TestWidgetsFlutterBinding.ensureInitialized();

  group("animate", () {
    testWidgets("returns true by default", (tester) async {
      final delegate = _AnimatedFlagShaderDelegateTest(vsync: tester);
      expect(delegate.animate, isTrue);

      delegate
        ..stopAnimation()
        ..dispose();
    });

    testWidgets("can be overridden to return false", (tester) async {
      final delegate = _PausableAnimatedDelegate(vsync: tester, isPaused: true);
      expect(delegate.animate, isFalse);
      delegate.dispose();
    });
  });

  group("startAnimation", () {
    testWidgets("can be called on paused delegate", (tester) async {
      final delegate = _PausableAnimatedDelegate(vsync: tester, isPaused: true);
      expect(delegate.animate, isFalse);
      expect(delegate.currentTime, equals(0));
      delegate.startAnimation();
      await tester.pump(const Duration(milliseconds: 16));
      expect(
        delegate.currentTime,
        equals(0),
        reason: "Time should remain 0 because delegate is paused.",
      );
      delegate
        ..stopAnimation()
        ..dispose();
    });

    testWidgets("can be called multiple times safely", (tester) async {
      final delegate = _AnimatedFlagShaderDelegateTest(vsync: tester)
        ..stopAnimation()
        ..simulateTick(0.016);
      final timeBefore = delegate.currentTime;
      expect(timeBefore, greaterThan(0));
      delegate
        ..startAnimation()
        ..simulateTick(0.016);
      expect(
        delegate.currentTime,
        greaterThan(timeBefore),
        reason: "Time should continue advancing normally.",
      );
      delegate
        ..stopAnimation()
        ..dispose();
    });
  });

  testWidgets("stopAnimation can be called and preserves time", (tester) async {
    final delegate = _AnimatedFlagShaderDelegateTest(vsync: tester)
      ..stopAnimation()
      ..simulateTick(0.016);
    final timeStopped = delegate.currentTime;
    expect(timeStopped, greaterThan(0));
    delegate.stopAnimation();
    expect(
      delegate.currentTime,
      equals(timeStopped),
      reason: "Time should be preserved (not reset)",
    );
    delegate.dispose();
  });

  testWidgets("animation resumes from same point", (tester) async {
    final delegate = _AnimatedFlagShaderDelegateTest(vsync: tester)
      ..stopAnimation()
      ..simulateTick(0.05);
    final timeStopped = delegate.currentTime;
    expect(timeStopped, greaterThan(0));

    delegate
      ..stopAnimation()
      ..startAnimation();
    expect(
      delegate.currentTime,
      equals(timeStopped),
      reason: "Time should be same (not reset).",
    );
    delegate.simulateTick(0.016);
    expect(delegate.currentTime, greaterThan(timeStopped));
    delegate
      ..stopAnimation()
      ..dispose();
  });

  testWidgets("animationSpeed affects time increment", (tester) async {
    final slowDelegate = _AnimatedFlagShaderDelegateTest(
      vsync: tester,
      speed: 0.5,
    )..stopAnimation();
    final fastDelegate = _AnimatedFlagShaderDelegateTest(
      vsync: tester,
      speed: 2,
    )..stopAnimation();

    const deltaSeconds = 0.1; // Simulate same delta time for both.
    slowDelegate.simulateTick(deltaSeconds);
    fastDelegate.simulateTick(deltaSeconds);
    expect(
      fastDelegate.currentTime,
      greaterThan(slowDelegate.currentTime),
      reason: "Fast delegate should have advanced more than slow delegate.",
    );
    expect(
      fastDelegate.currentTime,
      closeTo(slowDelegate.currentTime * 4, 1e-6),
      reason:
          "Verify the ratio is correct, 2x speed vs 0.5x speed = 4x difference",
    );

    slowDelegate
      ..stopAnimation()
      ..dispose();
    fastDelegate
      ..stopAnimation()
      ..dispose();
  });

  testWidgets("onTick is called during animation", (tester) async {
    final delegate = _TrackingAnimatedDelegate(vsync: tester)..stopAnimation();
    expect(delegate.tickCount, equals(0));
    delegate
      ..simulateTick(0.015)
      ..simulateTick(0.016);
    expect(delegate.tickCount, equals(2));
    delegate
      ..stopAnimation()
      ..dispose();
  });

  testWidgets("does not start when animate returns false", (tester) async {
    final delegate = _PausableAnimatedDelegate(vsync: tester, isPaused: true);
    // Verify time doesn't advance when manually ticked (ticker not running).
    await tester.pump(const Duration(milliseconds: 16));
    expect(
      delegate.currentTime,
      equals(0),
      reason: "Time should remain 0 because ticker never started.",
    );
    delegate.dispose();
  });

  testWidgets("time wraps around at 10000 to prevent overflow", (tester) async {
    final delegate =
        _AnimatedFlagShaderDelegateTest(vsync: tester, speed: 100_000)
          ..stopAnimation()
          ..simulateTick(0.2); // 0.2 * 100000 = 20000 -> wraps to 10000.
    expect(delegate.currentTime, equals(10000));
    delegate
      ..stopAnimation()
      ..dispose();
  });

  testWidgets("animationSpeed defaults to 1", (tester) async {
    final delegate = _AnimatedFlagShaderDelegateTest(vsync: tester)
      ..stopAnimation();
    expect(delegate.animationSpeed, 1.0);
    delegate
      ..stopAnimation()
      ..dispose();
  });
});

/// A concrete test implementation of [AnimatedFlagShaderDelegate].
class _AnimatedFlagShaderDelegateTest extends AnimatedFlagShaderDelegate {
  _AnimatedFlagShaderDelegateTest({required super.vsync, double speed = 1})
    : super(assetPath: "shaders/waved_flag.frag", animationSpeed: speed);

  /// Exposes the protected [time] field for testing.
  double get currentTime => time;

  /// Simulates a tick by directly calling [onTick].
  void simulateTick(double deltaSeconds) => onTick(deltaSeconds);
}

/// A test delegate that allows controlling the [animate] getter.
class _PausableAnimatedDelegate extends AnimatedFlagShaderDelegate {
  _PausableAnimatedDelegate({required super.vsync, required this.isPaused})
    : super(assetPath: "shaders/waved_flag.frag");

  final bool isPaused;

  @override
  bool get animate => !isPaused;

  /// Exposes the protected [time] field for testing.
  double get currentTime => time;

  /// Simulates a tick by directly calling [onTick].
  void simulateTick(double deltaSeconds) => onTick(deltaSeconds);
}

/// A test delegate that tracks [onTick] calls.
class _TrackingAnimatedDelegate extends AnimatedFlagShaderDelegate {
  _TrackingAnimatedDelegate({required super.vsync})
    : super(assetPath: "shaders/waved_flag.frag");

  int tickCount = 0;

  @override
  void onTick(double deltaSeconds) {
    tickCount += 1;
    super.onTick(deltaSeconds);
  }

  /// Simulates a tick by directly calling [onTick].
  void simulateTick(double deltaSeconds) => onTick(deltaSeconds);
}
