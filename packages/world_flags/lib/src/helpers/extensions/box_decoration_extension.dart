import "package:flutter/rendering.dart";

extension BoxDecorationExtension on BoxDecoration? {
  bool get isCircle => this?.shape == BoxShape.circle;
}
