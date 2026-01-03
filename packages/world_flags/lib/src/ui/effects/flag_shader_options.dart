// ignore_for_file: prefer-class-destructuring

import "dart:ui" show Offset;

import "package:flutter/foundation.dart";

import "../../theme/flag_theme_data.dart";
import "../flags/basic_flag.dart";

/// Immutable configuration for waved-flag style shader delegates.
///
/// These options describe purely visual preferences (amplitude, turbulence,
/// highlights, etc.) and can be stored inside [FlagThemeData] or passed
/// directly to a [BasicFlag]. They do *not* manage shader lifecycles, tickers,
/// or GPU resources.
///
/// ### Usage
///
/// ```dart
/// const options = FlagShaderOptions(
///   enabled: true,
///   waveAmplitude: 0.04,
///   turbulence: 0.6,
/// );
///
/// return FlagShaderController(
///   flag: BasicFlag(
///     flagProperties,
///     shaderOptions: options,
///   ),
///   options: options,
/// );
/// ```
///
/// ### Recommendations
/// - Works best for flags rendered at widths >= 320 logical pixels; extremely
///   small icons cannot showcase the cloth motion and may look blurry.
/// - Shader effects are relatively GPU intensive; avoid animating multiple
///   full-size flags simultaneously on low-end devices.
/// - Maintain sufficient padding/"breathing space" above and below the flag when
///   increasing [waveAmplitude] to minimize clipping artefacts.
@immutable
class FlagShaderOptions {
  /// Creates a new set of shader options.
  const FlagShaderOptions({
    this.enabled = false,
    this.animate = true,
    this.animationSpeed = 1,
    this.frozenPhase = 0.25,
    this.waveAmplitude = 0.03,
    this.waveFrequency = 2,
    this.wavePhaseShift = 0,
    this.secondaryAmplitude = 0.02,
    this.secondaryFrequency = 1.8,
    this.leftEdgePinned = true,
    this.rightEdgePinned = false,
    this.pinSoftness = 0.15,
    this.poleMargin = 0.02,
    this.shadingEnabled = true,
    this.foldStrength = 0.4,
    this.highlightStrength = 0.3,
    this.shadowStrength = 0.3,
    this.sheenStrength = 0.1,
    this.sheenFrequency = 4,
    this.perspective = 0.12,
    this.seed = 1,
    this.turbulence = 0.8,
    this.waveDirection = const Offset(0.8, 0.3),
    this.fabricVisibility = 0,
    this.clipContent = false,
    this.overflowScale = 0.92,
  });

  /// Whether the shader effect is enabled.
  final bool enabled;

  /// Whether animation should advance automatically using a ticker.
  final bool animate;

  /// Multiplier applied to time advancement for slower/faster motion.
  final double animationSpeed;

  /// Phase used when [animate] is `false`; determines frozen pose.
  final double frozenPhase;

  /// Primary wave amplitude controlling displacement magnitude.
  final double waveAmplitude;

  /// Primary wave frequency; higher values add more folds within the flag.
  final double waveFrequency;

  /// Phase offset applied to the primary wave function.
  final double wavePhaseShift;

  /// Secondary wave amplitude for layered, softer motion.
  final double secondaryAmplitude;

  /// Secondary wave frequency for the supplemental wave layer.
  final double secondaryFrequency;

  /// Pins the hoist (left) edge to the flag pole, reducing displacement there.
  final bool leftEdgePinned;

  /// Pins the fly (right) edge to dampen movement.
  final bool rightEdgePinned;

  /// Distance (0-1) over which the pinning mask eases in.
  final double pinSoftness;

  /// Margin reserved near pinned edges where displacement should be minimal.
  final double poleMargin;

  /// Enables lighting calculations (folds, shading, highlights).
  final bool shadingEnabled;

  /// Strength of the fold/jitter applied along the vertical axis.
  final double foldStrength;

  /// Brightness boost applied on lit areas.
  final double highlightStrength;

  /// Darkness applied to shadowed folds.
  final double shadowStrength;

  /// Intensity of the silky sheen running across the fabric.
  final double sheenStrength;

  /// Frequency of the sheen shimmer.
  final double sheenFrequency;

  /// Fake perspective intensity (use small values, e.g. 0.1).
  final double perspective;

  /// Seed that randomizes the noise/turbulence field.
  final double seed;

  /// Global turbulence factor that adds organic irregularities.
  final double turbulence;

  /// Default wave direction unit vector.
  final Offset waveDirection;

  /// Visibility of the procedural cloth texture (0 = off, 1 = fully visible).
  final double fabricVisibility;

  /// Whether to clip shader output to flag bounds.
  final bool clipContent;

  /// Scale applied to the source flag before shader processing when
  /// [clipContent] is false, leaving headroom for overflow.
  final double overflowScale;

