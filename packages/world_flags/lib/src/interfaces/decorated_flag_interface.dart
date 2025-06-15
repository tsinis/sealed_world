import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart" show Widget;

/// An abstract interface class that defines the properties for a decorated
/// flag.
///
/// This interface provides a consistent way to define and access the properties
/// of a decorated flag, including its aspect ratio, decoration, decoration
/// position, padding, height, and width.
abstract interface class DecoratedFlagInterface {
  /// Creates a new instance of [DecoratedFlagInterface].
  ///
  /// - [aspectRatio]: The specified aspect ratio of the flag.
  /// - [decoration]: The decoration of the flag.
  /// - [decorationPosition]: The position of the decoration. Defaults to
  ///  [DecorationPosition.foreground] if not provided.
  /// - [padding]: The padding around the flag.
  /// - [height]: The height of the flag. If null, the height from the flag
  /// theme is used.
  /// - [width]: The width of the flag. If null, the width from the flag theme
  /// is used.
  /// - [child]: A widget to display in the foreground of the flag.
  const DecoratedFlagInterface( // coverage:ignore-line
  {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.width,
    this.height,
    this.child,
  });

  /// The specified aspect ratio of the flag.
  final double? aspectRatio;

  /// The decoration of the flag.
  ///
  /// This defines the visual decoration of the flag, such as color,
  /// border, and other decorative elements.
  final BoxDecoration? decoration;

  /// The position of the decoration.
  ///
  /// This defines where the decoration is painted relative to the flag's
  /// content. Defaults to [DecorationPosition.foreground] if not provided.
  final DecorationPosition? decorationPosition;

  /// The padding around the flag.
  ///
  /// This defines the space around the flag's content, providing padding
  /// between the content and the flag's edges.
  final EdgeInsetsGeometry? padding;

  /// The width of the flag.
  ///
  /// If `null`, the width from the flag theme is used.
  final double? width;

  /// The height of the flag.
  ///
  /// If `null`, the height from the flag theme is used.
  final double? height;

  /// A widget to display in the foreground of the flag.
  final Widget? child;
}
