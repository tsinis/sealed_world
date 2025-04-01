import "package:flutter/widgets.dart";

import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../../ui/flags/basic_flag.dart";

/// An extension on [BasicFlag] to provide a [copyWith] method for creating a
/// new instance of [BasicFlag] with modified properties.
///
/// This extension allows you to create a new [BasicFlag] by copying the
/// existing one and overriding specific properties.
///
/// Example usage:
/// ```dart
/// final newFlag = existingFlag.copyWith(aspectRatio: 1.5);
/// ```
extension BasicFlagExtensionCopyWith<T extends BasicFlag> on T {
  /// Creates a copy of this [BasicFlag] but with the given fields replaced with
  /// the new values.
  ///
  /// - [properties]: The properties of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [elementsBuilder]: A builder for the elements of the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [foregroundWidget]: A widget to display in the foreground of the flag.
  /// - [foregroundPainterBuilder]: A builder for the foreground painter.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  BasicFlag copyWith({
    FlagProperties? properties,
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    FlagPainterBuilder? elementsBuilder,
    CustomPainter? backgroundPainter,
    CustomPainter? foregroundPainter,
    Widget? foregroundWidget,
    FlagPainterBuilder? foregroundPainterBuilder,
    FlagWidgetBuilder? foregroundWidgetBuilder,
    Key? key,
  }) => BasicFlag(
    properties ?? this.properties,
    aspectRatio: aspectRatio ?? this.aspectRatio,
    decoration: decoration ?? this.decoration,
    decorationPosition: decorationPosition ?? this.decorationPosition,
    padding: padding ?? this.padding,
    elementsBuilder: elementsBuilder ?? this.elementsBuilder,
    backgroundPainter: backgroundPainter ?? this.backgroundPainter,
    foregroundPainter: foregroundPainter ?? this.foregroundPainter,
    foregroundWidget: foregroundWidget ?? this.foregroundWidget,
    foregroundPainterBuilder:
        foregroundPainterBuilder ?? this.foregroundPainterBuilder,
    foregroundWidgetBuilder:
        foregroundWidgetBuilder ?? this.foregroundWidgetBuilder,
    key: key ?? this.key,
  );
}
