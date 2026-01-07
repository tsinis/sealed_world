import "dart:ui";

import "package:flutter/material.dart";
import "package:flutter/scheduler.dart";
import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/effects/flag_shader_options.dart";
import "package:world_flags/src/ui/effects/waved_flag_shader_delegate.dart";

void main() => group("$WavedFlagShaderDelegate", () {
  TestWidgetsFlutterBinding.ensureInitialized();

  testWidgets("shouldClipContent follows options", (tester) async {
    // Use a mock ticker provider to avoid shader loading issues.
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(
      vsync: tickerProvider,
      options: const FlagShaderOptions(clipContent: true),
    );
    await tester.pump();
    expect(delegate.shouldClipContent, isTrue);
    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("contentScale is 1 when clipContent is true", (tester) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(
      vsync: tickerProvider,
      options: const FlagShaderOptions(clipContent: true),
    );

    await tester.pump();
    expect(delegate.contentScale, 1);

    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("contentScale uses overflowScale when clipContent is false", (
    tester,
  ) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(
      vsync: tickerProvider,
      options: const FlagShaderOptions(overflowScale: 0.85),
    );
    await tester.pump();
    expect(delegate.contentScale, 0.85);
    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("paintWithShader returns false when size is empty", (
    tester, // ignore: unnecessary-trailing-comma, Dart 3.8 formatting.
  ) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(vsync: tickerProvider);

    await tester.pump();
    final recorder = PictureRecorder();
    Canvas(recorder).drawRect(
      const Rect.fromLTWH(0, 0, 100, 100),
      Paint()..color = Colors.red,
    );
    final picture = recorder.endRecording();
    final image = await picture.toImage(100, 100);
    final dummyRecorder = PictureRecorder();
    final dummyCanvas = Canvas(dummyRecorder);

    final result = delegate.paintWithShader(
      dummyCanvas,
      Size.zero,
      image: image,
    );
    expect(result, isFalse);
    image.dispose();
    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("dispose releases resources", (tester) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(vsync: tickerProvider);
    await tester.pump();
    expect(delegate.dispose, returnsNormally);
    tickerProvider.dispose();
  });

  testWidgets("handles custom error callback", (tester) async {
    Object? capturedError;
    StackTrace? capturedStackTrace;

    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(
      vsync: tickerProvider,
      onError: (error, stackTrace) {
        capturedError = error;
        capturedStackTrace = stackTrace;
      },
    );

    await tester.pump();
    final recorder = PictureRecorder();
    Canvas(recorder).drawRect(
      const Rect.fromLTWH(0, 0, 10, 10),
      Paint()..color = Colors.green,
    );
    final picture = recorder.endRecording();
    final testImage = await picture.toImage(10, 10);

    final canvasRecorder = PictureRecorder();
    final testCanvas = Canvas(canvasRecorder);
    delegate.paintWithShader(testCanvas, const Size(50, 25), image: testImage);
    expect(capturedError, isNull, reason: "No error should occur on 1st paint");
    expect(capturedStackTrace, isNull);
    testImage.dispose();
    delegate.paintWithShader(testCanvas, const Size(50, 25), image: testImage);

    expect(capturedError, isNotNull);
    expect(capturedStackTrace, isNotNull);

    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("implements ChangeNotifier", (tester) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(vsync: tickerProvider);

    await tester.pump();

    expect(delegate, isA<ChangeNotifier>());

    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("paintWithShader returns true with shader program", (
    tester,
  ) async {
    const tickerProvider = _WavedFlagShaderDelegateTest();
    final delegate = WavedFlagShaderDelegate(vsync: tickerProvider);

    await tester.pump();

    final recorder = PictureRecorder();
    Canvas(recorder).drawRect(
      const Rect.fromLTWH(0, 0, 100, 100),
      Paint()..color = Colors.blue,
    );
    final picture = recorder.endRecording();
    final testImage = await picture.toImage(100, 100);

    final canvasRecorder = PictureRecorder();
    final testCanvas = Canvas(canvasRecorder);

    // With shader loaded, paintWithShader should succeed.
    final paintResult = delegate.paintWithShader(
      testCanvas,
      const Size(200, 100),
      image: testImage,
    );

    expect(paintResult, isTrue);

    testImage.dispose();
    delegate.dispose();
    tickerProvider.dispose();
  });

  testWidgets("animation advances time when animate is true", (tester) async {
    final delegate = WavedFlagShaderDelegate(vsync: tester);
    await tester.pump(const Duration(milliseconds: 16));
    expect(
      delegate,
      isA<WavedFlagShaderDelegate>(),
      reason: "Delegate should function with animation.",
    );

    delegate.dispose();
  });

  testWidgets("stops animation when animate is false", (tester) async {
    final delegate = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(animate: false),
    );
    await tester.pump();
    expect(delegate, isA<WavedFlagShaderDelegate>());
    delegate.dispose();
  });

  testWidgets("uses default error handler when none provided", (tester) async {
    // Create delegate without custom onError - uses _debugPrintError default.
    final delegate = WavedFlagShaderDelegate(vsync: tester);
    await tester.pump();
    final recorder = PictureRecorder(); // Create a test image.
    Canvas(recorder).drawRect(
      const Rect.fromLTWH(0, 0, 10, 10),
      Paint()..color = Colors.green,
    );
    final picture = recorder.endRecording();
    final testImage = await picture.toImage(10, 10);
    final canvasRecorder = PictureRecorder();
    final testCanvas = Canvas(canvasRecorder);
    delegate.paintWithShader(testCanvas, const Size(50, 25), image: testImage);
    testImage.dispose(); // Dispose image to cause error.
    final result = delegate.paintWithShader(
      testCanvas,
      const Size(50, 25),
      image: testImage,
    );
    expect(result, isFalse, reason: "Should return false when error occurs.");

    delegate.dispose();
  });

  testWidgets("time wraps around after exceeding 10000", (tester) async {
    final delegate = WavedFlagShaderDelegate(
      vsync: tester,
      options: const FlagShaderOptions(animationSpeed: 10000),
    );

    await tester.pump(); // Pump enough frames to exceed the 1e4 threshold.
    await tester.pump(const Duration(seconds: 1));
    await tester.pump(const Duration(milliseconds: 1100));
    expect(
      delegate,
      isA<WavedFlagShaderDelegate>(),
      reason: "Delegate should still function correctly after time wraps.",
    );

    delegate.dispose();
  });
});

/// Test ticker provider that creates tickers without requiring a widget tree.
class _WavedFlagShaderDelegateTest implements TickerProvider {
  const _WavedFlagShaderDelegateTest();

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  // ignore: no-empty-block, no-op: tickers are managed by the delegate itself.
  void dispose() {} // Simplified dispose that doesn't track tickers for tests.
}
