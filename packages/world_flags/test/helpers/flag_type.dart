import "package:flutter/material.dart";

// ignore: avoid-top-level-members-in-tests, it support model.
enum FlagType {
  full(height: 320),
  simplified(
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(4)),
    ),
  ),
  decorated(
    decoration: BoxDecoration(
      border: Border.fromBorderSide(BorderSide(width: 2)),
      shape: BoxShape.circle,
    ),
    child: Padding(padding: EdgeInsets.all(8), child: FlutterLogo()),
  );

  const FlagType({
    this.height = kMinInteractiveDimension,
    this.decoration,
    this.child,
  });

  final BoxDecoration? decoration;
  final double height;
  final Widget? child;
}
