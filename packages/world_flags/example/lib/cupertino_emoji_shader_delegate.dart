import "package:world_flags/world_flags.dart";

/// A static, Apple emoji-style flag shader delegate. For an animated
/// delegate, see [WavedFlagShaderDelegate].
///
/// This delegate renders flags like the iOS emoji flags: a gently waving
/// cloth (a cosine wave), brightest in the middle (a sine across the width),
/// with a soft darker outline and an inner shadow (bevel) along the bottom and
/// left edges. To compare it with the emoji of the
/// platform, run `flutter run -t lib/emoji_comparison_main.dart`.
///
/// ## Usage
///
/// Share one delegate across multiple widgets (recommended for lists):
///
/// ```dart
/// import "package:world_flags/world_flags.dart";
/// import "package:world_flags_example/cupertino_emoji_shader_delegate.dart";
///
/// void main() {
///   final delegate = CupertinoEmojiShaderDelegate();
///   final surface = FlagShaderSurface(const CountryUsa(), shader: delegate);
///   assert(surface.shader != null, "The shared delegate is used");
/// }
/// ```
///
/// Or let every surface create (and dispose) its own one:
///
/// ```dart
/// import "package:world_flags/world_flags.dart";
/// import "package:world_flags_example/cupertino_emoji_shader_delegate.dart";
///
/// void main() {
///   final surface = FlagShaderSurface(
///     const CountryUsa(),
///     delegateBuilder: (_, _, _) => CupertinoEmojiShaderDelegate(),
///   );
///   assert(surface.delegateBuilder != null, "A delegate per surface");
/// }
/// ```
///
/// ## How This Works
///
/// [StaticFlagShaderDelegate] loads and caches the shader program, guards
/// against a double dispose, and paints the flag with the shader. The
/// Cupertino emoji shader only uses the standard uniforms (`uSize` and
/// `uTexture`), so this delegate doesn't override `configureShader`.
class CupertinoEmojiShaderDelegate extends StaticFlagShaderDelegate {
  /// Creates a delegate painting with the Cupertino emoji flag shader.
  new() : super(assetPath: _assetPath);

  static const _assetPath = "shaders/cupertino_emoji_flag.frag";

  /// Pre-warms the shader program for a faster first render.
  static Future<void> warmUp() => StaticFlagShaderDelegate.warmUp(_assetPath);
}
