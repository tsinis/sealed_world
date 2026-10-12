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
/// - **Error handling**: Optional callback for loading and paint failures.
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
///
/// void main() {
///   final delegate = MyStaticShaderDelegate();
///   assert(delegate.assetPath == 'shaders/my_shader.frag');
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
///
/// void main() {
///   final delegate = MyCustomShaderDelegate(intensity: 0.5);
///   assert(delegate.intensity == 0.5);
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
  /// in the app's asset bundle, use the path from the `pubspec.yaml`:
  /// `'shaders/my_shader.frag'`.
  ///
  /// For shaders bundled with your package, use the package asset key:
  /// `'packages/my_package/shaders/my_shader.frag'`. When it's not found (i.e.
  /// in the package's own tests, where it's the root package), the path
  /// without the `packages/my_package/` prefix is loaded instead.
  ///
  /// If the program was already loaded (see [warmUp]), the shader is ready
  /// synchronously, so the very first frame is already painted with it.
  new({
    required this.assetPath,
    this.contentScale = 1,
    this.shouldClipContent = false,
    this.onError,
  })
  // ignore: avoid-non-empty-constructor-bodies, for async initialization.
  {
    final program = _programCache[assetPath];
    if (program == null) {
      unawaited(_initShader());
    } else {
      _shader = program.fragmentShader();
    }
  }

  /// Path to the fragment shader asset.
  final String assetPath;

  @override
  final double contentScale;

  @override
  final bool shouldClipContent;

  /// Optional callback for shader loading and paint failures.
  ///
  /// When provided, errors while loading the shader program or during
  /// [paintWithShader] are passed to this callback. Useful for debugging and
  /// logging.
  ///
  /// If `null`, paint errors are silently handled, and loading errors are
  /// reported via [FlutterError.reportError]. In both cases
  /// [paintWithShader] returns `false`, causing the fallback painter to be
  /// used.
  final void Function(Object error, StackTrace stack)? onError;

  /// Shader program cache, shared across all instances by asset path.
  static final _programCache = <String, FragmentProgram>{};
  static final _loadingFutures = <String, Future<FragmentProgram>>{};
  static final _packagePrefix = RegExp("^packages/[^/]+/");
  final _paint = Paint();

  FragmentShader? _shader;
  bool _disposed = false;

  /// Pre-warms the shader program for faster first render.
  ///
  /// Call this early in app startup to avoid shader compilation stutter on
  /// first use:
  ///
  /// ```dart
  /// import 'package:flutter/widgets.dart';
  ///
  /// class MyApp extends StatelessWidget {
  ///   const MyApp({super.key});
  ///   @override
  ///   Widget build(BuildContext context) => const SizedBox.shrink();
  /// }
  ///
  /// void main() {
  ///   final dynamic warmUp = StaticFlagShaderDelegate.warmUp;
  ///   assert(warmUp != null);
  /// }
  /// ```
  ///
  /// Programs are cached globally, so warming up once benefits all instances.
  /// Failed loads are not cached, so the next call tries to load it again.
  static Future<void> warmUp(String assetPath) async {
    if (_programCache.containsKey(assetPath)) return;
    // ignore: avoid-collection-mutating-methods, intentional cache.
    final loading = _loadingFutures.putIfAbsent(
      assetPath,
      () => _load(assetPath),
    );
    try {
      // ignore: avoid-collection-mutating-methods, intentional cache.
      _programCache[assetPath] = await loading;
    } finally {
      // Other callers awaiting it remove it too, so leave a newer load intact.
      if (identical(_loadingFutures[assetPath], loading)) {
        // The removed future was awaited above, so it's safe to not await it.
        // ignore: avoid-collection-mutating-methods, intentional cache.
        unawaited(_loadingFutures.remove(assetPath));
      }
    }
  }

  static Future<FragmentProgram> _load(String assetPath) async {
    try {
      return await FragmentProgram.fromAsset(assetPath);
    } on Object catch (error, stackTrace) {
      if (!assetPath.startsWith(_packagePrefix)) rethrow;

      try {
        // Inside the package itself (i.e. in its own tests) it's not prefixed.
        return await FragmentProgram.fromAsset(
          assetPath.replaceFirst(_packagePrefix, ""),
        );
      } on Object {
        Error.throwWithStackTrace(error, stackTrace);
      }
    }
  }

  Future<void> _initShader() async {
    try {
      await warmUp(assetPath);
    } on Object catch (error, stackTrace) {
      if (!_disposed) _reportLoadingError(error, stackTrace);

      return;
    }
    if (_disposed) return;
    _shader = _programCache[assetPath]?.fragmentShader();
    notifyListeners();
  }

  void _reportLoadingError(Object error, StackTrace stackTrace) {
    final callback = onError;
    if (callback != null) {
      callback(error, stackTrace);

      return;
    }

    FlutterError.reportError(
      FlutterErrorDetails(
        exception: error,
        stack: stackTrace,
        library: "world_flags",
        context: ErrorDescription("while loading the shader $assetPath"),
      ),
    );
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
  /// class MyCustomDelegate extends StaticFlagShaderDelegate {
  ///   MyCustomDelegate() : super(assetPath: 'shaders/custom.frag');
  ///
  ///   @override
  ///   void configureShader(FragmentShader shader, Size size, Image image) {
  ///     super.configureShader(shader, size, image);
  ///     shader.setFloat(2, 1.0);
  ///   }
  /// }
  ///
  /// void main() {
  ///   final delegate = MyCustomDelegate();
  ///   assert(delegate.assetPath == 'shaders/custom.frag');
  /// }
  /// ```
  @protected
  void configureShader(FragmentShader shader, Size size, Image image) {
    shader
      ..setFloat(0, size.width)
      ..setFloat(1, size.height)
      // Distorted samples fall between pixels, so interpolate them smoothly.
      ..setImageSampler(0, image, filterQuality: FilterQuality.low);
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
