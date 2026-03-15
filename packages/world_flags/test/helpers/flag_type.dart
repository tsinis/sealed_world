import "package:flutter/material.dart" show kMinInteractiveDimension;
import "package:flutter/widgets.dart";

// ignore: avoid-top-level-members-in-tests, it support model.
enum FlagType {
  full(height: 320),
  simplified(decoration: BoxDecoration(borderRadius: .all(.circular(4)))),
  waved(height: 60),
  dual;

  const FlagType({this.decoration, this.height = kMinInteractiveDimension});

  final BoxDecoration? decoration;
  final double height;
}
