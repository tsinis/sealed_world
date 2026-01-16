import "dart:async" show unawaited;
import "dart:ui";

import "package:flutter/foundation.dart";

import "flag_shader_delegate.dart";

/// Base class for static (non-animated) flag shader delegates that handles
/// shader program loading, caching, and the standard paint pattern.
///
/// Extend this class to create custom static shader effects without dealing
/// with boilerplate code.
///
/// ## What This Class Provides
///
/// - **Shader loading & caching**: Programs are loaded once and shared across
///   all instances using the same asset path.
/// - **Warm-up support**: Call [warmUp] early in app startup for faster first
///   render.
/// - **Standard paint pattern**: Sets size uniforms and texture sampler.
/// - **Safe disposal**: Tracks disposed state to prevent use-after-dispose.
/// - **Error handling**: Optional callback for paint failures.
///
/// ## What You Provide
///
/// - **Asset path**: Path to your `.frag` shader file.
/// - **Custom uniforms** (optional): Override [configureShader] to set
///   additional uniforms beyond size and texture.
///
/// ## Example
///
/// A minimal static shader delegate:
///
/// ```dart
/// class MyStaticShaderDelegate extends StaticFlagShaderDelegate {
///   MyStaticShaderDelegate() : super(assetPath: 'shaders/my_shader.frag');
/// }
/// ```
///
/// With custom uniforms:
///
/// ```dart
/// class MyCustomShaderDelegate extends StaticFlagShaderDelegate {
///   MyCustomShaderDelegate({this.intensity = 1.0})
///       : super(assetPath: 'shaders/custom.frag');
///
///   final double intensity;
///
///   @override
///   void configureShader(FragmentShader shader, Size size, Image image) {
///     super.configureShader(shader, size, image);
///     shader.setFloat(2, intensity); // Custom uniform at index 2.
///   }
/// }
/// ```
///
/// ## Shader Uniform Convention
///
/// By convention, flag shaders use these uniform indices:
/// - `[0]` uSize.x (width in logical pixels).
/// - `[1]` uSize.y (height in logical pixels).
/// - `[sampler 0]` uTexture (the flag image).
/// - `[2+]` Custom uniforms defined by your shader.
///
/// See also:
/// - `AnimatedFlagShaderDelegate` for animated shader effects.
/// - [FlagShaderDelegate] for the interface contract.
abstract class StaticFlagShaderDelegate extends ChangeNotifier
    implements FlagShaderDelegate {
  /// Creates a static flag shader delegate.
  ///
  /// The [assetPath] must point to a valid fragment shader asset. For shaders
  /// bundled with your package, use the full path:
  /// `'shaders/my_shader.frag'`
  ///
  /// For shaders in the app's asset bundle, use a relative path:
  /// `'shaders/my_shader.frag'`.
  StaticFlagShaderDelegate({
    required this.assetPath,
    this.contentScale = 1,
    this.shouldClipContent = false,
    this.onError,
  })
  // ignore: avoid-non-empty-constructor-bodies, for async initialization.
  {
    unawaited(_initShader());
  }

  /// Path to the fragment shader asset.
  final String assetPath;

  @override
  final double contentScale;

  @override
  final bool shouldClipContent;

  /// Optional callback for shader paint failures.
  ///
  /// When provided, errors during [paintWithShader] are passed to this callback
  /// instead of being silently swallowed. Useful for debugging and logging.
  ///
  /// If `null`, errors are silently handled and [paintWithShader] returns
  /// `false`, causing the fallback painter to be used.
  final void Function(Object error, StackTrace stack)? onError;

  /// Shader program cache, shared across all instances by asset path.
  static final _programCache = <String, FragmentProgram>{};
  static final _loadingFutures = <String, Future<FragmentProgram>>{};
  final _paint = Paint();

  FragmentShader? _shader;
  bool _disposed = false;

  /// Pre-warms the shader program for faster first render.
  ///
  /// Call this early in app startup to avoid shader compilation jank on first
  /// use:
  ///
  /// ```dart
  /// void main() async {
  ///   WidgetsFlutterBinding.ensureInitialized();
  ///   await StaticFlagShaderDelegate.warmUp('shaders/my_shader.frag');
  ///   runApp(MyApp());
  /// }
  /// ```
  ///
  /// Programs are cached globally, so warming up once benefits all instances.
  static Future<void> warmUp(String assetPath) async {
    if (_programCache.containsKey(assetPath)) return;
    // ignore: avoid-collection-mutating-methods, intentional cache.
    _loadingFutures[assetPath] ??= FragmentProgram.fromAsset(assetPath);
    // ignore: avoid-collection-mutating-methods, intentional cache.
    _programCache[assetPath] = await _loadingFutures[assetPath]!;
  }

  Future<void> _initShader() async {
    await warmUp(assetPath);
    if (_disposed) return;
    _shader?.dispose();
    _shader = _programCache[assetPath]?.fragmentShader();
    notifyListeners();
  }

  /// Configures shader uniforms before painting.
  ///
  /// Called each frame before the shader is used to paint. The base
  /// implementation sets the standard uniforms:
  /// - `[0]` uSize.x (width).
  /// - `[1]` uSize.y (height).
  /// - `[sampler 0]` uTexture (flag image).
  ///
  /// Override to add additional uniforms. Always call `super` first:
  ///
  /// ```dart
  /// @override
  /// void configureShader(FragmentShader shader, Size size, Image image) {
  ///   super.configureShader(shader, size, image);
  ///   shader.setFloat(2, myCustomValue);
  /// }
  /// ```
  @protected
  void configureShader(FragmentShader shader, Size size, Image image) {
    shader
      ..setFloat(0, size.width)
      ..setFloat(1, size.height)
      ..setImageSampler(0, image);
  }

  @override
  bool paintWithShader(Canvas destination, Size size, {required Image image}) {
    final shader = _shader;
    if (shader == null || size.isEmpty || _disposed) return false;

    try {
      configureShader(shader, size, image);
      _paint.shader = shader;
      destination.drawRect(Offset.zero & size, _paint);
      _paint.shader = null;

      return true;
    } on Object catch (error, stack) {
      onError?.call(error, stack);

      return false;
    }
  }

  @override
  void notifyListeners() {
    if (!_disposed) super.notifyListeners();
  }

  @override
  void dispose() {
    if (_disposed) return;
    _disposed = true;
    _shader?.dispose();
    _shader = null;
    _paint.shader = null;
    super.dispose();
  }
}
