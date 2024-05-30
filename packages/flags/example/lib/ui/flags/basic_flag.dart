import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../../helpers/extensions/box_decoration_extension.dart";
import "../../model/typedefs.dart";
import "../painters/basic/stripes_painter.dart";

class BasicFlag extends StatelessWidget {
  const BasicFlag(
    this.properties, {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
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
  final EdgeInsetsGeometry? padding;

  final CustomPainter? backgroundPainter;
  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;
  final FlagPainterBuilder? foregroundPainterBuilder;
  final FlagWidgetBuilder? foregroundWidgetBuilder;

  double _ratio(BoxDecoration? boxDecoration, double? ratio) =>
      boxDecoration.isCircle ? 1 : ratio ?? properties.aspectRatio;

  @override
  Widget build(BuildContext context) {
    final boxDecoration = decoration;

    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: DecoratedBox(
        decoration: boxDecoration ?? const BoxDecoration(),
        position: decorationPosition ?? DecorationPosition.foreground,
        child: AspectRatio(
          aspectRatio: _ratio(boxDecoration, aspectRatio),
          child: CustomPaint(
            painter:
                backgroundPainter ?? StripesPainter(properties, boxDecoration),
            foregroundPainter: foregroundPainter ??
                foregroundPainterBuilder?.call(properties.elementsProperties),
            child: foregroundWidget ??
                foregroundWidgetBuilder?.call(properties.elementsProperties),
          ),
        ),
      ),
    );
  }
}
