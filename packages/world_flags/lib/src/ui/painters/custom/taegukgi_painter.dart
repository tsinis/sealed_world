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

    final disc = Rect.fromCircle(center: center, radius: taegukRadius);
    final lower = Rect.fromCircle(
      center: center.translate(0, taegukRadius / 2),
      radius: taegukRadius / 2,
    );
    final upper = Rect.fromCircle(
      center: center.translate(0, -taegukRadius / 2),
      radius: taegukRadius / 2,
    );

    // One closed contour for the whole yang half: down the right of the disc,
    // out around the lower lobe and back in around the upper one. Built from
    // four anti-aliased half-discs instead, the two edges that meet on the
    // vertical diameter each covered about half of its pixels, which left a
    // seam straight across the taeguk. One path per colour has no seam to
    // leave, and costs two draw calls rather than four.
    final yang = Path()
      ..arcTo(disc, -pi / 2, pi, true)
      ..arcTo(lower, pi / 2, pi, false)
      ..arcTo(upper, pi / 2, -pi, false)
      ..close();

    canvas
      ..scale(-1, 1)
      ..translate(-width, 0)
      ..save()
      ..translate(center.dx, center.dy)
      ..rotate(_radians)
      ..translate(-center.dx, -center.dy)
      ..drawOval(disc, paint..color = customColors.first)
      ..drawPath(yang, paint..color = customColors.last)
      ..restore();

    // All twelve bars share one colour and never overlap, so the four
    // trigrams are filled as a single path: one draw call instead of eighteen.
    final trigrams = Path();
    for (final trigram in _trigrams) {
      _addTrigram(trigrams, size, trigram);
    }
    canvas.drawPath(trigrams, paintCreator());

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

  /// Adds one trigram's bars to [path], turned into place by hand.
  ///
  /// The bars were drawn under a rotated canvas before; rotating the four
  /// corners instead keeps the same geometry without a transform per trigram.
  static void _addTrigram(Path path, Size size, _Trigram trigram) {
    final (:angle, :bars, :left, :top) = trigram;
    final origin = Offset(size.width * left, size.height * top);
    final cosine = cos(angle);
    final sine = sin(angle);
    final height = size.height / 25;
    final width = size.width / 6;
    final space = height / 2;
    final half = width / 2;

    // ignore: prefer-for-in, need index here.
    for (int i = 0; i < bars.length; i += 1) {
      final y = (height + space) * i;
      if (bars[i]) {
        _addBar(
          path,
          Rect.fromLTWH(-half + space / 6, y, half - space / 3, height),
          origin,
          cosine,
          sine,
        );
        _addBar(
          path,
          Rect.fromLTWH(space / 2, y, half - space / 3, height),
          origin,
          cosine,
          sine,
        );

        continue;
      }
      _addBar(
        path,
        Rect.fromLTWH(-half, y, width, height),
        origin,
        cosine,
        sine,
      );
    }
  }

  /// Adds [rect], turned by `cosine`/`sine` about [origin], as one contour.
  static void _addBar(
    Path path,
    Rect rect,
    Offset origin,
    double cosine,
    double sine,
  ) {
    final Rect(:bottomLeft, :bottomRight, :topLeft, :topRight) = rect;
    bool isFirst = true;
    for (final corner in <Offset>[topLeft, topRight, bottomRight, bottomLeft]) {
      final x = origin.dx + corner.dx * cosine - corner.dy * sine;
      final y = origin.dy + corner.dx * sine + corner.dy * cosine;
      isFirst ? path.moveTo(x, y) : path.lineTo(x, y);
      isFirst = false;
    }
    path.close();
  }
}

typedef _Trigram = ({double angle, List<bool> bars, double left, double top});