  @override
  String toString() =>
      "FlagShaderOptions(enabled: $enabled, animate: $animate, "
      "animationSpeed: $animationSpeed, frozenPhase: $frozenPhase, "
      "waveAmplitude: $waveAmplitude, waveFrequency: $waveFrequency, "
      "wavePhaseShift: $wavePhaseShift, "
      "secondaryAmplitude: $secondaryAmplitude, "
      "secondaryFrequency: $secondaryFrequency, "
      "leftEdgePinned: $leftEdgePinned, rightEdgePinned: $rightEdgePinned, "
      "pinSoftness: $pinSoftness, poleMargin: $poleMargin, "
      "shadingEnabled: $shadingEnabled, foldStrength: $foldStrength, "
      "highlightStrength: $highlightStrength, shadowStrength: $shadowStrength, "
      "sheenStrength: $sheenStrength, sheenFrequency: $sheenFrequency, "
      "perspective: $perspective, seed: $seed, turbulence: $turbulence, "
      "waveDirection: $waveDirection, fabricVisibility: $fabricVisibility, "
      "clipContent: $clipContent, overflowScale: $overflowScale)";

  /// Returns a copy with selectively replaced fields.
  FlagShaderOptions copyWith({
    bool? enabled,
    bool? animate,
    double? animationSpeed,
    double? frozenPhase,
    double? waveAmplitude,
    double? waveFrequency,
    double? wavePhaseShift,
    double? secondaryAmplitude,
    double? secondaryFrequency,
    bool? leftEdgePinned,
    bool? rightEdgePinned,
    double? pinSoftness,
    double? poleMargin,
    bool? shadingEnabled,
    double? foldStrength,
    double? highlightStrength,
    double? shadowStrength,
    double? sheenStrength,
    double? sheenFrequency,
    double? perspective,
    double? seed,
    double? turbulence,
    Offset? waveDirection,
    double? fabricVisibility,
    bool? clipContent,
    double? overflowScale,
  }) => FlagShaderOptions(
    enabled: enabled ?? this.enabled,
    animate: animate ?? this.animate,
    animationSpeed: animationSpeed ?? this.animationSpeed,
    frozenPhase: frozenPhase ?? this.frozenPhase,
    waveAmplitude: waveAmplitude ?? this.waveAmplitude,
    waveFrequency: waveFrequency ?? this.waveFrequency,
    wavePhaseShift: wavePhaseShift ?? this.wavePhaseShift,
    secondaryAmplitude: secondaryAmplitude ?? this.secondaryAmplitude,
    secondaryFrequency: secondaryFrequency ?? this.secondaryFrequency,
    leftEdgePinned: leftEdgePinned ?? this.leftEdgePinned,
    rightEdgePinned: rightEdgePinned ?? this.rightEdgePinned,
    pinSoftness: pinSoftness ?? this.pinSoftness,
    poleMargin: poleMargin ?? this.poleMargin,
    shadingEnabled: shadingEnabled ?? this.shadingEnabled,
    foldStrength: foldStrength ?? this.foldStrength,
    highlightStrength: highlightStrength ?? this.highlightStrength,
    shadowStrength: shadowStrength ?? this.shadowStrength,
    sheenStrength: sheenStrength ?? this.sheenStrength,
    sheenFrequency: sheenFrequency ?? this.sheenFrequency,
    perspective: perspective ?? this.perspective,
    seed: seed ?? this.seed,
    turbulence: turbulence ?? this.turbulence,
    waveDirection: waveDirection ?? this.waveDirection,
    fabricVisibility: fabricVisibility ?? this.fabricVisibility,
    clipContent: clipContent ?? this.clipContent,
    overflowScale: overflowScale ?? this.overflowScale,
  );

  @override
  int get hashCode => Object.hashAll([
    enabled,
    animate,
    animationSpeed,
    frozenPhase,
    waveAmplitude,
    waveFrequency,
    wavePhaseShift,
    secondaryAmplitude,
    secondaryFrequency,
    leftEdgePinned,
    rightEdgePinned,
    pinSoftness,
    poleMargin,
    shadingEnabled,
    foldStrength,
    highlightStrength,
    shadowStrength,
    sheenStrength,
    sheenFrequency,
    perspective,
    seed,
    turbulence,
    waveDirection.dx,
    waveDirection.dy,
    fabricVisibility,
    clipContent,
    overflowScale,
  ]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    // ignore: avoid-complex-conditions, it's regular == override in big class.
    return other is FlagShaderOptions &&
        other.enabled == enabled &&
        other.animate == animate &&
        other.animationSpeed == animationSpeed &&
        other.frozenPhase == frozenPhase &&
        other.waveAmplitude == waveAmplitude &&
        other.waveFrequency == waveFrequency &&
        other.wavePhaseShift == wavePhaseShift &&
        other.secondaryAmplitude == secondaryAmplitude &&
        other.secondaryFrequency == secondaryFrequency &&
        other.leftEdgePinned == leftEdgePinned &&
        other.rightEdgePinned == rightEdgePinned &&
        other.pinSoftness == pinSoftness &&
        other.poleMargin == poleMargin &&
        other.shadingEnabled == shadingEnabled &&
        other.foldStrength == foldStrength &&
        other.highlightStrength == highlightStrength &&
        other.shadowStrength == shadowStrength &&
        other.sheenStrength == sheenStrength &&
        other.sheenFrequency == sheenFrequency &&
        other.perspective == perspective &&
        other.seed == seed &&
        other.turbulence == turbulence &&
        other.waveDirection == waveDirection &&
        other.fabricVisibility == fabricVisibility &&
        other.clipContent == clipContent &&
        other.overflowScale == overflowScale;
  }
}
