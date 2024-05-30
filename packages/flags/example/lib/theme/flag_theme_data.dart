import "package:flutter/material.dart";

@immutable
class FlagThemeData implements ThemeExtension<FlagThemeData> {
  const FlagThemeData({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
  });

  final double? aspectRatio;
  final BoxDecoration? decoration;

  /// If not provided - default to [DecorationPosition.foreground].
  final DecorationPosition? decorationPosition;

  @override
  Type get type => FlagThemeData;

  @override
  FlagThemeData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
  }) =>
      FlagThemeData(
        aspectRatio: aspectRatio ?? this.aspectRatio,
        decoration: decoration ?? this.decoration,
        decorationPosition: decorationPosition ?? this.decorationPosition,
      );

  @override
  String toString() => "FlagThemeData(aspectRatio: $aspectRatio, "
      "decoration: $decoration, decorationPosition: $decorationPosition";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other.aspectRatio == aspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition;
  }

  @override
  int get hashCode =>
      aspectRatio.hashCode ^ decoration.hashCode ^ decorationPosition.hashCode;

  @override
  FlagThemeData lerp(
    covariant ThemeExtension<FlagThemeData>? other,
    double t,
  ) =>
      this;
}
