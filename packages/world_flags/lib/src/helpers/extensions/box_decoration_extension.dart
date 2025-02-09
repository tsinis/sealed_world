import "package:flutter/rendering.dart";

/// An extension on [BoxDecoration] to provide additional utility methods.
///
/// This extension adds a [isCircle] getter to check if the shape of the
/// [BoxDecoration] is a circle.
///
/// Example usage:
/// ```dart
/// BoxDecoration decoration = BoxDecoration(shape: BoxShape.circle);
/// bool isCircleShape = decoration.isCircle; // true
///
/// BoxDecoration anotherDecoration = BoxDecoration(shape: BoxShape.rectangle);
/// bool isCircleShape = anotherDecoration.isCircle; // false
/// ```
extension BoxDecorationExtension on BoxDecoration? {
  /// Returns `true` if the shape of the [BoxDecoration] is a circle.
  ///
  /// If the [BoxDecoration] is `null`, this returns `false`.
  bool get isCircle => this?.shape == BoxShape.circle;
}
