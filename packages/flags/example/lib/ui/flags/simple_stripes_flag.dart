import "package:flutter/widgets.dart";

import "../basic_country_flag.dart";
import "../stripes_painter.dart";

class SimpleStripesFlag extends BasicCountryFlag {
  const SimpleStripesFlag(
    super.properties, {
    this.strokeColor,
    this.strokeHeightFactor,
    super.foregroundPainter,
    super.foregroundWidget,
    super.borderRadius,
    super.aspectRatio,
    super.key,
  });

  final Color? strokeColor;
  final double? strokeHeightFactor;

  @override
  Widget build(BuildContext context) => BasicCountryFlag(
        properties,
        backgroundPainter: StripesPainter(
          properties.colors,
          borderRadius,
          isHorizontal: properties.isHorizontalStriped ?? false,
          strokeColor: strokeColor,
          strokeHeightFactor: strokeHeightFactor,
        ),
        foregroundWidget: foregroundWidget,
        borderRadius: borderRadius,
        aspectRatio: aspectRatio,
      );
}
