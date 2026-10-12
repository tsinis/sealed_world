import "dart:ui";

import "package:flutter_test/flutter_test.dart";
import "package:world_flags/src/ui/effects/static_flag_shader_delegate.dart";

void main() => group("$StaticFlagShaderDelegate", () {
  const missing = "shaders/missing.frag";
  const shader = "shaders/waved_flag.frag";

  testWidgets("reports loading errors to onError", (tester) async {
    final reported = <Object>[];
    final delegate = _StaticFlagShaderDelegateTest(missing, reported: reported);
    addTearDown(delegate.dispose);
    await tester.runAsync(() => Future<void>.delayed(Duration.zero));

    expect(reported, hasLength(1));
  });

  testWidgets("reports loading errors to Flutter", (tester) async {
    final delegate = _StaticFlagShaderDelegateTest(missing);
    addTearDown(delegate.dispose);
    await tester.runAsync(() => Future<void>.delayed(Duration.zero));

    expect(tester.takeException(), isNotNull);
  });

  testWidgets("retries loading after a failure", (tester) async {
    final first = await tester.runAsync(() => _warmUpError(missing));
    final second = await tester.runAsync(() => _warmUpError(missing));

    expect(first, isNotNull);
    expect(second, isNotNull);
    expect(identical(first, second), isFalse);
  });

  testWidgets("loads package keys inside the package itself", (tester) async {
    final error = await tester.runAsync(
      () => _warmUpError("packages/world_flags/$shader"),
    );

    expect(error, isNull);
  });

  testWidgets("uses an already loaded program synchronously", (tester) async {
    await tester.runAsync(() => StaticFlagShaderDelegate.warmUp(shader));
    final delegate = _StaticFlagShaderDelegateTest(shader);
    addTearDown(delegate.dispose);
    final textureRecorder = PictureRecorder();
    Canvas(textureRecorder).drawPaint(Paint());
    final picture = textureRecorder.endRecording();
    final texture = picture.toImageSync(1, 1);
    picture.dispose();
    addTearDown(texture.dispose);

    final recorder = PictureRecorder();
    final painted = delegate.paintWithShader(
      Canvas(recorder),
      const Size(1, 1),
      image: texture,
    );
    recorder.endRecording().dispose();

    expect(painted, isTrue);
  });
});

/// A delegate of any shader, collecting its errors in the `reported` list.
final class _StaticFlagShaderDelegateTest extends StaticFlagShaderDelegate {
  new(String assetPath, {List<Object>? reported})
    : super(
        assetPath: assetPath,
        // ignore: avoid-collection-mutating-methods, it collects the errors.
        onError: reported == null ? null : (error, _) => reported.add(error),
      );
}

/// The error of warming up the shader at the [assetPath], if any.
Future<Object?> _warmUpError(String assetPath) async {
  try {
    await StaticFlagShaderDelegate.warmUp(assetPath);
  } on Object catch (error) {
    return error;
  }

  return null;
}
