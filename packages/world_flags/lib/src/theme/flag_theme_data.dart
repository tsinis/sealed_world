import "package:flutter/material.dart";

import "../interfaces/decorated_flag_interface.dart";

@immutable
class FlagThemeData extends ThemeExtension<FlagThemeData>
    implements DecoratedFlagInterface {
  const FlagThemeData({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
  });

  final double? aspectRatio;
  final BoxDecoration? decoration;

  /// If not provided - default to [DecorationPosition.foreground].
  final DecorationPosition? decorationPosition;
  final EdgeInsetsGeometry? padding;

  @override
  FlagThemeData copyWith({
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
  }) =>
      FlagThemeData(
        aspectRatio: aspectRatio ?? this.aspectRatio,
        decoration: decoration ?? this.decoration,
        decorationPosition: decorationPosition ?? this.decorationPosition,
        padding: padding ?? this.padding,
      );

  @override
  String toString() => "FlagThemeData(aspectRatio: $aspectRatio, "
      "decoration: $decoration, decorationPosition: $decorationPosition, "
      "padding: $padding)";

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is FlagThemeData &&
        other.aspectRatio == aspectRatio &&
        other.decoration == decoration &&
        other.decorationPosition == decorationPosition &&
        other.padding == padding;
  }

  @override
  int get hashCode =>
      aspectRatio.hashCode ^
      decoration.hashCode ^
      decorationPosition.hashCode ^
      padding.hashCode;

  @override
  FlagThemeData lerp(
    covariant ThemeExtension<FlagThemeData>? other,
    double t,
  ) =>
      this;
}
