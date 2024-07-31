import "../painters/common/star_painter.dart";
import "basic_flag.dart";

/// A widget that represents a flag with a star shape.
///
/// This class extends [BasicFlag] and uses [StarPainter] to draw the star shape
/// as part of the flag's elements. It inherits all the properties and
/// customization options from [BasicFlag].
///
/// Example usage:
/// ```dart
/// StarFlag(myFlagProperties, aspectRatio: 1.5),
/// ```
class StarFlag extends BasicFlag {
  /// Creates a new instance of [StarFlag].
  ///
  /// - [properties]: The properties of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [foregroundWidget]: A widget to display in the foreground of the flag.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  const StarFlag(
    super.properties, {
    super.aspectRatio,
    super.decoration,
    super.decorationPosition,
    super.padding,
    super.backgroundPainter,
    super.foregroundPainter,
    super.foregroundWidget,
    super.foregroundWidgetBuilder,
    super.key,
  }) : super(elementsBuilder: StarPainter.new); // coverage:ignore-line
}
