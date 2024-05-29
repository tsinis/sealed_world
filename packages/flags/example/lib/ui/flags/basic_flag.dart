import "package:flags/flags.dart";
import "package:flutter/widgets.dart";

import "../../theme/flag_theme_data.dart";
import "../painters/basic/stripes_painter.dart";

class BasicFlag extends StatelessWidget {
  const BasicFlag(
    this.properties, {
    this.theme,
    this.backgroundPainter,
    this.foregroundPainter,
    this.foregroundWidget,
    this.foregroundPainterBuilder,
    this.foregroundWidgetBuilder,
    super.key,
  });

  final FlagProperties properties;

  final FlagThemeData? theme;

  final CustomPainter? backgroundPainter;
  final CustomPainter? foregroundPainter;
  final Widget? foregroundWidget;
  final CustomPainter? Function(List<ElementsProperties>? properties)?
      foregroundPainterBuilder;
  final Widget? Function(List<ElementsProperties>? properties)?
      foregroundWidgetBuilder;

  BasicFlag copyWith({
    FlagProperties? properties,
    FlagThemeData? theme,
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
        theme: theme ?? this.theme,
        backgroundPainter: backgroundPainter ?? this.backgroundPainter,
        foregroundPainter: foregroundPainter ?? this.foregroundPainter,
        foregroundWidget: foregroundWidget ?? this.foregroundWidget,
        foregroundPainterBuilder:
            foregroundPainterBuilder ?? this.foregroundPainterBuilder,
        foregroundWidgetBuilder:
            foregroundWidgetBuilder ?? this.foregroundWidgetBuilder,
      );

  @override
  Widget build(BuildContext context) => DecoratedBox(
        decoration: const BoxDecoration(), // TODO!
        position: DecorationPosition.foreground,
        child: AspectRatio(
          aspectRatio: theme?.aspectRatio ?? properties.aspectRatio,
          child: CustomPaint(
            painter: backgroundPainter ??
                StripesPainter(
                  properties.colors,
                  theme?.borderRadius,
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
