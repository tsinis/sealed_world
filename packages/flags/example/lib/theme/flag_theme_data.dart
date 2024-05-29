import "package:flutter/material.dart";

@immutable
class FlagThemeData implements ThemeExtension<FlagThemeData> {
  const FlagThemeData({
    this.borderRadius,
    this.aspectRatio,
    this.strokeColor,
    this.strokeWidth,
    this.strokeHeightFactor,
  });

  final Radius? borderRadius;
  final double? aspectRatio;
  final Color? strokeColor;
  final double? strokeWidth;
  final double? strokeHeightFactor;

  @override
  Type get type => FlagThemeData;

  @override
  FlagThemeData copyWith({
    Radius? borderRadius,
    double? aspectRatio,
    Color? strokeColor,
    double? strokeWidth,
    double? strokeHeightFactor,
  }) =>
      FlagThemeData(
        borderRadius: borderRadius ?? this.borderRadius,
        aspectRatio: aspectRatio ?? this.aspectRatio,
        strokeColor: strokeColor ?? this.strokeColor,
        strokeWidth: strokeWidth ?? this.strokeWidth,
        strokeHeightFactor: strokeHeightFactor ?? this.strokeHeightFactor,
      );

  @override
  String toString() => "FlagThemeData(strokeColor: $strokeColor, "
      "strokeHeightFactor: $strokeHeightFactor, strokeWidth: $strokeWidth, "
      "aspectRatio: $aspectRatio, borderRadius: $borderRadius)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other.borderRadius == borderRadius &&
        other.aspectRatio == aspectRatio &&
        other.strokeColor == strokeColor &&
        other.strokeWidth == strokeWidth &&
        other.strokeHeightFactor == strokeHeightFactor;
  }

  @override
  int get hashCode =>
      borderRadius.hashCode ^
      aspectRatio.hashCode ^
      strokeColor.hashCode ^
      strokeWidth.hashCode ^
      strokeHeightFactor.hashCode;

  @override
  FlagThemeData lerp(
    covariant ThemeExtension<FlagThemeData>? other,
    double t,
  ) =>
      this;
}
