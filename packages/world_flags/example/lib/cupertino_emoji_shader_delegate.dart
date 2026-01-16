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
/// final _delegate = CupertinoEmojiShaderDelegate();
///
/// // Use shader: parameter for externally-owned delegates!
/// FlagShaderSurface(
///   item,
///   shader: _delegate,  // NOT delegateBuilder!
/// )
/// ```
///
/// For single-use:
///
/// ```dart
/// FlagShaderSurface(
///   item,
///   delegateBuilder: (vsync, options, properties) =>
///       CupertinoEmojiShaderDelegate(),
/// )
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
