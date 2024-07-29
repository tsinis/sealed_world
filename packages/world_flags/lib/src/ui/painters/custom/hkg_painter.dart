import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Hong Kong flag.
final class HkgPainter extends CustomElementsPainter {
  /// Creates a new instance of [HkgPainter].
  const HkgPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagHkgProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.48, height * 0.34)
      ..cubicTo(
        width * 0.56,
        height * 0.27,
        width * 0.57,
        height * 0.25,
        width * 0.59,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.17,
        width * 0.59,
        height * 0.15,
        width * 0.58,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.1,
        width * 0.57,
        height * 0.07,
        width * 0.59,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.5,
        height * -0.02,
        width * 0.39,
        height * 0.05,
        width * 0.35,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.3,
        width * 0.35,
        height * 0.42,
        width * 0.44,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.45,
        width * 0.46,
        height * 0.45,
        width * 0.45,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.42,
        width * 0.43,
        height * 0.38,
        width * 0.48,
        height * 0.34,
      )
      ..lineTo(width * 0.48, height * 0.34)
      ..moveTo(width * 0.31, height * 0.47)
      ..cubicTo(
        width * 0.27,
        height * 0.37,
        width * 0.25,
        height * 0.36,
        width * 0.2,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.3,
        width * 0.17,
        height * 0.3,
        width * 0.15,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.12,
        height * 0.3,
        width * 0.08,
        height * 0.3,
        width * 0.03,
        height * 0.26,
      )
      ..cubicTo(
        width * -0.03,
        height * 0.34,
        width * 0.01,
        height * 0.46,
        width * 0.11,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.61,
        width * 0.34,
        height * 0.61,
        width * 0.4,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.52,
        width * 0.41,
        height * 0.52,
        width * 0.39,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.53,
        width * 0.33,
        height * 0.53,
        width * 0.31,
        height * 0.47,
      )
      ..lineTo(width * 0.31, height * 0.47)
      ..moveTo(width * 0.83, height * 0.52)
      ..cubicTo(
        width * 0.76,
        height * 0.52,
        width * 0.74,
        height * 0.52,
        width * 0.65,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.43,
        width * 0.56,
        height * 0.46,
        width * 0.55,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.48,
        width * 0.54,
        height * 0.48,
        width * 0.54,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.37,
        width * 0.64,
        height * 0.29,
        width * 0.77,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.29,
        width,
        height * 0.37,
        width,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.46,
        width * 0.9,
        height * 0.48,
        width * 0.88,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.51,
        width * 0.85,
        height * 0.52,
        width * 0.83,
        height * 0.52,
      )
      ..lineTo(width * 0.83, height * 0.52)
      ..moveTo(width * 0.59, height * 0.67)
      ..cubicTo(
        width * 0.56,
        height * 0.78,
        width * 0.57,
        height * 0.79,
        width * 0.59,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.87,
        width * 0.61,
        height * 0.88,
        width * 0.62,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.92,
        width * 0.68,
        height * 0.94,
        width * 0.7,
        height,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.97,
        width * 0.83,
        height * 0.85,
        width * 0.79,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.6,
        width * 0.64,
        height * 0.53,
        width * 0.55,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.56,
        width * 0.54,
        height * 0.57,
        width * 0.55,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.58,
        width * 0.61,
        height * 0.6,
        width * 0.59,
        height * 0.67,
      )
      ..lineTo(width * 0.59, height * 0.67)
      ..moveTo(width * 0.37, height * 0.67)
      ..cubicTo(
        width * 0.27,
        height * 0.68,
        width * 0.25,
        height * 0.69,
        width * 0.2,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.74,
        width * 0.18,
        height * 0.76,
        width * 0.17,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.8,
        width * 0.15,
        height * 0.84,
        width * 0.1,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.95,
        width * 0.28,
        height * 0.96,
        width * 0.38,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.8,
        width * 0.52,
        height * 0.68,
        width * 0.47,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.59,
        width * 0.46,
        height * 0.59,
        width * 0.45,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.62,
        width * 0.44,
        height * 0.67,
        width * 0.37,
        height * 0.67,
      )
      ..lineTo(width * 0.37, height * 0.67);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
