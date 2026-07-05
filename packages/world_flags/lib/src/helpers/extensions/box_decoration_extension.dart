import "package:flutter/rendering.dart";

/// An extension on [BoxDecoration] to provide additional utility methods.
///
/// This extension adds a [isCircle] getter to check if the shape of the
/// [BoxDecoration] is a circle.
///
/// Example usage:
/// ```dart
/// void main() {
///   final decoration = const BoxDecoration(shape: BoxShape.circle);
///   assert(decoration.isCircle);
///
///   final anotherDecoration = const BoxDecoration(shape: BoxShape.rectangle);
///   assert(!anotherDecoration.isCircle);
/// }
/// ```
extension BoxDecorationExtension on BoxDecoration? {
  /// Returns `true` if the shape of the [BoxDecoration] is a circle.
  ///
  /// If the [BoxDecoration] is `null`, this returns `false`.
  bool get isCircle => this?.shape == BoxShape.circle;
}
