import "dart:math";
import "dart:ui" show Canvas, Color, Size;

import "package:flutter/foundation.dart";

import "../../../model/elements/custom_elements_properties.dart";
import "../../../model/typedefs.dart";
import "elements_painter.dart";

abstract base class CustomElementsPainter<T extends FlagParentBounds>
    extends ElementsPainter {
  const CustomElementsPainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => null;

  @protected
  CustomElementsProperties get customProperties =>
      properties.whereType<CustomElementsProperties>().first;

  @protected
  List<Color> get customColors => customProperties.otherColors;

  @override
  @optionalTypeArgs
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    T? parent,
    List<Color>? otherColors, // TODO! Remove.
  ]) =>
      null;

  @protected
  Size ratioAdjustedSize(Size childSize, {T? parent, double minRatio = 1.1}) {
    final size = parent?.bounds.size ?? childSize;
    final originalRatio = originalAspectRatio;
    if (originalRatio == null) return size;
    final currentAspectRatio = calculateAspectRatio(size);
    final adjustedRatio = min(minRatio, currentAspectRatio / originalRatio);
    final heightFactor = parent?.child?.heightFactor ?? property.heightFactor;
    final height = size.height * heightFactor * adjustedRatio;
    final width = size.width * (property.widthFactor ?? 1);

    return Size(width, height);
  }
}
