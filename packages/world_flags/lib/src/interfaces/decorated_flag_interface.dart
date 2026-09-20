import "package:flutter/foundation.dart" show immutable;
import "package:flutter/rendering.dart";
import "package:flutter/widgets.dart" show Widget;

/// An abstract interface class that defines the properties for a decorated
/// flag.
///
/// This interface provides a consistent way to define and access the properties
/// of a decorated flag, including its aspect ratio, decoration, decoration
/// position, padding, height, and width.
@immutable
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
  /// - [flagChild]: A widget to display in the foreground of the flag.
  /// - [child]: Deprecated in favor of [flagChild].
  const new( // coverage:ignore-line
  {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.width,
    this.height,
    Widget? flagChild,
    @Deprecated("Use flagChild instead. Will be removed in next major version.")
    Widget? child,
  }) : flagChild = flagChild ?? child;

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
  final Widget? flagChild;

  /// A widget to display in the foreground of the flag.
  ///
  /// Deprecated because `child` collides with `InheritedTheme.child`, which
  /// prevents `FlagTheme` from implementing this interface. Use [flagChild]
  /// instead.
  @Deprecated(
    "Use flagChild instead. This resolves a naming collision with "
    "InheritedTheme.child. Will be removed in next major version.",
  )
  Widget? get child => flagChild;
}
