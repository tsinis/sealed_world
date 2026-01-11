import "package:flutter/widgets.dart";

import "../../model/flag_properties.dart";
import "../../model/typedefs.dart" show FlagPainterBuilder, FlagWidgetBuilder;
import "../../theme/flag_theme_data.dart";
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
  /// - [foregroundPainterBuilder]: A builder for the foreground painter.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  /// theme is used.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  /// is used.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  BasicFlag copyWith({
    FlagProperties? properties,
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    EdgeInsetsGeometry? padding,
    FlagPainterBuilder? elementsBuilder,
    CustomPainter? backgroundPainter,
    CustomPainter? foregroundPainter,
    FlagPainterBuilder? foregroundPainterBuilder,
    FlagWidgetBuilder? foregroundWidgetBuilder,
    double? height,
    double? width,
    Widget? child,
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
    foregroundPainterBuilder:
        foregroundPainterBuilder ?? this.foregroundPainterBuilder,
    foregroundWidgetBuilder:
        foregroundWidgetBuilder ?? this.foregroundWidgetBuilder,
    height: height ?? this.height,
    width: width ?? this.width,
    key: key ?? this.key,
    child: child ?? this.child,
  );

  /// Creates a copy of this [BasicFlag] but with the given fields replaced with
  /// the new values.
  ///
  /// - [properties]: The properties of the flag.
  /// - [theme]: The theme data for the flag.
  /// - [elementsBuilder]: A builder for the elements of the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [foregroundPainterBuilder]: A builder for the foreground painter.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  /// - [key]: The key for the widget.
  BasicFlag copyWithTheme({
    FlagProperties? properties,
    FlagThemeData? theme,
    FlagPainterBuilder? elementsBuilder,
    CustomPainter? backgroundPainter,
    CustomPainter? foregroundPainter,
    FlagPainterBuilder? foregroundPainterBuilder,
    FlagWidgetBuilder? foregroundWidgetBuilder,
    Key? key,
  }) => BasicFlag(
    properties ?? this.properties,
    aspectRatio: theme?.aspectRatio ?? aspectRatio,
    decoration: theme?.decoration ?? decoration,
    decorationPosition: theme?.decorationPosition ?? decorationPosition,
    padding: theme?.padding ?? padding,
    elementsBuilder: elementsBuilder ?? this.elementsBuilder,
    backgroundPainter: backgroundPainter ?? this.backgroundPainter,
    foregroundPainter: foregroundPainter ?? this.foregroundPainter,
    foregroundPainterBuilder:
        foregroundPainterBuilder ?? this.foregroundPainterBuilder,
    foregroundWidgetBuilder:
        foregroundWidgetBuilder ?? this.foregroundWidgetBuilder,
    height: theme?.height ?? height,
    width: theme?.width ?? width,
    key: key ?? this.key,
    child: theme?.child ?? child,
  );
}
