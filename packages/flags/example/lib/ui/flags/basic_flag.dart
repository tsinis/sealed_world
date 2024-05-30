import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../painters/basic/stripes_painter.dart";

class BasicFlag extends StatelessWidget {
  const BasicFlag(
    this.properties, {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.backgroundPainter,
    this.foregroundPainter,
    this.foregroundWidget,
    this.foregroundPainterBuilder,
    this.foregroundWidgetBuilder,
    super.key,
  });

  final FlagProperties properties;

  final double? aspectRatio;
  final BoxDecoration? decoration;
  final DecorationPosition? decorationPosition;

  final CustomPainter? backgroundPainter;
  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;
  final CustomPainter? Function(List<ElementsProperties>? properties)?
      foregroundPainterBuilder;
  final Widget? Function(List<ElementsProperties>? properties)?
      foregroundWidgetBuilder;

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: decoration ?? const BoxDecoration(),
        position: decorationPosition ?? DecorationPosition.foreground,
        child: AspectRatio(
          aspectRatio: aspectRatio ?? properties.aspectRatio,
          child: CustomPaint(
            painter: backgroundPainter ??
                StripesPainter(
                  properties.colors,
                  decoration?.borderRadius,
                  isHorizontal: properties.isHorizontalStriped ?? true,
                ),
            foregroundPainter: foregroundPainter ??
                foregroundPainterBuilder?.call(properties.elementsProperties),
            child: foregroundWidget ??
                foregroundWidgetBuilder?.call(properties.elementsProperties),
          ),
        ),
      );
}
