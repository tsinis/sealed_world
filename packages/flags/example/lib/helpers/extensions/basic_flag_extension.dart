import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../../ui/flags/basic_flag.dart";

extension BasicFlagExtension<T extends BasicFlag> on T {
  // ignore: long-parameter-list, a lot of properties.
  BasicFlag copyWith({
    FlagProperties? properties,
    double? aspectRatio,
    BoxDecoration? decoration,
    DecorationPosition? decorationPosition,
    CustomPainter? backgroundPainter,
    CustomPainter? foregroundPainter,
    Widget? foregroundWidget,
    CustomPainter? Function(List<ElementsProperties>? properties)?
        foregroundPainterBuilder,
    Widget? Function(List<ElementsProperties>? properties)?
        foregroundWidgetBuilder,
  }) =>
      BasicFlag(
        properties ?? this.properties,
        aspectRatio: aspectRatio ?? this.aspectRatio,
        decoration: decoration ?? this.decoration,
        decorationPosition: decorationPosition ?? this.decorationPosition,
        backgroundPainter: backgroundPainter ?? this.backgroundPainter,
        foregroundPainter: foregroundPainter ?? this.foregroundPainter,
        foregroundWidget: foregroundWidget ?? this.foregroundWidget,
        foregroundPainterBuilder:
            foregroundPainterBuilder ?? this.foregroundPainterBuilder,
        foregroundWidgetBuilder:
            foregroundWidgetBuilder ?? this.foregroundWidgetBuilder,
      );
}
