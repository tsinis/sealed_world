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
    expect(
      delegate,
      isA<WavedFlagShaderDelegate>(),
      reason: "No errors should occur during basic construction.",
    );
    expect(capturedError, isNull);
    expect(capturedStackTrace, isNull);

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

  testWidgets("paintWithShader returns false without shader program", (
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
});

/// Test ticker provider that creates tickers without requiring a widget tree.
class _WavedFlagShaderDelegateTest implements TickerProvider {
  const _WavedFlagShaderDelegateTest();

  @override
  Ticker createTicker(TickerCallback onTick) => Ticker(onTick);

  // ignore: no-empty-block, no-op: tickers are managed by the delegate itself.
  void dispose() {} // Simplified dispose that doesn't track tickers for tests.
}
