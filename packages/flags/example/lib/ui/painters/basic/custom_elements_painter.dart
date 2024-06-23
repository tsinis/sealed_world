import "dart:math";
import "dart:ui" show Canvas, Size;

import "package:flutter/foundation.dart";

import "../../../model/typedefs.dart";
import "elements_painter.dart";

abstract base class CustomElementsPainter<T extends FlagParentBounds>
    extends ElementsPainter {
  const CustomElementsPainter(super.properties, super.aspectRatio);

  @protected
  double? get originalAspectRatio => null;

  @override
  @optionalTypeArgs
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size, [T? parent]) =>
      null;

  @protected
  Size ratioAdjustedSize(Size size, {double minRatio = 1.1}) {
    final originalRatio = originalAspectRatio;
    if (originalRatio == null) return size;
    final currentAspectRatio = calculateAspectRatio(size);
    final adjustedRatio = min(minRatio, currentAspectRatio / originalRatio);
    final height = size.height * property.heightFactor * adjustedRatio;
    final width = size.width * (property.widthFactor ?? 1);

    return Size(width, height);
  }
}
