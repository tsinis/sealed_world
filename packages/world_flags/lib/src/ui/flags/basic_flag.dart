// ignore_for_file: avoid-passing-default-values

import "package:flutter/foundation.dart";
import "package:flutter/widgets.dart";

import "../../debug/flag_properties_property.dart";
import "../../helpers/extensions/box_decoration_extension.dart";
import "../../helpers/extensions/decorated_flag_interface_extension.dart";
import "../../helpers/extensions/world_flags_build_context_extension.dart";
import "../../model/flag_elements_type.dart";
import "../../model/flag_properties.dart";
import "../../model/typedefs.dart";
import "../decorated_flag_widget.dart";
import "../painters/basic/stripes_painter.dart";
import "../painters/common/ellipse_painter.dart";
import "../painters/common/moon_painter.dart";
import "../painters/common/rectangle_painter.dart";
import "../painters/common/star_painter.dart";
import "../painters/common/triangle_painter.dart";
import "../painters/multi_element_painter.dart";

/// A widget that represents a basic flag with customizable properties,
/// decorations, and elements.
///
/// This class extends [DecoratedFlagWidget] to provide a consistent
/// interface for decorated flags. It allows for various customizations such as
/// aspect ratio, decoration, padding, height, width, and custom painters
/// for background and foreground elements.
@immutable
class BasicFlag extends DecoratedFlagWidget {
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
  /// - [foregroundPainterBuilder]: A builder for the foreground painter.
  /// - [foregroundWidgetBuilder]: A builder for the foreground widget.
  /// - [height]: The height of the flag. If `null`, the height from the flag
  /// theme is used.
  /// - [width]: The width of the flag. If `null`, the width from the flag theme
  /// is used.
  /// - [child]: A widget to display in the foreground of the flag.
  /// - [key]: The key for the widget.
  const BasicFlag(
    this.properties, {
    super.aspectRatio,
    this.backgroundPainter,
    super.decoration,
    super.decorationPosition,
    this.elementsBuilder,
    this.foregroundPainter,
    this.foregroundPainterBuilder,
    this.foregroundWidgetBuilder,
    super.padding,
    super.height,
    super.width,
    super.child,
    super.key,
  });

  /// The properties of the flag.
  final FlagProperties properties;

  /// A custom painter for the background of the flag.
  final CustomPainter? backgroundPainter;

  /// A builder for the elements of the flag.
  final FlagPainterBuilder? elementsBuilder;

  /// A custom painter for the foreground of the flag.
  final CustomPainter? foregroundPainter;

  /// A builder for the foreground widget.
  final FlagWidgetBuilder? foregroundWidgetBuilder;

  /// A builder for the foreground painter.
  final FlagPainterBuilder? foregroundPainterBuilder;

  /// The original aspect ratio of the flag.
  double get flagAspectRatio => properties.aspectRatio;

  ElementsProps? get _elements => properties.elementsProperties;

  /// Resolves the elements painter, preferring an explicit [elementsBuilder]
  /// and falling back to auto-resolution from [FlagProperties.baseElementType].
  // ignore: prefer-widget-private-members, it's being used in shader surface.
  CustomPainter? resolvePainter(ElementsProps? elements, double ratio) =>
      elementsBuilder?.call(elements, ratio) ??
      _resolveFromBaseType(elements, ratio);

  CustomPainter? _resolveFromBaseType(ElementsProps? elements, double ratio) =>
      switch (properties.baseElementType) {
        FlagElementsType.multiElement => MultiElementPainter(elements, ratio),
        FlagElementsType.star => StarPainter(elements, ratio),
        FlagElementsType.rectangle => RectanglePainter(elements, ratio),
        FlagElementsType.triangle => TrianglePainter(elements, ratio),
        FlagElementsType.ellipse => EllipsePainter(elements, ratio),
        FlagElementsType.moon => MoonPainter(elements, ratio),
        null => null,
      };

  double _boxRatio(BoxDecoration? boxDecoration, double? ratio) =>
      boxDecoration.isCircle ? 1 : (ratio ?? flagAspectRatio);

  @override
  @mustCallSuper
  // ignore: avoid-shadowing, avoid-long-functions, default debugFillProperties.
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    const theme = "not provided, using value from FlagThemeData or";
    const ifNull = "$theme null, if theme is also not provided";

    properties
      ..add(FlagPropertiesProperty(this.properties))
      ..add(DoubleProperty("width", width, ifNull: ifNull))
      ..add(DoubleProperty("height", height, ifNull: ifNull))
      ..add(
        DoubleProperty(
          "aspectRatio",
          aspectRatio,
          ifNull: "$theme flag's aspect ratio ($flagAspectRatio)",
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<BoxDecoration>(
          "decoration",
          decoration,
          ifNull: "$theme const $BoxDecoration() otherwise",
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<DecorationPosition>(
          "decorationPosition",
          decorationPosition,
          ifNull: "$theme ${DecorationPosition.foreground} otherwise",
          defaultValue: null,
        ),
      )
      ..add(
        DiagnosticsProperty<EdgeInsetsGeometry>(
          "padding",
          padding,
          ifNull: "$theme ${EdgeInsets.zero} otherwise",
          defaultValue: null,
        ),
      )
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
          ifNull: switch (this.properties.baseElementType) {
            final type? => "auto-resolved from $type",
            null => "no custom elements builder",
          },
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
        ObjectFlagProperty<FlagWidgetBuilder>(
          "foregroundWidgetBuilder",
          foregroundWidgetBuilder,
          ifNull: "no foreground widget builder",
        ),
      )
      ..add(
        ObjectFlagProperty<Widget>("child", child, ifNull: "no child widget"),
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
      child: SizedBox(
        height: height ?? theme?.height,
        width: width ?? theme?.width,
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
                aspectRatio ?? calculatedAspectRatio ?? theme?.aspectRatio,
              ),
              child: CustomPaint(
                painter:
                    backgroundPainter ??
                    StripesPainter(
                      properties,
                      boxDecoration,
                      resolvePainter(_elements, flagAspectRatio),
                    ),
                foregroundPainter:
                    foregroundPainter ??
                    foregroundPainterBuilder?.call(_elements, flagAspectRatio),
                child:
                    child ??
                    foregroundWidgetBuilder?.call(_elements, flagAspectRatio) ??
                    theme?.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
