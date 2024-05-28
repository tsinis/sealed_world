import "package:flutter/widgets.dart";

import "../basic_country_flag.dart";
import "../stripes_painter.dart";

class SimpleStripesFlag extends BasicCountryFlag {
  const SimpleStripesFlag(
    super.properties, {
    this.strokeColor,
    this.strokeHeightFactor,
    this.strokeWidth,
    super.foregroundPainter,
    super.foregroundWidget,
    super.borderRadius,
    super.aspectRatio,
    super.key,
  });

  final Color? strokeColor;
  final double? strokeHeightFactor;
  final double? strokeWidth;

  SimpleStripesFlag copyWith({
    // TODO!
    Color? strokeColor,
    double? strokeHeightFactor,
    double? strokeWidth,
    double? aspectRatio,
    Radius? borderRadius,
  }) =>
      SimpleStripesFlag(
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
        borderRadius: borderRadius,
        aspectRatio: aspectRatio,
      );
}
