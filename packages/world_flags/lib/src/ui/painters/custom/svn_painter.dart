import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Slovenia flag.
final class SvnPainter extends CustomElementsPainter {
  /// Creates a new instance of [SvnPainter].
  const SvnPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagSvnProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.08, height * 0.18)
      ..cubicTo(
        width * 0.33,
        height * 0.07,
        width * 0.61,
        height * 0.07,
        width * 0.86,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.71,
        width * 0.77,
        height * 1.02,
        width * 0.47,
        height * 1.1,
      )
      ..cubicTo(
        width * 0.16,
        height * 1.01,
        width * 0.04,
        height * 0.7,
        width * 0.08,
        height * 0.17,
      )
      ..lineTo(width * 0.08, height * 0.18);

    final path2 = Path()
      ..moveTo(width * 0.48, height * 0.41)
      ..lineTo(width * 0.56, height * 0.59)
      ..lineTo(width * 0.64, height * 0.51)
      ..lineTo(width * 0.79, height * 0.71)
      ..lineTo(width * 0.79, height * 0.73)
      ..cubicTo(
        width * 0.74,
        height * 0.87,
        width * 0.63,
        height * 0.99,
        width * 0.48,
        height * 1.04,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.99,
        width * 0.21,
        height * 0.87,
        width * 0.16,
        height * 0.73,
      )
      ..lineTo(width * 0.16, height * 0.71)
      ..lineTo(width * 0.31, height * 0.51)
      ..lineTo(width * 0.38, height * 0.59)
      ..lineTo(width * 0.48, height * 0.41)
      ..lineTo(width * 0.48, height * 0.41);

    final path3 = Path()
      ..moveTo(width * 0.05, height * 0.19)
      ..lineTo(width * 0.08, height * 0.18)
      ..lineTo(width * 0.11, height * 0.64)
      ..cubicTo(
        width * 0.12,
        height * 0.84,
        width * 0.27,
        height * 1.01,
        width * 0.48,
        height * 1.07,
      )
      ..cubicTo(
        width * 0.68,
        height * 1.01,
        width * 0.83,
        height * 0.85,
        width * 0.84,
        height * 0.64,
      )
      ..lineTo(width * 0.86, height * 0.18)
      ..lineTo(width * 0.9, height * 0.18)
      ..lineTo(width * 0.86, height * 0.64)
      ..cubicTo(
        width * 0.85,
        height * 0.85,
        width * 0.7,
        height * 1.03,
        width * 0.47,
        height * 1.1,
      )
      ..cubicTo(
        width * 0.25,
        height * 1.04,
        width * 0.1,
        height * 0.86,
        width * 0.08,
        height * 0.64,
      )
      ..lineTo(width * 0.05, height * 0.18)
      ..lineTo(width * 0.05, height * 0.19);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator(customColors.first)) // Blue.
      ..drawPath(path2, paintCreator(customColors.last)) // White.
      ..drawPath(path3, paintCreator()); // Red.

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
