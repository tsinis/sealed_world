import "dart:io" show Platform;
import "dart:math" as math;
import "dart:ui";

import "package:flutter/foundation.dart";

import "../painters/basic/shader_stripes_painter.dart"
    show ShaderStripesPainter;
import "animated_flag_shader_delegate.dart";
import "flag_shader_options.dart";
import "static_flag_shader_delegate.dart";

/// A reusable delegate that applies the waved-flag shader to cached flag
/// imagery.
///
/// This delegate provides a realistic cloth-waving effect with configurable
/// wave amplitude, frequency, shading, and animation speed.
///
/// ## Image Ownership
///
/// The delegate does NOT own images passed to [paintWithShader]. Images are
/// owned by the calling painter (typically [ShaderStripesPainter]) and must
/// not be disposed by this delegate.
///
/// ## Example
///
/// Basic usage with default options:
///
/// ```dart
/// FlagShaderSurface(CountryUsa())
/// ```
///
/// With custom wave settings:
///
/// ```dart
/// FlagShaderSurface(
///   CountryFra(),
///   options: FlagShaderOptions(
///     waveAmplitude: 0.05,
///     animationSpeed: 0.8,
///   ),
/// )
/// ```
///
/// See also:
/// - [FlagShaderOptions] for all configurable parameters.
/// - [AnimatedFlagShaderDelegate] for creating custom animated shaders.
class WavedFlagShaderDelegate extends AnimatedFlagShaderDelegate {
  /// Creates a new instance of [WavedFlagShaderDelegate].
  WavedFlagShaderDelegate({
    required super.vsync,
    this.options = const FlagShaderOptions(),
    void Function(Object error, StackTrace stackTrace)? onError,
  }) : super(
         assetPath: _shaderPath,
         contentScale: options.clipContent ? 1 : options.overflowScale,
         shouldClipContent: options.clipContent,
         animationSpeed: options.animationSpeed,
         onError: onError ?? _debugPrintError,
       );

  /// Visual preferences of shader output.
  final FlagShaderOptions options;

  static void _debugPrintError(Object error, StackTrace stackTrace) =>
      debugPrint("WavedFlagShaderDelegate paint failed: $error\n$stackTrace");

  static final _shaderPath =
      !kIsWeb && Platform.environment.containsKey("FLUTTER_TEST")
      ? "shaders/waved_flag.frag"
      : "packages/world_flags/shaders/waved_flag.frag";

  /// Ensures the shader program is loaded before instantiating delegates.
  ///
  /// [assetKey] - represents path to the fragment program from the asset,
  /// default to package's `packages/world_flags/shaders/waved_flag.frag`.
  static Future<void> warmUp([String? assetKey]) =>
      StaticFlagShaderDelegate.warmUp(assetKey ?? _shaderPath);

  Offset get _effectiveWaveDirection => options.waveDirection;

  @override
  bool get animate => options.animate;

  @override
  void configureShader(FragmentShader shader, Size size, Image image) {
    super.configureShader(shader, size, image);

    // Time uniform (indices 2-3).
    final timeValue = options.animate ? time : options.frozenPhase;

    // Wave parameters (indices 4-8).
    // Edge pinning (indices 9-12).
    // Shading (indices 13-19).
    // Seed/wave direction (indices 20-22).
    // Turbulence (index 23).
    // Fabric visibility (index 24).
    final waveDir = _normalizeWaveDirection(_effectiveWaveDirection);
    shader
      ..setFloat(2, timeValue)
      ..setFloat(3, options.animationSpeed)
      ..setFloat(4, options.waveAmplitude)
      ..setFloat(5, options.waveFrequency)
      ..setFloat(6, options.wavePhaseShift)
      ..setFloat(7, options.secondaryAmplitude)
      ..setFloat(8, options.secondaryFrequency)
      ..setFloat(9, options.leftEdgePinned ? 1 : 0) // Edge pinning (9-12).
      ..setFloat(10, options.rightEdgePinned ? 1.0 : 0.0)
      ..setFloat(11, options.pinSoftness)
      ..setFloat(12, options.poleMargin)
      ..setFloat(13, options.shadingEnabled ? 1 : 0) // Shading (13-19).
      ..setFloat(14, options.foldStrength)
      ..setFloat(15, options.highlightStrength)
      ..setFloat(16, options.shadowStrength)
      ..setFloat(17, options.sheenStrength)
      ..setFloat(18, options.sheenFrequency)
      ..setFloat(19, options.perspective)
      ..setFloat(20, options.seed) // Seed/wave direction (indices 20-22).
      ..setFloat(21, waveDir.dx)
      ..setFloat(22, waveDir.dy)
      ..setFloat(23, options.turbulence) // Turbulence, (index 23).
      ..setFloat(24, options.fabricVisibility.clamp(0, 1));
  }

  static Offset _normalizeWaveDirection(Offset dir) {
    final x = dir.dx;
    final y = dir.dy;
    final len = math.sqrt(x * x + y * y);

    return len > 0.001 ? Offset(x / len, y / len) : const Offset(1, 0);
  }
}
