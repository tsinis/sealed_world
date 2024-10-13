import "../painters/multi_element_painter.dart";
import "basic_flag.dart";

/// A widget that represents a flag with multiple elements.
///
/// This class extends [BasicFlag] and uses [MultiElementPainter] to draw
/// multiple elements as part of the flag's design. It inherits all the
/// properties and customization options from [BasicFlag].
///
/// Example usage:
/// ```dart
/// MultiElementFlag(myFlagProperties, aspectRatio: 1.5),
/// ```
class MultiElementFlag extends BasicFlag {
  /// Creates a new instance of [MultiElementFlag].
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
  const MultiElementFlag(
    super.properties, {
    super.aspectRatio,
    super.backgroundPainter,
    super.decoration,
    super.decorationPosition,
    super.foregroundPainter,
    super.foregroundWidget,
    super.foregroundWidgetBuilder,
    super.key,
    super.padding,
  }) : super(elementsBuilder: MultiElementPainter.new); // coverage:ignore-line
}
