import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the Sri Lanka flag.
final class LkaPainter extends CustomElementsPainter {
  /// Creates a new instance of [LkaPainter].
  const LkaPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagLkaProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    MultiElementPainter(
      List.unmodifiable(properties.skip(1)),
      aspectRatio, // ignore: unnecessary-trailing-comma, new dart format.
    ).paint(canvas, size);

    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.93, height * 0.19)
      ..cubicTo(
        width * 0.92,
        height * 0.16,
        width * 0.88,
        height * 0.18,
        width * 0.89,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.03,
        width * 0.48,
        height * -0.01,
        width * 0.58,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.36,
        width * 0.59,
        height * 0.31,
        width * 0.61,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.35,
        width * 0.99,
        height * 0.27,
        width * 0.82,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.41,
        width * 0.56,
        height * 0.49,
        width * 0.54,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.4,
        width * 0.55,
        height * 0.36,
        width * 0.54,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.34,
        width * 0.56,
        height * 0.18,
        width * 0.54,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.15,
        width * 0.57,
        height * 0.12,
        width * 0.57,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.18,
        width * 0.49,
        height * 0.04,
        width * 0.47,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.09,
        width * 0.42,
        height * 0.07,
        width * 0.42,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.1,
        width * 0.37,
        height * 0.1,
        width * 0.35,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.17,
        width * 0.29,
        height * 0.15,
        width * 0.27,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.03,
        width * 0.21,
        height * 0.27,
        width * 0.29,
        height * 0.3,
      )
      ..lineTo(width * 0.29, height * 0.28)
      ..cubicTo(
        width * 0.3,
        height * 0.29,
        width * 0.31,
        height * 0.3,
        width * 0.31,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.28,
        width * 0.33,
        height * 0.3,
        width * 0.33,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.33,
        width * 0.18,
        height * 0.22,
        width * 0.23,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.32,
        width * 0.22,
        height * 0.37,
        width * 0.21,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.38,
        width * 0.24,
        height * 0.38,
        width * 0.25,
        height * 0.37,
      )
      ..lineTo(width * 0.24, height * 0.4)
      ..cubicTo(
        width * 0.25,
        height * 0.4,
        width * 0.27,
        height * 0.39,
        width * 0.28,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.4,
        width * 0.3,
        height * 0.42,
        width * 0.3,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.45,
        width * 0.33,
        height * 0.39,
        width * 0.34,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.46,
        width * 0.22,
        height * 0.54,
        width * 0.24,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.63,
        width * 0.19,
        height * 0.58,
        width * 0.17,
        height * 0.56,
      )
      ..lineTo(width * 0.18, height * 0.56)
      ..lineTo(width * 0.18, height * 0.56)
      ..cubicTo(
        width * 0.2,
        height * 0.54,
        width * 0.19,
        height * 0.48,
        width * 0.16,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.22,
        height * -0.22,
        width * 0.09,
        height * -0.04,
        width * 0.1,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.48,
        width * 0.06,
        height * 0.57,
        width * 0.1,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.57,
        width * 0.1,
        height * 0.58,
        width * 0.1,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.59,
        width * 0.09,
        height * 0.62,
        width * 0.1,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.63,
        width * 0.1,
        height * 0.65,
        width * 0.1,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.66,
        width * 0.1,
        height * 0.68,
        width * 0.11,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.11,
        height * 0.68,
        width * 0.11,
        height * 0.69,
        width * 0.11,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.67,
        width * 0.07,
        height * 0.73,
        width * 0.11,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.75,
        width * 0.12,
        height * 0.78,
        width * 0.1,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.07,
        height * 0.76,
        width * 0.07,
        height * 0.85,
        width * 0.1,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.85,
        width * 0.08,
        height * 0.86,
        width * 0.08,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.11,
        height * 0.86,
        width * 0.11,
        height * 0.91,
        width * 0.13,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.87,
        width * 0.15,
        height * 0.87,
        width * 0.17,
        height * 0.87,
      )
      ..lineTo(width * 0.15, height * 0.84)
      ..cubicTo(
        width * 0.18,
        height * 0.85,
        width * 0.18,
        height * 0.76,
        width * 0.15,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.78,
        width * 0.16,
        height * 0.75,
        width * 0.14,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.74,
        width * 0.17,
        height * 0.68,
        width * 0.14,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.68,
        width * 0.15,
        height * 0.7,
        width * 0.16,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.69,
        width * 0.16,
        height * 0.78,
        width * 0.19,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.73,
        width * 0.25,
        height * 0.89,
        width * 0.3,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.79,
        width * 0.4,
        height * 0.96,
        width * 0.32,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.93,
        width * 0.25,
        height * 1.05,
        width * 0.3,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.31,
        height * 1.03,
        width * 0.33,
        height * 1.01,
        width * 0.34,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.36,
        height * 1.02,
        width * 0.4,
        height * 1.03,
        width * 0.42,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.92,
        width * 0.45,
        height * 0.95,
        width * 0.47,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.82,
        width * 0.59,
        height * 0.7,
        width * 0.63,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.78,
        width * 0.72,
        height * 0.86,
        width * 0.68,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.97,
        width * 0.63,
        height * 0.96,
        width * 0.63,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.99,
        width * 0.61,
        height * 1.04,
        width * 0.64,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.65,
        height * 1.01,
        width * 0.67,
        height * 1.04,
        width * 0.68,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.69,
        height * 1.03,
        width * 0.71,
        height * 1.03,
        width * 0.72,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.73,
        height * 1.02,
        width * 0.74,
        height * 1.03,
        width * 0.75,
        height * 1.02,
      )
      ..cubicTo(
        width * 0.76,
        height * 1.03,
        width * 0.77,
        height * 1.02,
        width * 0.78,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.78,
        height * 1.03,
        width * 0.8,
        height * 1.03,
        width * 0.81,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.82,
        height * 1.01,
        width * 0.84,
        height * 1.04,
        width * 0.85,
        height * 1.01,
      )
      ..cubicTo(
        width * 0.91,
        height * 1.05,
        width * 0.88,
        height * 0.98,
        width * 0.87,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.87,
        height * 0.91,
        width * 0.94,
        height * 0.87,
        width * 0.9,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.76,
        width * 0.97,
        height * 0.54,
        width * 0.88,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.29,
        width * 0.81,
        height * 0.24,
        width * 0.72,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.3,
        width * 0.68,
        height * 0.2,
        width * 0.64,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.23,
        width * 0.65,
        height * 0.21,
        width * 0.67,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.18,
        width * 0.62,
        height * 0.18,
        width * 0.61,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.1,
        width * 0.67,
        height * 0.2,
        width * 0.65,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.13,
        width * 0.69,
        height * 0.19,
        width * 0.67,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.22,
        width * 0.74,
        height * 0.19,
        width * 0.72,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.15,
        width * 0.74,
        height * 0.19,
        width * 0.73,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.24,
        width * 0.77,
        height * 0.21,
        width * 0.77,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.23,
        width * 0.84,
        height * 0.25,
        width * 0.81,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.23,
        width * 0.95,
        height * 0.31,
        width * 0.93,
        height * 0.19,
      )
      ..lineTo(width * 0.93, height * 0.19)
      ..moveTo(width * 0.77, height * 0.9)
      ..cubicTo(
        width * 0.79,
        height * 0.87,
        width * 0.78,
        height * 0.85,
        width * 0.75,
        height * 0.85,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.73,
        width * 0.9,
        height * 0.94,
        width * 0.76,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.95,
        width * 0.74,
        height * 0.94,
        width * 0.77,
        height * 0.9,
      )
      ..lineTo(width * 0.77, height * 0.9);

    final bounds = path.getBounds();
    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
