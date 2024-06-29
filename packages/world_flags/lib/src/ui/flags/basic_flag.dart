import "package:flutter/widgets.dart";

import "../../helpers/extensions/box_decoration_extension.dart";
import "../../helpers/extensions/world_flags_build_context_extension.dart";
import "../../interfaces/decorated_flag_interface.dart";
import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../painters/basic/stripes_painter.dart";

class BasicFlag extends StatelessWidget implements DecoratedFlagInterface {
  const BasicFlag(
    this.properties, {
    this.aspectRatio,
    this.decoration,
    this.decorationPosition,
    this.padding,
    this.elementsBuilder,
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
  final FlagPainterBuilder? elementsBuilder;
  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;
  final FlagWidgetBuilder? foregroundWidgetBuilder;
  final FlagPainterBuilder? foregroundPainterBuilder;

  double get _flagAspectRatio => properties.aspectRatio;
  ElementsProps? get _elements => properties.elementsProperties;
  CustomPainter? get _elementsPainter =>
      elementsBuilder?.call(_elements, _flagAspectRatio);

  double _boxRatio(BoxDecoration? boxDecoration, double? ratio) =>
      boxDecoration.isCircle ? 1 : ratio ?? _flagAspectRatio;

  @override
  Widget build(BuildContext context) {
    final theme = context.flagTheme;
    final boxDecoration = decoration ?? theme?.decoration;

    return Padding(
      padding: padding ?? theme?.padding ?? EdgeInsets.zero,
      child: DecoratedBox(
        decoration: boxDecoration ?? const BoxDecoration(),
        position: decorationPosition ??
            theme?.decorationPosition ??
            DecorationPosition.foreground,
        child: AspectRatio(
          aspectRatio:
              _boxRatio(boxDecoration, aspectRatio ?? theme?.aspectRatio),
          child: CustomPaint(
            painter: backgroundPainter ??
                StripesPainter(properties, boxDecoration, _elementsPainter),
            foregroundPainter: foregroundPainter ??
                foregroundPainterBuilder?.call(_elements, _flagAspectRatio),
            child: foregroundWidget ??
                foregroundWidgetBuilder?.call(_elements, _flagAspectRatio),
          ),
        ),
      ),
    );
  }
}
