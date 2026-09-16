import "dart:math";
import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the South Korea flag.
final class TaegukgiPainter extends CustomElementsPainter {
  /// Creates a new instance of [TaegukgiPainter].
  const new(super._properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKorProperties.aspectRatio;

  // ignore: avoid-explicit-type-declaration, vs specify_nonobvious_property_types.
  static const double _radians = -123 * pi / 180;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
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

    for (final trigram in _trigrams) {
      _drawTrigram(canvas, size, trigram);
    }

    return null;
  }

  /// The four trigrams, in the corners around the taeguk.
  static const _trigrams = <_Trigram>[
    // Heaven - 3 solid bars.
    (angle: _radians, bars: [false, false, false], left: 0.71, top: 0.29),
    // Earth - 2 broken bars.
    (angle: -_radians, bars: [true, false, true], left: 0.29, top: 0.29),
    // Water - 1 broken bar in the middle.
    (angle: -_radians, bars: [false, true, false], left: 0.8, top: 0.8),
    // Fire - 3 broken bars.
    (angle: _radians, bars: [true, true, true], left: 0.2, top: 0.8),
  ];

  void _drawTrigram(Canvas canvas, Size size, _Trigram trigram) {
    final (:angle, :bars, :left, :top) = trigram;
    final offset = Offset(size.width * left, size.height * top);
    final paint = paintCreator();
    final height = size.height / 25;
    final width = size.width / 6;
    final space = height / 2;
    final half = width / 2;

    canvas
      ..save()
      ..translate(offset.dx, offset.dy)
      ..rotate(angle);

    // ignore: prefer-for-in, need index here.
    for (int i = 0; i < bars.length; i += 1) {
      final isBroken = bars[i];
      final y = (height + space) * i;

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

/// A trigram: which of its three bars are broken, how it is rotated, and where
/// it sits as a fraction of the flag size.
typedef _Trigram = ({double angle, List<bool> bars, double left, double top});
