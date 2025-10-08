import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the U.S. Virgin Islands flag.
final class VirPainter extends CustomElementsPainter {
  /// Creates a new instance of [VirPainter].
  const VirPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagVirProperties.aspectRatio;

  static Path _createVPath(double height) {
    final path = Path();
    final letterHeight = height * 0.25;
    final letterWidth = letterHeight * 0.8;

    path
      ..moveTo(0, 0)
      ..lineTo(letterWidth / 2, letterHeight)
      ..lineTo(letterWidth, 0);

    return path;
  }

  static Path _createIPath(double height) {
    final path = Path();
    final letterHeight = height * 0.25;
    final letterWidth = letterHeight * 0.15;
    final midPoint = letterWidth / 2;

    path
      ..moveTo(0, 0)
      ..lineTo(letterWidth, 0)
      ..moveTo(midPoint, 0)
      ..lineTo(midPoint, letterHeight)
      ..moveTo(0, letterHeight)
      ..lineTo(letterWidth, letterHeight);

    return path;
  }

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final letterHeight = height / 8;
    final vPath = _createVPath(height);
    final iPath = _createIPath(height);
    final paint = paintCreator(customColors.last)
      ..style = PaintingStyle.stroke
      ..strokeWidth = letterHeight / 3
      ..strokeCap = StrokeCap.square;
    final vPaint = paint..strokeJoin = StrokeJoin.bevel;

    canvas
      ..save()
      ..translate(width * 0.1, center.dy - letterHeight)
      ..drawPath(vPath, vPaint)
      ..restore()
      ..save()
      ..translate(width * 1.5, center.dy - letterHeight)
      ..drawPath(iPath, paint)
      ..restore();

    return SimpleBirdPainter.mda(properties, aspectRatio).paint(canvas, size);
  }
}
