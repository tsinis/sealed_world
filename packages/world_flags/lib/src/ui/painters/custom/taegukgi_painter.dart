import 'dart:math' as math;

import "package:flutter/material.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class TaegukgiPainter extends CustomElementsPainter {
  const TaegukgiPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKorProperties.aspectRatio;

  static const _radians = -125 * math.pi / 180;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final paint = paintCreator(customColors.last);
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final taegukRadius = height / 2;

    canvas
      ..scale(-1, 1)
      ..translate(-width, 0)
      ..save()
      ..translate(center.dx, center.dy)
      ..rotate(_radians)
      ..translate(-center.dx, -center.dy)
      ..drawArc(
        Rect.fromCircle(center: center, radius: taegukRadius),
        -math.pi / 2,
        math.pi,
        true,
        paint,
      )
      ..drawArc(
        Rect.fromCircle(center: center, radius: taegukRadius),
        math.pi / 2,
        math.pi,
        true,
        paint..color = customColors.first,
      )
      ..drawArc(
        Rect.fromCircle(
          center: center.translate(0, taegukRadius / 2),
          radius: taegukRadius / 2,
        ),
        math.pi / 2,
        math.pi,
        true,
        paint..color = customColors.last,
      )
      ..drawArc(
        Rect.fromCircle(
          center: center.translate(0, -taegukRadius / 2),
          radius: taegukRadius / 2,
        ),
        -math.pi / 2,
        math.pi,
        true,
        paint..color = customColors.first,
      )
      ..restore();

    return parent;
  }
}
