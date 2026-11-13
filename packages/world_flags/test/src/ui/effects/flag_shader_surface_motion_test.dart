import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";
import "package:flutter_test/flutter_test.dart";
import "package:sealed_countries/sealed_countries.dart";
import "package:world_flags/src/model/flag_properties.dart";
import "package:world_flags/src/ui/effects/animated_flag_shader_delegate.dart";
import "package:world_flags/src/ui/effects/flag_shader_delegate.dart";
import "package:world_flags/src/ui/effects/flag_shader_options.dart";
import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
import "package:world_flags/src/ui/effects/waved_flag_shader_delegate.dart";

import "../../../helpers/flag_paint.dart";

void main() => group("$FlagShaderSurface with reduced motion", () {
  testWidgets("builds a frozen delegate to reduce motion", (tester) async {
    final recorder = _DelegateRecorder();
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(recorder, reduceMotion: true),
    );

    expect(recorder.built.single.animate, isFalse);
    expect(recorder.built.single.frozenPhase, _options.frozenPhase);
    expect(tester.binding.transientCallbackCount, isZero); // No ticker.
  });

  testWidgets("builds a frozen delegate without animations", (tester) async {
    final recorder = _DelegateRecorder();
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(recorder, disableAnimations: true),
    );

    expect(recorder.built.single.animate, isFalse);
    expect(tester.binding.transientCallbackCount, isZero);
  });

  testWidgets("rebuilds the delegate when the setting changes", (tester) async {
    final recorder = _DelegateRecorder();
    await tester.pumpWidget(_FlagShaderSurfaceMotionTest(recorder));
    expect(tester.binding.transientCallbackCount, 1); // A ticker.
    recorder.delegates.single.advance(1.5);
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(recorder, reduceMotion: true),
    );
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(recorder, reduceMotion: true),
    );

    expect(recorder.built.map((options) => options.animate), [true, false]);
    expect(recorder.delegates.last.currentTime, 1.5); // The time continues.
    expect(tester.binding.transientCallbackCount, isZero);
  });

  testWidgets("keeps a delegate which doesn't animate anyway", (tester) async {
    final recorder = _DelegateRecorder();
    const options = FlagShaderOptions(animate: false);
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(recorder, options: options),
    );
    await tester.pumpWidget(
      _FlagShaderSurfaceMotionTest(
        recorder,
        reduceMotion: true,
        options: options,
      ),
    );

    expect(recorder.delegates, hasLength(1));
  });

  testWidgets("rests the default waved flag", (tester) async {
    await tester.pumpWidget(
      const MediaQuery(
        data: MediaQueryData(reduceMotion: true),
        child: FlagShaderSurface(CountryUsa()),
      ),
    );
    expect(flagPaint(tester).willChange, isFalse);

    await tester.pumpWidget(
      const MediaQuery(
        data: MediaQueryData(),
        child: FlagShaderSurface(CountryUsa()),
      ),
    );
    expect(flagPaint(tester).willChange, isTrue);
  });

  testWidgets("keeps an external animated shader as is", (tester) async {
    final shader = WavedFlagShaderDelegate(vsync: tester);
    await tester.pumpWidget(
      MediaQuery(
        data: const MediaQueryData(reduceMotion: true),
        child: FlagShaderSurface(const CountryUsa(), shader: shader),
      ),
    );

    expect(flagPaint(tester).willChange, isTrue);
    expect(shader.animate, isTrue);
    await tester.pumpWidget(const SizedBox.shrink());
    shader.dispose(); // Before the check of active tickers at the test end.
  });
});

/// A flag surface with the given accessibility settings of the platform.
final class _FlagShaderSurfaceMotionTest extends StatelessWidget {
  const new(
    this.recorder, {
    this.reduceMotion = false,
    this.disableAnimations = false,
    this.options = _options,
  });

  final _DelegateRecorder recorder;
  final bool reduceMotion;
  final bool disableAnimations;
  final FlagShaderOptions options;

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty<_DelegateRecorder>("recorder", recorder))
      ..add(FlagProperty("reduceMotion", value: reduceMotion))
      ..add(FlagProperty("disableAnimations", value: disableAnimations))
      ..add(DiagnosticsProperty<FlagShaderOptions>("options", options));
  }

  @override
  Widget build(BuildContext context) => MediaQuery(
    data: MediaQueryData(
      reduceMotion: reduceMotion,
      disableAnimations: disableAnimations,
    ),
    child: FlagShaderSurface(
      const CountryUsa(),
      delegateBuilder: recorder.build,
      options: options,
    ),
  );
}

const _options = FlagShaderOptions(frozenPhase: 0.4);

/// Records the delegates and the options they were built with.
final class _DelegateRecorder {
  final built = <FlagShaderOptions>[];
  final delegates = <_AnimatedDelegate>[];

  FlagShaderDelegate build(
    TickerProvider vsync,
    FlagShaderOptions options,
    FlagProperties _,
  ) {
    final delegate = _AnimatedDelegate(vsync, options: options);
    // ignore: avoid-collection-mutating-methods, it's the point of a recorder.
    built.add(options);
    // ignore: avoid-collection-mutating-methods, it's the point of a recorder.
    delegates.add(delegate);

    return delegate;
  }
}

/// An animated delegate which follows the options, as delegates should.
final class _AnimatedDelegate extends AnimatedFlagShaderDelegate {
  new(TickerProvider vsync, {required this.options})
    : super(vsync: vsync, assetPath: "shaders/waved_flag.frag");

  final FlagShaderOptions options;

  double get currentTime => time;

  @override
  bool get animate => options.animate;

  void advance(double seconds) => onTick(seconds);
}
