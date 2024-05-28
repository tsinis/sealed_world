import "package:flutter/widgets.dart";

import "../basic_country_flag.dart";
import "../stripes_painter.dart";

class StripedFlag extends BasicCountryFlag {
  const StripedFlag(
    super.properties, {
    this.strokeColor,
    this.strokeHeightFactor,
    this.strokeWidth,
    super.foregroundPainter,
    super.foregroundWidget,
    super.foregroundPainterBuilder,
    super.foregroundWidgetBuilder,
    super.borderRadius,
    super.aspectRatio,
    super.key,
  });

  final Color? strokeColor;
  final double? strokeHeightFactor;
  final double? strokeWidth;

  StripedFlag copyWith({
    // TODO!
    Color? strokeColor,
    double? strokeHeightFactor,
    double? strokeWidth,
    double? aspectRatio,
    Radius? borderRadius,
  }) =>
      StripedFlag(
        properties,
        strokeColor: strokeColor ?? this.strokeColor,
        strokeHeightFactor: strokeHeightFactor ?? this.strokeHeightFactor,
        strokeWidth: strokeWidth ?? this.strokeWidth,
        borderRadius: borderRadius ?? this.borderRadius,
        aspectRatio: aspectRatio ?? this.aspectRatio,
      );

  @override
  Widget build(BuildContext context) => BasicCountryFlag(
        properties,
        backgroundPainter: StripesPainter(
          properties.colors,
          borderRadius,
          isHorizontal: properties.isHorizontalStriped ?? false,
          strokeColor: strokeColor,
          strokeHeightFactor: strokeHeightFactor,
          strokeWidth: strokeWidth,
        ),
        foregroundWidget: foregroundWidget,
        foregroundPainterBuilder: foregroundPainterBuilder,
        foregroundWidgetBuilder: foregroundWidgetBuilder,
        borderRadius: borderRadius,
        aspectRatio: aspectRatio,
      );
}
