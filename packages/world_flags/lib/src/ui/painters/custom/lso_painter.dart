import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Lesotho flag.
final class LsoPainter extends CustomElementsPainter {
  /// Creates a new instance of [LsoPainter].
  const LsoPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagLsoProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.5, height * 0.07)
      ..cubicTo(
        width * 0.51,
        height * 0.07,
        width * 0.53,
        height * 0.07,
        width * 0.53,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.1,
        width * 0.64,
        height * 0.15,
        width * 0.65,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.3,
        width * 0.65,
        height * 0.41,
        width * 0.6,
        height * 0.52,
      )
      ..lineTo(width * 0.79, height * 0.81)
      ..lineTo(width * 0.82, height * 0.79)
      ..lineTo(width * 0.89, height * 0.96)
      ..cubicTo(
        width * 0.65,
        height * 1.1,
        width * 0.35,
        height * 1.1,
        width * 0.11,
        height * 0.96,
      )
      ..lineTo(width * 0.18, height * 0.79)
      ..lineTo(width * 0.21, height * 0.81)
      ..lineTo(width * 0.4, height * 0.52)
      ..cubicTo(
        width * 0.36,
        height * 0.43,
        width * 0.34,
        height * 0.33,
        width * 0.35,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.15,
        width * 0.4,
        height * 0.09,
        width * 0.47,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.07,
        width * 0.49,
        height * 0.07,
        width * 0.5,
        height * 0.07,
      )
      ..lineTo(width * 0.5, height * 0.07)
      ..moveTo(width * 0.58, height * 0.48)
      ..cubicTo(
        width * 0.61,
        height * 0.39,
        width * 0.63,
        height * 0.29,
        width * 0.61,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.18,
        width * 0.58,
        height * 0.14,
        width * 0.53,
        height * 0.13,
      )
      ..lineTo(width * 0.53, height * 0.27)
      ..lineTo(width * 0.59, height * 0.34)
      ..lineTo(width * 0.54, height * 0.34)
      ..lineTo(width * 0.54, height * 0.44)
      ..lineTo(width * 0.57, height * 0.48)
      ..lineTo(width * 0.58, height * 0.48)
      ..moveTo(width * 0.47, height * 0.13)
      ..cubicTo(
        width * 0.42,
        height * 0.14,
        width * 0.4,
        height * 0.18,
        width * 0.39,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.29,
        width * 0.39,
        height * 0.39,
        width * 0.42,
        height * 0.48,
      )
      ..lineTo(width * 0.46, height * 0.44)
      ..lineTo(width * 0.46, height * 0.34)
      ..lineTo(width * 0.41, height * 0.34)
      ..lineTo(width * 0.47, height * 0.27)
      ..lineTo(width * 0.47, height * 0.13)
      ..lineTo(width * 0.47, height * 0.13);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
