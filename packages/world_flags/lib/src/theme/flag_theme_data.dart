// ignore_for_file: prefer-class-destructuring, prefer-private-named-parameters

import "dart:ui" as ui show lerpDouble;

import "package:flutter/widgets.dart";
import "package:material_ui/material_ui.dart" show ThemeExtension;

import "../helpers/extensions/decorated_flag_interface_extension.dart";
import "../interfaces/decorated_flag_interface.dart";

/// A class that defines the theme data for a flag, including its aspect ratio,
/// decoration, padding, and dimensions.
///
/// This class extends [ThemeExtension] to allow for easy theming and
/// customization of flags. It also implements [DecoratedFlagInterface] to
/// provide a consistent interface for decorated flags.
@immutable
@Deprecated(
  "Use FlagTheme instead. FlagThemeData is fully deprecated "
  "and will be removed in the next major version.",
)
class FlagThemeData extends ThemeExtension<FlagThemeData>
    implements DecoratedFlagInterface {
  /// Creates a new instance of [FlagThemeData].
  ///
  /// - [aspectRatio]: The aspect ratio of the flag, defaults to `null`.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration. Defaults to
  ///  [DecorationPosition.foreground].
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  /// - [child]: A widget to display in the foreground of the flag.
  @Deprecated(
    "Use FlagTheme instead. FlagThemeData is fully deprecated"
    " and will be removed in the next major version.",
  )
  const new({
    double? aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    Widget? child,
    Widget? flagChild,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       ),
       flagChild = flagChild ?? child,
       _aspectRatio = aspectRatio;

  /// Creates a fallback instance of [FlagThemeData] with all fields `null`.
  @Deprecated(
    "Use FlagTheme instead. FlagThemeData is fully deprecated "
    "and will be removed in the next major version.",
  )
  const new fallback()
    : decoration = null,
      decorationPosition = null,
      padding = null,
      height = null,
      width = null,
      flagChild = null,
      _aspectRatio = null;

  /// Creates a new instance of [FlagThemeData] with pre-defined default values
  /// for small flags with rounded corners.
  ///
  /// It has default values for [decoration] and [height].
  /// - [aspectRatio]: The aspect ratio of the flag, defaults to `null`.
  /// - [decoration]: The decoration to paint behind the flag, defaults to a
  /// border radius of 4.
  /// - [decorationPosition]: The position of the decoration. Defaults to
  ///  [DecorationPosition.foreground].
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag, defaults to 18.
  /// - [width]: The width of the flag.
  /// - [child]: A widget to display in the foreground of the flag.
  @Deprecated(
    "Use FlagTheme instead. FlagThemeData is fully deprecated "
    "and will be removed in the next major version.",
  )
  const new small({
    double? aspectRatio,
    this.decoration = const BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
    this.decorationPosition,
    this.padding,
    this.height = 18,
    this.width,
    Widget? child,
    Widget? flagChild,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       ),
       flagChild = flagChild ?? child,
       _aspectRatio = aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;

  /// The height of the flag.
  @override
  final double? height;

  /// The width of the flag.
  @override
  final double? width;

  @override
  final Widget? flagChild;

  @override
  Widget? get child => flagChild;

  /// The specified aspect ratio of the flag.
  final double? _aspectRatio;

  /// The aspect ratio of the flag, calculated based on the specified aspect
  /// ratio or the dimensions of the flag.
  @override
  double? get aspectRatio => specifiedAspectRatio ?? calculatedAspectRatio;

  /// The specified aspect ratio of the flag.
  double? get specifiedAspectRatio => _aspectRatio;

  /// Creates a copy of this [FlagThemeData] but with the given fields replaced
  /// with the new values.
  ///
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  /// - [child]: A widget to display in the foreground of the flag.
  @override
  FlagThemeData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
    Widget? child,
    Widget? flagChild,
  }) => FlagThemeData(
    aspectRatio: (aspectRatio?.isNegative ?? false)
        ? null
        : (aspectRatio ?? _aspectRatio),
    decoration: decoration ?? this.decoration,
    decorationPosition: decorationPosition ?? this.decorationPosition,
    padding: padding ?? this.padding,
    height: (height?.isNegative ?? false) ? null : (height ?? this.height),
    width: (width?.isNegative ?? false) ? null : (width ?? this.width),
    flagChild: flagChild ?? child ?? this.flagChild,
  );

  @override
  String toString() =>
      "FlagThemeData(aspectRatio: $_aspectRatio, "
      "${decoration == null ? '' : 'decoration: $decoration, '}"
      """${decorationPosition == null ? '' : 'decorationPosition: $decorationPosition, '}"""
      "${padding == null ? '' : 'padding: $padding, '}"
      "${height == null ? '' : 'height: $height, '}"
      "${width == null ? '' : 'width: $width, '}"
      "${child == null ? '' : 'child: $child,'})";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other.specifiedAspectRatio == specifiedAspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition &&
        other.padding == padding &&
        other.height == height &&
        other.width == width &&
        other.flagChild == flagChild;
  }

  @override
  int get hashCode => Object.hash(
    _aspectRatio,
    decoration,
    decorationPosition,
    padding,
    height,
    width,
    flagChild,
  );

  @Deprecated(
    "Use FlagTheme instead. FlagThemeData is fully deprecated"
    " and will be removed in the next major version.",
  )
  @override // coverage:ignore-line
  FlagThemeData lerp(covariant ThemeExtension<FlagThemeData>? other, double t) {
    if (other is! FlagThemeData) return this;

    return lerpStatic(this, other, t) ?? this;
  }

  /// Linearly interpolate between two [FlagThemeData] objects.
  ///
  /// Interpolates every property including dimensions, aspect ratio,
  /// decoration, and padding. Returns `null` if both [a] and [b] are `null`.
  static FlagThemeData? lerpStatic(
    FlagThemeData? a,
    FlagThemeData? b,
    // ignore: prefer-correct-identifier-length, during the transition.
    double t,
  ) {
    if (identical(a, b)) return a;
    if (a == null && b == null) return null;

    final rawAspectRatio = ui.lerpDouble(
      a?.specifiedAspectRatio,
      b?.specifiedAspectRatio,
      t,
    );
    final rawHeight = ui.lerpDouble(a?.height, b?.height, t);
    final rawWidth = ui.lerpDouble(a?.width, b?.width, t);

    return FlagThemeData(
      aspectRatio: rawAspectRatio != null && rawAspectRatio > 0
          ? rawAspectRatio
          : null,
      decoration: BoxDecoration.lerp(a?.decoration, b?.decoration, t),
      decorationPosition: t < 0.5
          ? a?.decorationPosition
          : b?.decorationPosition,
      padding: EdgeInsetsGeometry.lerp(a?.padding, b?.padding, t),
      height: rawHeight != null && rawHeight > 0 ? rawHeight : null,
      width: rawWidth != null && rawWidth > 0 ? rawWidth : null,
      flagChild: t < 0.5 ? a?.flagChild : b?.flagChild,
    );
  }
}
