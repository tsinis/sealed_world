import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "../../debug/flag_properties_property.dart";
import "../../helpers/extensions/box_decoration_extension.dart";
import "../../helpers/extensions/world_flags_build_context_extension.dart";
import "../../interfaces/decorated_flag_interface.dart";
import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../painters/basic/stripes_painter.dart";

/// A widget that represents a basic flag with customizable properties,
/// decorations, and elements.
///
/// This class implements [DecoratedFlagInterface] to provide a consistent
/// interface for decorated flags. It allows for various customizations such as
/// aspect ratio, decoration, padding, and custom painters for background and
/// foreground elements.
class BasicFlag extends StatelessWidget implements DecoratedFlagInterface {
  /// Creates a new instance of [BasicFlag].
  ///
  /// - [properties]: The properties of the flag.
  /// - [aspectRatio]: The aspect ratio of the flag.
  /// - [decoration]: The decoration to paint behind the flag.
  /// - [decorationPosition]: The position of the decoration.
  /// - [padding]: The padding around the flag.
  /// - [elementsBuilder]: A builder for the elements of the flag.
  /// - [backgroundPainter]: A custom painter for the background of the flag.
  /// - [foregroundPainter]: A custom painter for the foreground of the flag.
  /// - [foregroundWidget]: A widget to display in the foreground of the flag.
  /// - [foregroundPainterBuilder]: A builder for the foreground painter.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  const BasicFlag(
    this.properties, {
    this.aspectRatio,
    this.backgroundPainter,
    this.decoration,
    this.decorationPosition,
    this.elementsBuilder,
    this.foregroundPainter,
    this.foregroundPainterBuilder,
    this.foregroundWidget,
    this.foregroundWidgetBuilder,
    super.key,
    this.padding,
  });

  @override
  final double? aspectRatio;
  @override
  final BoxDecoration? decoration;
  @override
  final DecorationPosition? decorationPosition;
  @override
  final EdgeInsetsGeometry? padding;

  /// The properties of the flag.
  final FlagProperties properties;

  /// A custom painter for the background of the flag.
  final CustomPainter? backgroundPainter;

  /// A builder for the elements of the flag.
  final FlagPainterBuilder? elementsBuilder;

  /// A custom painter for the foreground of the flag.
  final CustomPainter? foregroundPainter;

  /// A widget to display in the foreground of the flag.
  final Widget? foregroundWidget;

  /// A builder for the foreground widget.
  final FlagWidgetBuilder? foregroundWidgetBuilder;

  /// A builder for the foreground painter.
  final FlagPainterBuilder? foregroundPainterBuilder;

  /// The original aspect ratio of the flag.
  double get flagAspectRatio => properties.aspectRatio;

  ElementsProps? get _elements => properties.elementsProperties;
  CustomPainter? get _elementsPainter =>
      elementsBuilder?.call(_elements, flagAspectRatio);

  double _boxRatio(BoxDecoration? boxDecoration, double? ratio) =>
      boxDecoration.isCircle ? 1 : (ratio ?? flagAspectRatio);

  @override
  // ignore: avoid-shadowing, it's default name in debugFillProperties.
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    const theme = "not provided, using value from FlagThemeData or";

    properties
      ..add(FlagPropertiesProperty(this.properties))
      ..add(
        DoubleProperty(
          "aspectRatio",
          aspectRatio,
          ifNull: "$theme flag's aspect ratio ($flagAspectRatio)",
          defaultValue: flagAspectRatio,
        ),
      )
      ..add(
        DiagnosticsProperty<BoxDecoration>(
          "decoration",
          decoration,
          ifNull: "$theme const $BoxDecoration() otherwise",
          defaultValue: const BoxDecoration(),
        ),
      )
      ..add(
        DiagnosticsProperty<DecorationPosition>(
          "decorationPosition",
          decorationPosition,
          ifNull: "$theme ${DecorationPosition.foreground} otherwise",
          defaultValue: DecorationPosition.foreground,
        ),
      )
      ..add(
        DiagnosticsProperty<EdgeInsetsGeometry>(
          "padding",
          padding,
          ifNull: "$theme ${EdgeInsets.zero} otherwise",
          defaultValue: EdgeInsets.zero,
        ),
      )
      ..add(DiagnosticsProperty<Key>("key", key))
      ..add(
        ObjectFlagProperty<CustomPainter>(
          "backgroundPainter",
          backgroundPainter,
          ifNull: "using default $StripesPainter",
        ),
      )
      ..add(
        ObjectFlagProperty<FlagPainterBuilder>(
          "elementsBuilder",
          elementsBuilder,
          ifNull: "no custom elements builder",
        ),
      )
      ..add(
        ObjectFlagProperty<CustomPainter>(
          "foregroundPainter",
          foregroundPainter,
          ifNull: "no foreground painter or using builder",
        ),
      )
      ..add(
        ObjectFlagProperty<FlagPainterBuilder>(
          "foregroundPainterBuilder",
          foregroundPainterBuilder,
          ifNull: "no foreground painter builder",
        ),
      )
      ..add(
        ObjectFlagProperty<Widget>(
          "foregroundWidget",
          foregroundWidget,
          ifNull: "no foreground widget or using builder",
        ),
      )
      ..add(
        ObjectFlagProperty<FlagWidgetBuilder>(
          "foregroundWidgetBuilder",
          foregroundWidgetBuilder,
          ifNull: "no foreground widget builder",
        ),
      )
      ..add(
        FlagProperty(
          "has elements painter",
          value: _elementsPainter != null,
          ifTrue: "yes",
          ifFalse: "no custom elements painter",
        ),
      )
      ..add(
        DiagnosticsProperty<ElementsProps>(
          "elements",
          _elements,
          ifNull: "no elements properties",
        ),
      );
  }

  @override
  String toStringShort() =>
      key == null ? super.toStringShort() : "BasicFlag($key)";

  @override
  Widget build(BuildContext context) {
    final theme = context.flagTheme;
    final boxDecoration = decoration ?? theme?.decoration;

    return Padding(
      padding: padding ?? theme?.padding ?? EdgeInsets.zero,
      child: Semantics(
        image: true,
        child: DecoratedBox(
          decoration: boxDecoration ?? const BoxDecoration(),
          position:
              decorationPosition ??
              theme?.decorationPosition ??
              DecorationPosition.foreground,
          child: AspectRatio(
            aspectRatio: _boxRatio(
              boxDecoration,
              aspectRatio ?? theme?.aspectRatio,
            ),
            child: CustomPaint(
              painter:
                  backgroundPainter ??
                  StripesPainter(properties, boxDecoration, _elementsPainter),
              foregroundPainter:
                  foregroundPainter ??
                  foregroundPainterBuilder?.call(_elements, flagAspectRatio),
              child:
                  foregroundWidget ??
                  foregroundWidgetBuilder?.call(_elements, flagAspectRatio),
            ),
          ),
        ),
      ),
    );
  }
}
