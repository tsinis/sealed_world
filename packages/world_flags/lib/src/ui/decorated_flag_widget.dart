// ignore_for_file: avoid-passing-default-values

import "package:flutter/widgets.dart";

import "../interfaces/decorated_flag_interface.dart";

/// An abstract widget that displays a flag for a given object.
///
/// The [DecoratedFlagWidget] widget can be used to a flag. It supports various
/// customization options such as height, width, aspect ratio, decoration
/// (and its position), padding, and a child widget.
abstract class DecoratedFlagWidget extends StatelessWidget
    implements DecoratedFlagInterface {
  /// Creates a [DecoratedFlagWidget] widget with a simple flag representation.
  ///
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  ///  is used.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  ///  theme is used.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  const DecoratedFlagWidget({
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.height,
    this.width,
    this.child,
    super.key,
  }) : assert(height == null || height > 0, "`height` must be greater than 0"),
       assert(width == null || width > 0, "`width` must be greater than 0"),
       assert(
         aspectRatio == null || aspectRatio > 0,
         "`aspectRatio` must be greater than 0",
       );

  @override
  final double? height;

  @override
  final double? width;

  @override
  final Widget? child;

  @override
  final double? aspectRatio;

  @override
  final BoxDecoration? decoration;

  @override
  final DecorationPosition? decorationPosition;

  @override
  final EdgeInsetsGeometry? padding;
}
