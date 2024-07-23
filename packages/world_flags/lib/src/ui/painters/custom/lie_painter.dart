import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class LiePainter extends CustomElementsPainter {
  const LiePainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagLieProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.99, height * 0.64)
      ..cubicTo(width * 0.99, height * 0.43, width * 0.78, height * 0.3,
          width * 0.62, height * 0.4)
      ..cubicTo(width * 0.6, height * 0.41, width * 0.59, height * 0.42,
          width * 0.58, height * 0.43)
      ..lineTo(width * 0.58, height * 0.27)
      ..lineTo(width * 0.66, height * 0.27)
      ..lineTo(width * 0.66, height * 0.09)
      ..lineTo(width * 0.58, height * 0.09)
      ..lineTo(width * 0.58, 0)
      ..lineTo(width * 0.41, 0)
      ..lineTo(width * 0.41, height * 0.09)
      ..lineTo(width * 0.33, height * 0.09)
      ..lineTo(width * 0.33, height * 0.27)
      ..lineTo(width * 0.41, height * 0.27)
      ..lineTo(width * 0.41, height * 0.43)
      ..cubicTo(width * 0.27, height * 0.3, width * 0.04, height * 0.39,
          width * 0.01, height * 0.59)
      ..cubicTo(width * -0.01, height * 0.68, width * 0.02, height * 0.78,
          width * 0.08, height * 0.84)
      ..lineTo(width * 0.08, height)
      ..lineTo(width * 0.91, height)
      ..lineTo(width * 0.91, height * 0.84)
      ..cubicTo(width * 0.96, height * 0.79, width * 0.99, height * 0.72,
          width * 0.99, height * 0.64)
      ..lineTo(width * 0.99, height * 0.64)
      ..lineTo(width * 0.99, height * 0.64);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
