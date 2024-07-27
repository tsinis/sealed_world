import "package:flutter/material.dart";

import "../interfaces/decorated_flag_interface.dart";

@immutable
class FlagThemeData extends ThemeExtension<FlagThemeData>
    implements DecoratedFlagInterface {
  const FlagThemeData({
    double? aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
  }) : _aspectRatio = aspectRatio;
  // TODO: Add asserts for width and height > 0.

  final BoxDecoration? decoration;

  /// If not provided - default to [DecorationPosition.foreground].
  final DecorationPosition? decorationPosition;
  final EdgeInsetsGeometry? padding;
  final double? height;
  final double? width;

  final double? _aspectRatio;

  double? get aspectRatio => _aspectRatio ?? calculatedAspectRatio;
  double? get specifiedAspectRatio => _aspectRatio;
  double? get calculatedAspectRatio =>
      width == null || height == null ? null : (width ?? 1) / (height ?? 1);

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
        aspectRatio: aspectRatio ?? this._aspectRatio,
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

  @override
  FlagThemeData lerp(
    covariant ThemeExtension<FlagThemeData>? other,
    double t,
  ) =>
      this;
}
