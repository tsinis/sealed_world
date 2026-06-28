import "package:world_flags/world_flags.dart";

/// A static, Apple emoji-style flag shader delegate. For example of the
/// animated variant, see [WavedFlagShaderDelegate].
///
/// This delegate renders flags with an Apple-inspired curved shape,
/// asymmetric gloss gradient, and soft inner bevel — matching the
/// aesthetic of iOS country flag emojis.
///
/// ## Usage
///
/// For shared delegate across multiple widgets (recommended for ListView):
///
/// ```dart
/// import "package:sealed_countries/sealed_countries.dart";
/// import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
/// import "package:world_flags_example/cupertino_emoji_shader_delegate.dart";
///
/// void main() {
///   final delegate = CupertinoEmojiShaderDelegate();
///   final surface = FlagShaderSurface(
///     const CountryUsa(),
///     shader: delegate,
///   );
///   assert(surface.shader != null);
/// }
/// ```
///
/// For single-use:
///
/// ```dart
/// import "package:sealed_countries/sealed_countries.dart";
/// import "package:world_flags/src/ui/effects/flag_shader_surface.dart";
/// import "package:world_flags_example/cupertino_emoji_shader_delegate.dart";
///
/// void main() {
///   final surface = FlagShaderSurface(
///     const CountryUsa(),
///     delegateBuilder: (vsync, options, properties) =>
///         CupertinoEmojiShaderDelegate(),
///   );
///   assert(surface.delegateBuilder != null);
/// }
/// ```
///
/// ## How This Works
///
/// This class extends [StaticFlagShaderDelegate], which handles all the
/// boilerplate:
/// - Shader program loading and caching.
/// - Safe disposal and double-dispose prevention.
/// - The standard `paintWithShader` implementation.
///
/// Since the Cupertino emoji shader only uses the standard uniforms (`uSize`
/// and `uTexture`), no [configureShader] override is needed
/// - the base class handles everything.
class CupertinoEmojiShaderDelegate extends StaticFlagShaderDelegate {
  CupertinoEmojiShaderDelegate() : super(assetPath: _assetPath);
  static const _assetPath = "shaders/cupertino_emoji_flag.frag";

  /// Pre-warms the shader program for faster first render on Skia backend.
  static Future<void> warmUp() => StaticFlagShaderDelegate.warmUp(_assetPath);
}
