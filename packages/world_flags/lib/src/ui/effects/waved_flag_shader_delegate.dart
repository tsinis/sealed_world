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
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final surface = FlagShaderSurface(const CountryUsa());
///   assert(surface.item == const CountryUsa());
/// }
/// ```
///
/// With custom wave settings:
///
/// ```dart
/// import 'package:world_flags/world_flags.dart';
///
/// void main() {
///   final surface = FlagShaderSurface(
///     const CountryFra(),
///     options: const FlagShaderOptions(
///       waveAmplitude: 0.05,
///       animationSpeed: 0.8,
///     ),
///   );
///   assert(surface.options.waveAmplitude == 0.05);
/// }
/// ```
///
/// See also:
/// - [FlagShaderOptions] for all configurable parameters.
/// - [AnimatedFlagShaderDelegate] for creating custom animated shaders.
class WavedFlagShaderDelegate extends AnimatedFlagShaderDelegate {
  /// Creates a new instance of [WavedFlagShaderDelegate].
  new({
    required super.vsync,
    this.options = const FlagShaderOptions(),
    void Function(Object error, StackTrace stackTrace)? onError,
  }) : super(
         assetPath: _shaderPath,
         contentScale: options.clipContent ? 1 : options.overflowScale,
         shouldClipContent: options.clipContent,
         animationSpeed: options.animationSpeed,
         onError: onError ?? _printOnce(<String>{}),
       );

  /// Visual preferences of shader output.
  final FlagShaderOptions options;

  // Prints every distinct error of a delegate once, not on every frame.
  // ignore: prefer-correct-mutated, it's the set of errors of a delegate.
  static _ErrorCallback _printOnce(Set<String> printed) => (error, stackTrace) {
    // ignore: avoid-collection-mutating-methods, the errors of a delegate.
    if (!printed.add("$error")) return;
    debugPrint("WavedFlagShaderDelegate failed: $error\n$stackTrace");
  };

  // Falls back to "shaders/waved_flag.frag" inside this package (its tests).
  static const _shaderPath = "packages/world_flags/shaders/waved_flag.frag";

  /// Ensures the shader program is loaded before instantiating delegates, so
  /// the very first frame of the flag is already painted with the shader.
  ///
  /// [assetKey] - represents path to the fragment program from the asset,
  /// default to package's `packages/world_flags/shaders/waved_flag.frag`.
  /// The delegate itself always uses the package's shader, so a custom key is
  /// only useful to pre-load other shaders (i.e. of your own delegates).
  static Future<void> warmUp([String? assetKey]) =>
      StaticFlagShaderDelegate.warmUp(assetKey ?? _shaderPath);

  // Float uniforms of the shader, in the order of their declaration (the size
  // takes 0-1, set by the super class). Keep in sync with `waved_flag.frag`.
  static const _time = 2;
  static const _waveAmplitude = 3;
  static const _waveFrequency = 4;
  static const _wavePhaseShift = 5;
  static const _secondaryAmplitude = 6;
  static const _secondaryFrequency = 7;
  static const _leftEdgePinned = 8;
  static const _rightEdgePinned = 9;
  static const _pinSoftness = 10;
  static const _poleMargin = 11;
  static const _shadingEnabled = 12;
  static const _foldStrength = 13;
  static const _highlightStrength = 14;
  static const _shadowStrength = 15;
  static const _sheenStrength = 16;
  static const _sheenFrequency = 17;
  static const _perspective = 18;
  static const _seed = 19;
  static const _waveDirection = 20; // A vector, it takes 20-21.
  static const _turbulence = 22;
  static const _fabricVisibility = 23;

  @override
  bool get animate => options.animate;

  @override
  void configureShader(FragmentShader shader, Size size, Image image) {
    super.configureShader(shader, size, image);
    final waveDirection = options.waveDirection; // Normalized by the shader.

    shader
      // The ticker already scales the time by the animation speed, so the
      // speed must not be applied again (nor affect the frozen pose).
      ..setFloat(_time, options.animate ? time : options.frozenPhase)
      ..setFloat(_waveAmplitude, options.waveAmplitude)
      ..setFloat(_waveFrequency, options.waveFrequency)
      ..setFloat(_wavePhaseShift, options.wavePhaseShift)
      ..setFloat(_secondaryAmplitude, options.secondaryAmplitude)
      ..setFloat(_secondaryFrequency, options.secondaryFrequency)
      ..setFloat(_leftEdgePinned, options.leftEdgePinned ? 1 : 0)
      ..setFloat(_rightEdgePinned, options.rightEdgePinned ? 1 : 0)
      ..setFloat(_pinSoftness, options.pinSoftness)
      ..setFloat(_poleMargin, options.poleMargin)
      ..setFloat(_shadingEnabled, options.shadingEnabled ? 1 : 0)
      ..setFloat(_foldStrength, options.foldStrength)
      ..setFloat(_highlightStrength, options.highlightStrength)
      ..setFloat(_shadowStrength, options.shadowStrength)
      ..setFloat(_sheenStrength, options.sheenStrength)
      ..setFloat(_sheenFrequency, options.sheenFrequency)
      ..setFloat(_perspective, options.perspective)
      ..setFloat(_seed, options.seed)
      ..setFloat(_waveDirection, waveDirection.dx)
      ..setFloat(_waveDirection + 1, waveDirection.dy)
      ..setFloat(_turbulence, options.turbulence)
      ..setFloat(_fabricVisibility, options.fabricVisibility.clamp(0, 1));
  }
}

typedef _ErrorCallback = void Function(Object error, StackTrace stackTrace);
