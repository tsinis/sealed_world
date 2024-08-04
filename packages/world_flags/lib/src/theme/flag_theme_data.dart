import "package:flutter/material.dart";

import "../interfaces/decorated_flag_interface.dart";

/// A class that defines the theme data for a flag, including its aspect ratio,
/// decoration, padding, and dimensions.
///
/// This class extends [ThemeExtension] to allow for easy theming and
/// customization of flags. It also implements [DecoratedFlagInterface] to
/// provide a consistent interface for decorated flags.
@immutable
class FlagThemeData extends ThemeExtension<FlagThemeData>
    implements DecoratedFlagInterface {
  /// Creates a new instance of [FlagThemeData].
  ///
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration. Defaults to
  ///  [DecorationPosition.foreground].
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  const FlagThemeData({
    double? aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
  })  : assert(
          aspectRatio == null || aspectRatio > 0,
          "`aspectRatio` must be greater than 0",
        ),
        assert(height == null || height > 0, "`height` must be greater than 0"),
        assert(width == null || width > 0, "`width` must be greater than 0"),
        _aspectRatio = aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;

  /// The height of the flag.
  final double? height;

  /// The width of the flag.
  final double? width;

  /// The specified aspect ratio of the flag.
  final double? _aspectRatio;

  /// The aspect ratio of the flag, calculated based on the specified aspect
  /// ratio or the dimensions of the flag.
  @override
  double? get aspectRatio => specifiedAspectRatio ?? calculatedAspectRatio;

  /// The specified aspect ratio of the flag.
  double? get specifiedAspectRatio => _aspectRatio;

  /// The calculated aspect ratio of the flag based on its width and height.
  double? get calculatedAspectRatio =>
      width == null || height == null ? null : (width ?? 1) / (height ?? 1);

  /// Creates a copy of this [FlagThemeData] but with the given fields replaced
  /// with the new values.
  ///
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag.
  /// - [width]: The width of the flag.
  @override
  FlagThemeData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    double? height,
    double? width,
  }) =>
      FlagThemeData(
        aspectRatio: aspectRatio ?? _aspectRatio,
        decoration: decoration ?? this.decoration,
        decorationPosition: decorationPosition ?? this.decorationPosition,
        padding: padding ?? this.padding,
        height: height ?? this.height,
        width: width ?? this.width,
      );

  @override
  String toString() => "FlagThemeData(aspectRatio: $_aspectRatio, "
      "decoration: $decoration, decorationPosition: $decorationPosition, "
      "padding: $padding, height: $height, width: $width)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other.aspectRatio == _aspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition &&
        other.padding == padding &&
        other.height == height &&
        other.width == width;
  }

  @override
  int get hashCode =>
      _aspectRatio.hashCode ^
      decoration.hashCode ^
      decorationPosition.hashCode ^
      padding.hashCode ^
      height.hashCode ^
      width.hashCode;

  @override // coverage:ignore-line
  FlagThemeData lerp(
    covariant ThemeExtension<FlagThemeData>? other,
    double t,
  ) =>
      this;
}
