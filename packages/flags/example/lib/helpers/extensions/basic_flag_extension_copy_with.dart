import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../../model/typedefs.dart";
import "../../ui/flags/basic_flag.dart";

extension BasicFlagExtensionCopyWith<T extends BasicFlag> on T {
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
  }) =>
      BasicFlag(
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
      );
}
