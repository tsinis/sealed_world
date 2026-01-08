import "package:flutter/material.dart";

// ignore: avoid-top-level-members-in-tests, it support model.
enum FlagType {
  full(height: 320),
  simplified(decoration: BoxDecoration(borderRadius: .all(.circular(4)))),
  waved(height: 60);

  const FlagType({this.decoration, this.height = kMinInteractiveDimension});

  final BoxDecoration? decoration;
  final double height;
}
