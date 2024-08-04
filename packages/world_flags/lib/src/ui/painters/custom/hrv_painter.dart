import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Croatia flag.
final class HrvPainter extends CustomElementsPainter {
  /// Creates a new instance of [HrvPainter].
  const HrvPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagHrvProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.09, height * 0.22)
      ..lineTo(width * 0.09, height * 0.79)
      ..cubicTo(
        width * 0.09,
        height * 1.12,
        width * 0.43,
        height * 1.32,
        width * 0.71,
        height * 1.16,
      )
      ..cubicTo(
        width * 0.84,
        height * 1.08,
        width * 0.92,
        height * 0.94,
        width * 0.92,
        height * 0.79,
      )
      ..lineTo(width * 0.92, height * 0.22)
      ..lineTo(width * 0.09, height * 0.22)
      ..lineTo(width * 0.09, height * 0.22);

    final path2 = Path()
      ..moveTo(width * 0.26, height * 0.72)
      ..lineTo(width * 0.42, height * 0.72)
      ..lineTo(width * 0.42, height * 0.89)
      ..lineTo(width * 0.26, height * 0.89)
      ..lineTo(width * 0.26, height * 0.72)
      ..lineTo(width * 0.26, height * 0.72)
      ..moveTo(width * 0.42, height * 0.89)
      ..lineTo(width * 0.58, height * 0.89)
      ..lineTo(width * 0.58, height * 1.05)
      ..lineTo(width * 0.42, height * 1.05)
      ..lineTo(width * 0.42, height * 0.89)
      ..lineTo(width * 0.42, height * 0.89)
      ..moveTo(width * 0.42, height * 0.56)
      ..lineTo(width * 0.58, height * 0.56)
      ..lineTo(width * 0.58, height * 0.72)
      ..lineTo(width * 0.42, height * 0.72)
      ..lineTo(width * 0.42, height * 0.56)
      ..lineTo(width * 0.42, height * 0.56)
      ..moveTo(width * 0.58, height * 0.72)
      ..lineTo(width * 0.74, height * 0.72)
      ..lineTo(width * 0.74, height * 0.89)
      ..lineTo(width * 0.58, height * 0.89)
      ..lineTo(width * 0.58, height * 0.72)
      ..lineTo(width * 0.58, height * 0.72)
      ..moveTo(width * 0.58, height * 0.4)
      ..lineTo(width * 0.74, height * 0.4)
      ..lineTo(width * 0.74, height * 0.56)
      ..lineTo(width * 0.58, height * 0.56)
      ..lineTo(width * 0.58, height * 0.4)
      ..lineTo(width * 0.58, height * 0.4)
      ..moveTo(width * 0.74, height * 0.56)
      ..lineTo(width * 0.89, height * 0.56)
      ..lineTo(width * 0.89, height * 0.72)
      ..lineTo(width * 0.74, height * 0.72)
      ..lineTo(width * 0.74, height * 0.56)
      ..lineTo(width * 0.74, height * 0.56)
      ..moveTo(width * 0.26, height * 0.4)
      ..lineTo(width * 0.42, height * 0.4)
      ..lineTo(width * 0.42, height * 0.56)
      ..lineTo(width * 0.26, height * 0.56)
      ..lineTo(width * 0.26, height * 0.4)
      ..lineTo(width * 0.26, height * 0.4)
      ..moveTo(width * 0.74, height * 1.05)
      ..lineTo(width * 0.79, height * 1.05)
      ..cubicTo(
        width * 0.83,
        height,
        width * 0.86,
        height * 0.95,
        width * 0.87,
        height * 0.89,
      )
      ..lineTo(width * 0.74, height * 0.89)
      ..lineTo(width * 0.74, height * 1.05)
      ..lineTo(width * 0.74, height * 1.05)
      ..moveTo(width * 0.58, height * 1.05)
      ..lineTo(width * 0.58, height * 1.18)
      ..cubicTo(
        width * 0.64,
        height * 1.16,
        width * 0.69,
        height * 1.14,
        width * 0.74,
        height * 1.1,
      )
      ..lineTo(width * 0.74, height * 1.05)
      ..lineTo(width * 0.58, height * 1.05)
      ..lineTo(width * 0.58, height * 1.05)
      ..moveTo(width * 0.26, height * 1.05)
      ..lineTo(width * 0.26, height * 0.89)
      ..lineTo(width * 0.13, height * 0.89)
      ..cubicTo(
        width * 0.14,
        height * 0.95,
        width * 0.17,
        height,
        width * 0.21,
        height * 1.05,
      )
      ..lineTo(width * 0.26, height * 1.05)
      ..lineTo(width * 0.26, height * 1.05)
      ..moveTo(width * 0.12, height * 0.56)
      ..lineTo(width * 0.26, height * 0.56)
      ..lineTo(width * 0.26, height * 0.72)
      ..lineTo(width * 0.12, height * 0.72)
      ..lineTo(width * 0.12, height * 0.56)
      ..lineTo(width * 0.12, height * 0.56)
      ..moveTo(width * 0.26, height * 1.05)
      ..lineTo(width * 0.26, height * 1.1)
      ..cubicTo(
        width * 0.31,
        height * 1.14,
        width * 0.36,
        height * 1.16,
        width * 0.42,
        height * 1.18,
      )
      ..lineTo(width * 0.42, height * 1.05)
      ..lineTo(width * 0.26, height * 1.05)
      ..lineTo(width * 0.26, height * 1.05);

    final path3 = Path()
      ..moveTo(width * 0.93, height * 0.08)
      ..lineTo(width * 0.8, height * 0.13)
      ..lineTo(width * 0.72, height * 0.02)
      ..lineTo(width * 0.6, height * 0.09)
      ..lineTo(width * 0.5, 0)
      ..lineTo(width * 0.4, height * 0.09)
      ..lineTo(width * 0.28, height * 0.02)
      ..lineTo(width * 0.2, height * 0.13)
      ..lineTo(width * 0.07, height * 0.08)
      ..lineTo(0, height * 0.21)
      ..lineTo(width * 0.09, height * 0.4)
      ..lineTo(width * 0.1, height * 0.4)
      ..cubicTo(
        width * 0.15,
        height * 0.37,
        width * 0.2,
        height * 0.35,
        width * 0.25,
        height * 0.34,
      )
      ..lineTo(width * 0.26, height * 0.34)
      ..cubicTo(
        width * 0.31,
        height * 0.32,
        width * 0.36,
        height * 0.31,
        width * 0.42,
        height * 0.31,
      )
      ..lineTo(width * 0.42, height * 0.31)
      ..cubicTo(
        width * 0.46,
        height * 0.3,
        width * 0.54,
        height * 0.3,
        width * 0.58,
        height * 0.31,
      )
      ..lineTo(width * 0.59, height * 0.31)
      ..cubicTo(
        width * 0.7,
        height * 0.32,
        width * 0.8,
        height * 0.35,
        width * 0.9,
        height * 0.4,
      )
      ..lineTo(width * 0.91, height * 0.4)
      ..lineTo(width, height * 0.21)
      ..lineTo(width * 0.93, height * 0.08)
      ..lineTo(width * 0.93, height * 0.08);

    final path4 = Path()
      ..moveTo(width * 0.42, height * 0.11)
      ..lineTo(width * 0.43, height * 0.28)
      ..cubicTo(
        width * 0.48,
        height * 0.28,
        width * 0.53,
        height * 0.28,
        width * 0.57,
        height * 0.28,
      )
      ..lineTo(width * 0.59, height * 0.11)
      ..lineTo(width * 0.5, height * 0.04)
      ..lineTo(width * 0.42, height * 0.11)
      ..lineTo(width * 0.42, height * 0.11)
      ..moveTo(width * 0.92, height * 0.11)
      ..lineTo(width * 0.81, height * 0.16)
      ..lineTo(width * 0.77, height * 0.32)
      ..cubicTo(
        width * 0.81,
        height * 0.33,
        width * 0.86,
        height * 0.35,
        width * 0.9,
        height * 0.37,
      )
      ..lineTo(width * 0.97, height * 0.21)
      ..lineTo(width * 0.92, height * 0.11)
      ..lineTo(width * 0.92, height * 0.11)
      ..moveTo(width * 0.09, height * 0.11)
      ..lineTo(width * 0.03, height * 0.21)
      ..lineTo(width * 0.1, height * 0.37)
      ..cubicTo(
        width * 0.14,
        height * 0.35,
        width * 0.19,
        height * 0.33,
        width * 0.23,
        height * 0.32,
      )
      ..lineTo(width * 0.19, height * 0.16)
      ..lineTo(width * 0.09, height * 0.11)
      ..lineTo(width * 0.09, height * 0.11);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator()) // Red.
      ..drawPath(path2, paintCreator(customColors.first)) // White.
      ..drawPath(path3, paintCreator(customColors[1])) // Blue.
      ..drawPath(path4, paintCreator(customColors.last)); // Light blue.

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
