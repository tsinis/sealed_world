import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../stripes_painter.dart";

class BasicFlag extends StatelessWidget {
  const BasicFlag(
    this.properties, {
    this.strokeColor,
    this.strokeHeightFactor,
    this.strokeWidth,
    this.foregroundPainter,
    this.foregroundWidget,
    this.foregroundPainterBuilder,
    this.foregroundWidgetBuilder,
    this.borderRadius = const Radius.circular(8),
    this.aspectRatio,
    super.key,
  });

  final Color? strokeColor;
  final double? strokeHeightFactor;
  final double? strokeWidth;
  final FlagProperties properties;

  final double? aspectRatio;
  final Radius borderRadius;

  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;
  final CustomPainter? Function(List<ElementsProperties>? properties)?
      foregroundPainterBuilder;
  final Widget? Function(List<ElementsProperties>? properties)?
      foregroundWidgetBuilder;

  BasicFlag copyWith({
    // TODO!
    Color? strokeColor,
    double? strokeHeightFactor,
    double? strokeWidth,
    double? aspectRatio,
    Radius? borderRadius,
  }) =>
      BasicFlag(
        properties,
        strokeColor: strokeColor ?? this.strokeColor,
        strokeHeightFactor: strokeHeightFactor ?? this.strokeHeightFactor,
        strokeWidth: strokeWidth ?? this.strokeWidth,
        borderRadius: borderRadius ?? this.borderRadius,
        aspectRatio: aspectRatio ?? this.aspectRatio,
      );

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio ?? properties.aspectRatio,
        child: CustomPaint(
          painter: StripesPainter(
            properties.colors,
            borderRadius,
            isHorizontal: properties.isHorizontalStriped ?? false,
            strokeColor: strokeColor,
            strokeHeightFactor: strokeHeightFactor,
            strokeWidth: strokeWidth,
          ),
          foregroundPainter: foregroundPainter ??
              foregroundPainterBuilder?.call(properties.elementsProperties),
          child: foregroundWidget ??
              foregroundWidgetBuilder?.call(properties.elementsProperties),
        ),
      );
}
