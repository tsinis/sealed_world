import "package:flutter/material.dart";

enum FlagType {
  full(height: 320),
  simplified(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  ),
  decorated(
    decoration: BoxDecoration(
      shape: BoxShape.circle,
      border: Border.fromBorderSide(BorderSide(width: 2)),
    ),
  );

  const FlagType({this.height = kMinInteractiveDimension, this.decoration});

  final BoxDecoration? decoration;
  final double height;
}
