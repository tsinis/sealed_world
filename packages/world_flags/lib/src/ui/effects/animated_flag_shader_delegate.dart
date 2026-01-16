import "dart:async" show unawaited;

import "package:flutter/foundation.dart";
import "package:flutter/scheduler.dart";

import "static_flag_shader_delegate.dart";

/// Base class for animated flag shader delegates that extends
/// [StaticFlagShaderDelegate] with animation support via [Ticker].
///
/// The ticker automatically calls [notifyListeners] each frame when active,
/// triggering repaints of the shader effect.
///
/// ## What This Class Provides (in addition to [StaticFlagShaderDelegate])
///
/// - **Ticker management**: Creates, starts, stops, and disposes the ticker.
/// - **Time tracking**: Maintains [time] in seconds for animation calculations.
/// - **Animation control**: [startAnimation] and [stopAnimation] methods.
/// - **Speed control**: [animationSpeed] multiplier for the animation.
///
/// ## What You Provide
///
/// - **Asset path**: Path to your `.frag` shader file.
/// - **Custom uniforms**: Override [configureShader] to set uniforms including
///   the [time] value.
///
/// ## Example
///
/// A simple animated shader delegate:
///
/// ```dart
/// class MyAnimatedShaderDelegate extends AnimatedFlagShaderDelegate {
///   MyAnimatedShaderDelegate({required super.vsync})
///       : super(assetPath: 'shaders/my_animated_shader.frag');
///
///   @override
///   void configureShader(FragmentShader shader, Size size, Image image) {
///     super.configureShader(shader, size, image);
///     shader.setFloat(2, time); // Pass time to shader.
///   }
/// }
/// ```
///
/// With animation control:
///
/// ```dart
/// class PausableShaderDelegate extends AnimatedFlagShaderDelegate {
///   PausableShaderDelegate({
///     required super.vsync,
///     this.isPaused = false,
///   }) : super(assetPath: 'shaders/pausable.frag');
///
///   final bool isPaused;
///
///   @override
///   bool get animate => !isPaused;
/// }
/// ```
///
/// See also:
/// - [StaticFlagShaderDelegate] for non-animated shader effects.
/// - `FlagShaderDelegate` for the interface contract.
abstract class AnimatedFlagShaderDelegate extends StaticFlagShaderDelegate {
  /// Creates an animated flag shader delegate.
  ///
  /// The [vsync] parameter is required to create the animation ticker. Obtain
  /// it from a `State` that uses `TickerProviderStateMixin` or
  /// `SingleTickerProviderStateMixin`.
  ///
  /// The [animationSpeed] multiplier affects how fast [time] increments each
  /// frame. Default is `1.0`.
  AnimatedFlagShaderDelegate({
    required TickerProvider vsync,
    required super.assetPath,
    super.contentScale,
    super.shouldClipContent,
    super.onError,
    this.animationSpeed = 1,
  })
  // ignore: avoid-non-empty-constructor-bodies, for ticker initialization.
  {
    _ticker = vsync.createTicker(_handleTick);
    _updateTicker();
  }

  /// Speed multiplier for the animation.
  ///
  /// Values greater than `1.0` speed up the animation, values less than `1.0`
  /// slow it down. Default is `1.0`.
  final double animationSpeed;

  /// Current animation time in seconds.
  ///
  /// Use this value in [configureShader] to pass time to your shader. The value
  /// increments each frame by `deltaSeconds * animationSpeed`.
  ///
  /// Automatically wraps around at `10000` to prevent floating-point precision
  /// issues in long-running animations.
  @protected
  double time = 0;

  /// Whether the animation is currently active.
  ///
  /// Override this getter to control animation based on external state:
  ///
  /// ```dart
  /// @override
  /// bool get animate => options.animate && isVisible;
  /// ```
  ///
  /// When this returns `false`, the ticker is stopped and [time] stops
  /// incrementing. When it returns `true`, the ticker starts automatically.
  bool get animate => true;

  // ignore: avoid-late-keyword, initialized in constructor.
  late final Ticker _ticker;
  Duration _lastTick = Duration.zero;

  /// Called each tick with the delta time in seconds.
  ///
  /// Override to customize time handling. The default implementation:
  /// 1. Increments [time] by `deltaSeconds * animationSpeed`.
  /// 2. Wraps [time] at `10000` to prevent precision issues.
  ///
  /// Example with custom time logic:
  ///
  /// ```dart
  /// @override
  /// void onTick(double deltaSeconds) {
  ///   time += deltaSeconds * animationSpeed * direction;
  ///   if (time > maxTime) time = 0; // Loop animation.
  /// }
  /// ```
  @protected
  void onTick(double deltaSeconds) {
    time += deltaSeconds * animationSpeed;
    if (time > 1e4) time -= 1e4; // Prevent overflow.
  }

  void _updateTicker() {
    if (!animate) {
      _ticker.stop();
      _lastTick = Duration.zero;

      return;
    }

    if (!_ticker.isActive) {
      _lastTick = Duration.zero;
      unawaited(_ticker.start());
    }
  }

  Duration? _handleTick(Duration timestamp) {
    if (_lastTick == Duration.zero) return _lastTick = timestamp;

    final delta = timestamp - _lastTick;
    _lastTick = timestamp;
    final deltaSeconds = delta.inMicroseconds / 1e6;
    if (deltaSeconds <= 0) return null;

    onTick(deltaSeconds);
    notifyListeners();

    return null;
  }

  /// Starts the animation ticker.
  ///
  /// Call this to resume animation after [stopAnimation] was called. Has no
  /// effect if the ticker is already active.
  void startAnimation() {
    if (_ticker.isActive) return;
    _lastTick = Duration.zero;
    unawaited(_ticker.start());
  }

  /// Stops the animation ticker.
  ///
  /// Call this to pause animation. The [time] value is preserved and animation
  /// resumes from the same point when [startAnimation] is called.
  void stopAnimation() {
    _ticker.stop();
    _lastTick = Duration.zero;
  }

  @override
  void dispose() {
    _ticker.dispose();
    super.dispose();
  }
}
