import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

class BasicCountryFlag extends StatelessWidget {
  const BasicCountryFlag(
    this.properties, {
    this.backgroundPainter,
    this.foregroundPainter,
    this.foregroundWidget,
    this.borderRadius = const Radius.circular(8),
    this.aspectRatio,
    super.key,
  });

  final FlagProperties properties;

  final double? aspectRatio;
  final Radius borderRadius;

  final CustomPainter? backgroundPainter;
  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;

  @override
  Widget build(BuildContext context) => AspectRatio(
        aspectRatio: aspectRatio ?? properties.aspectRatio,
        child: CustomPaint(
          painter: backgroundPainter,
          foregroundPainter: foregroundPainter,
          child: foregroundWidget,
        ),
      );
}
