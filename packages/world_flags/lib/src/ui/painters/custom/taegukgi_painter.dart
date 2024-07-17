import 'dart:math';
import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class TaegukgiPainter extends CustomElementsPainter {
  const TaegukgiPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKorProperties.aspectRatio;

  static const _radians = -123 * pi / 180;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
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
        -pi / 2,
        pi,
        true,
        paint,
      )
      ..drawArc(
        Rect.fromCircle(center: center, radius: taegukRadius),
        pi / 2,
        pi,
        true,
        paint..color = customColors.first,
      )
      ..drawArc(
        Rect.fromCircle(
          center: center.translate(0, taegukRadius / 2),
          radius: taegukRadius / 2,
        ),
        pi / 2,
        pi,
        true,
        paint..color = customColors.last,
      )
      ..drawArc(
        Rect.fromCircle(
          center: center.translate(0, -taegukRadius / 2),
          radius: taegukRadius / 2,
        ),
        -pi / 2,
        pi,
        true,
        paint..color = customColors.first,
      )
      ..restore();

    _drawTrigram(
      canvas, size,
      Offset(size.width * 0.71, size.height * 0.29),
      [false, false, false], // Heaven - ☰ (3 solid bars).
      _radians,
    );

    _drawTrigram(
      canvas, size,
      Offset(size.width * 0.29, size.height * 0.29),
      [true, false, true], // Earth - ☷ (2 broken bars).
      -_radians,
    );

    _drawTrigram(
      canvas, size,
      Offset(size.width * 0.8, size.height * 0.8),
      [false, true, false], // Water - ☵ (1 broken bar in the middle).
      -_radians,
    );

    _drawTrigram(
      canvas, size,
      Offset(size.width * 0.2, size.height * 0.8),
      [true, true, true], // Fire - ☲ (3 broken bars).
      _radians,
    );

    return parent;
  }

  // ignore: long-parameter-list, TODO: Refactor later.
  void _drawTrigram(
    Canvas canvas,
    Size size,
    Offset offset,
    List<bool> brokenBars,
    double angle,
  ) {
    final paint = paintCreator();
    final height = size.height / 25;
    final width = size.width / 6;
    final space = height / 2;

    canvas
      ..save()
      ..translate(offset.dx, offset.dy)
      ..rotate(angle);

    for (int i = 0; i < brokenBars.length; i++) {
      final isBroken = brokenBars.length > i && brokenBars[i];
      final y = (height + space) * i;
      final half = width / 2;

      if (isBroken) {
        canvas
          ..drawRect(
            Rect.fromLTWH(-half + space / 6, y, half - space / 3, height),
            paint,
          )
          ..drawRect(
            Rect.fromLTWH(space / 2, y, half - space / 3, height),
            paint,
          );
      } else {
        canvas.drawRect(Rect.fromLTWH(-half, y, width, height), paint);
      }
    }

    canvas.restore();
  }
}
