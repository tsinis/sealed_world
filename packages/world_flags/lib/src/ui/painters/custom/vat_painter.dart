import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class VatPainter extends CustomElementsPainter {
  const VatPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagVatProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.33, height * 0.3)
      ..lineTo(width * 0.62, height * 0.69)
      ..cubicTo(
        width * 0.54,
        height * 0.82,
        width * 0.62,
        height * 0.99,
        width * 0.78,
        height,
      )
      ..cubicTo(
        width * 0.94,
        height * 1.01,
        width * 1.04,
        height * 0.85,
        width * 0.97,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.62,
        width * 0.83,
        height * 0.58,
        width * 0.73,
        height * 0.61,
      )
      ..lineTo(width * 0.27, 0)
      ..lineTo(width * 0.17, height * 0.09)
      ..lineTo(0, height * 0.21)
      ..lineTo(width * 0.17, height * 0.42)
      ..lineTo(width * 0.33, height * 0.3)
      ..lineTo(width * 0.33, height * 0.3)
      ..lineTo(width * 0.33, height * 0.3)
      ..moveTo(width * 0.75, height * 0.75)
      ..cubicTo(
        width * 0.79,
        height * 0.72,
        width * 0.85,
        height * 0.74,
        width * 0.86,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.82,
        width * 0.85,
        height * 0.84,
        width * 0.83,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.89,
        width * 0.73,
        height * 0.86,
        width * 0.73,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.79,
        width * 0.73,
        height * 0.76,
        width * 0.75,
        height * 0.75,
      )
      ..lineTo(width * 0.75, height * 0.75);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator(customColors.first))
      ..scale(-1, 1)
      ..translate(-bounds.width, 0)
      ..drawPath(path, paintCreator());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
