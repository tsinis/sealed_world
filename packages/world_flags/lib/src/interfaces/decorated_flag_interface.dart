import "package:flutter/rendering.dart";

abstract interface class DecoratedFlagInterface {
  const DecoratedFlagInterface( // coverage:ignore-line
      {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
  });

  final double? aspectRatio;
  final BoxDecoration? decoration;
  final DecorationPosition? decorationPosition;
  final EdgeInsetsGeometry? padding;
}
