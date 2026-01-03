import "../painters/common/moon_painter.dart";
import "basic_flag.dart";

/// A widget that represents a flag with a moon shape.
///
/// This class extends [BasicFlag] and uses [MoonPainter] to draw the moon
/// shape as part of the flag's elements. It inherits all the properties and
/// customization options from [BasicFlag].
///
/// Example usage:
/// ```dart
/// MoonFlag(myFlagProperties, aspectRatio: 1.5),
/// ```
class MoonFlag extends BasicFlag {
  /// Creates a new instance of [MoonFlag].
  ///
  /// - [properties]: The properties of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  /// - [key]: The key for the widget.
  const MoonFlag(
    super.properties, {
    super.aspectRatio,
    super.backgroundPainter,
    super.decoration,
    super.decorationPosition,
    super.foregroundPainter,
    super.foregroundWidgetBuilder,
    super.key,
    super.padding,
    super.child,
    super.shaderOptions,
  }) : super(elementsBuilder: MoonPainter.new); // coverage:ignore-line
}
