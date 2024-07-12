import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class AtaPainter extends CustomElementsPainter {
  const AtaPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagAtaProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.48, height * 0.09)
      ..lineTo(width * 0.48, height * 0.09)
      ..lineTo(width * 0.48, height * 0.11)
      ..cubicTo(
        width * 0.48,
        height * 0.11,
        width * 0.47,
        height * 0.11,
        width * 0.47,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.12,
        width * 0.47,
        height * 0.13,
        width * 0.47,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.11,
        width * 0.46,
        height * 0.11,
        width * 0.45,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.11,
        width * 0.45,
        height * 0.12,
        width * 0.45,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.13,
        width * 0.43,
        height * 0.13,
        width * 0.43,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.15,
        width * 0.42,
        height * 0.17,
        width * 0.41,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.18,
        width * 0.41,
        height * 0.19,
        width * 0.41,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.2,
        width * 0.41,
        height * 0.2,
        width * 0.41,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.22,
        width * 0.4,
        height * 0.22,
        width * 0.4,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.23,
        width * 0.4,
        height * 0.23,
        width * 0.4,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.24,
        width * 0.39,
        height * 0.24,
        width * 0.4,
        height * 0.26,
      )
      ..lineTo(width * 0.39, height * 0.27)
      ..cubicTo(
        width * 0.39,
        height * 0.27,
        width * 0.39,
        height * 0.27,
        width * 0.39,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.29,
        width * 0.39,
        height * 0.31,
        width * 0.39,
        height * 0.32,
      )
      ..lineTo(width * 0.37, height * 0.32)
      ..lineTo(width * 0.38, height * 0.34)
      ..cubicTo(
        width * 0.35,
        height * 0.35,
        width * 0.35,
        height * 0.34,
        width * 0.34,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.35,
        width * 0.33,
        height * 0.36,
        width * 0.32,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.36,
        width * 0.31,
        height * 0.37,
        width * 0.3,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.36,
        width * 0.29,
        height * 0.35,
        width * 0.28,
        height * 0.33,
      )
      ..lineTo(width * 0.25, height * 0.32)
      ..cubicTo(
        width * 0.25,
        height * 0.31,
        width * 0.24,
        height * 0.31,
        width * 0.23,
        height * 0.3,
      )
      ..lineTo(width * 0.21, height * 0.29)
      ..cubicTo(
        width * 0.2,
        height * 0.27,
        width * 0.19,
        height * 0.23,
        width * 0.18,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.27,
        width * 0.19,
        height * 0.31,
        width * 0.2,
        height * 0.33,
      )
      ..lineTo(width * 0.22, height * 0.35)
      ..cubicTo(
        width * 0.22,
        height * 0.36,
        width * 0.22,
        height * 0.36,
        width * 0.23,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.38,
        width * 0.22,
        height * 0.37,
        width * 0.21,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.4,
        width * 0.22,
        height * 0.4,
        width * 0.22,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.41,
        width * 0.23,
        height * 0.41,
        width * 0.23,
        height * 0.41,
      )
      ..lineTo(width * 0.23, height * 0.41)
      ..cubicTo(
        width * 0.23,
        height * 0.41,
        width * 0.23,
        height * 0.4,
        width * 0.24,
        height * 0.4,
      )
      ..lineTo(width * 0.25, height * 0.42)
      ..cubicTo(
        width * 0.25,
        height * 0.42,
        width * 0.25,
        height * 0.43,
        width * 0.25,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.44,
        width * 0.25,
        height * 0.45,
        width * 0.25,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.45,
        width * 0.26,
        height * 0.44,
        width * 0.26,
        height * 0.44,
      )
      ..lineTo(width * 0.26, height * 0.44)
      ..cubicTo(
        width * 0.26,
        height * 0.45,
        width * 0.26,
        height * 0.45,
        width * 0.27,
        height * 0.47,
      )
      ..lineTo(width * 0.26, height * 0.47)
      ..cubicTo(
        width * 0.26,
        height * 0.48,
        width * 0.25,
        height * 0.5,
        width * 0.25,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.51,
        width * 0.25,
        height * 0.54,
        width * 0.25,
        height * 0.55,
      )
      ..lineTo(width * 0.23, height * 0.55)
      ..cubicTo(
        width * 0.23,
        height * 0.58,
        width * 0.24,
        height * 0.59,
        width * 0.26,
        height * 0.6,
      )
      ..lineTo(width * 0.26, height * 0.58)
      ..lineTo(width * 0.26, height * 0.6)
      ..cubicTo(
        width * 0.29,
        height * 0.61,
        width * 0.26,
        height * 0.61,
        width * 0.27,
        height * 0.63,
      )
      ..lineTo(width * 0.28, height * 0.63)
      ..cubicTo(
        width * 0.29,
        height * 0.67,
        width * 0.29,
        height * 0.65,
        width * 0.29,
        height * 0.7,
      )
      ..lineTo(width * 0.3, height * 0.7)
      ..lineTo(width * 0.3, height * 0.72)
      ..cubicTo(
        width * 0.33,
        height * 0.71,
        width * 0.32,
        height * 0.73,
        width * 0.34,
        height * 0.74,
      )
      ..lineTo(width * 0.35, height * 0.75)
      ..lineTo(width * 0.38, height * 0.76)
      ..lineTo(width * 0.38, height * 0.76)
      ..lineTo(width * 0.41, height * 0.76)
      ..cubicTo(
        width * 0.42,
        height * 0.76,
        width * 0.42,
        height * 0.75,
        width * 0.43,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.75,
        width * 0.44,
        height * 0.76,
        width * 0.44,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.76,
        width * 0.46,
        height * 0.75,
        width * 0.47,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.75,
        width * 0.5,
        height * 0.78,
        width * 0.52,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.77,
        width * 0.53,
        height * 0.75,
        width * 0.53,
        height * 0.76,
      )
      ..lineTo(width * 0.54, height * 0.79)
      ..cubicTo(
        width * 0.55,
        height * 0.8,
        width * 0.55,
        height * 0.81,
        width * 0.54,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.83,
        width * 0.55,
        height * 0.83,
        width * 0.53,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.85,
        width * 0.53,
        height * 0.86,
        width * 0.53,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.87,
        width * 0.52,
        height * 0.87,
        width * 0.52,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.89,
        width * 0.54,
        height * 0.88,
        width * 0.54,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.91,
        width * 0.54,
        height * 0.9,
        width * 0.55,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.9,
        width * 0.55,
        height * 0.9,
        width * 0.56,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.9,
        width * 0.56,
        height * 0.9,
        width * 0.57,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.88,
        width * 0.58,
        height * 0.92,
        width * 0.6,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.91,
        width * 0.61,
        height * 0.91,
        width * 0.61,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.91,
        width * 0.62,
        height * 0.9,
        width * 0.62,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.9,
        width * 0.63,
        height * 0.9,
        width * 0.63,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.9,
        width * 0.64,
        height * 0.89,
        width * 0.64,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.89,
        width * 0.64,
        height * 0.9,
        width * 0.64,
        height * 0.9,
      )
      ..lineTo(width * 0.65, height * 0.9)
      ..lineTo(width * 0.66, height * 0.89)
      ..lineTo(width * 0.66, height * 0.91)
      ..lineTo(width * 0.67, height * 0.89)
      ..cubicTo(
        width * 0.67,
        height * 0.89,
        width * 0.67,
        height * 0.88,
        width * 0.68,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.88,
        width * 0.69,
        height * 0.88,
        width * 0.69,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.86,
        width * 0.71,
        height * 0.86,
        width * 0.71,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.86,
        width * 0.72,
        height * 0.86,
        width * 0.72,
        height * 0.87,
      )
      ..lineTo(width * 0.71, height * 0.86)
      ..cubicTo(
        width * 0.71,
        height * 0.86,
        width * 0.72,
        height * 0.83,
        width * 0.73,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.83,
        width * 0.72,
        height * 0.81,
        width * 0.72,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.8,
        width * 0.75,
        height * 0.79,
        width * 0.75,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.78,
        width * 0.75,
        height * 0.78,
        width * 0.75,
        height * 0.77,
      )
      ..lineTo(width * 0.76, height * 0.77)
      ..cubicTo(
        width * 0.75,
        height * 0.75,
        width * 0.76,
        height * 0.75,
        width * 0.76,
        height * 0.73,
      )
      ..lineTo(width * 0.77, height * 0.73)
      ..cubicTo(
        width * 0.77,
        height * 0.72,
        width * 0.77,
        height * 0.72,
        width * 0.78,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.69,
        width * 0.78,
        height * 0.69,
        width * 0.78,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.67,
        width * 0.79,
        height * 0.63,
        width * 0.81,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.58,
        width * 0.81,
        height * 0.6,
        width * 0.81,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.56,
        width * 0.8,
        height * 0.55,
        width * 0.8,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.53,
        width * 0.79,
        height * 0.52,
        width * 0.81,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.48,
        width * 0.8,
        height * 0.48,
        width * 0.81,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.46,
        width * 0.79,
        height * 0.44,
        width * 0.75,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.41,
        width * 0.77,
        height * 0.39,
        width * 0.76,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.37,
        width * 0.76,
        height * 0.37,
        width * 0.76,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.35,
        width * 0.76,
        height * 0.33,
        width * 0.76,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.3,
        width * 0.75,
        height * 0.29,
        width * 0.75,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.26,
        width * 0.75,
        height * 0.24,
        width * 0.75,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.23,
        width * 0.74,
        height * 0.22,
        width * 0.74,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.22,
        width * 0.73,
        height * 0.22,
        width * 0.72,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.22,
        width * 0.72,
        height * 0.22,
        width * 0.72,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.22,
        width * 0.71,
        height * 0.21,
        width * 0.71,
        height * 0.2,
      )
      ..lineTo(width * 0.68, height * 0.19)
      ..lineTo(width * 0.67, height * 0.19)
      ..lineTo(width * 0.66, height * 0.2)
      ..lineTo(width * 0.66, height * 0.2)
      ..cubicTo(
        width * 0.66,
        height * 0.19,
        width * 0.65,
        height * 0.17,
        width * 0.65,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.16,
        width * 0.65,
        height * 0.16,
        width * 0.64,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.16,
        width * 0.63,
        height * 0.15,
        width * 0.63,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.15,
        width * 0.59,
        height * 0.17,
        width * 0.59,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.13,
        width * 0.58,
        height * 0.14,
        width * 0.57,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.11,
        width * 0.56,
        height * 0.12,
        width * 0.56,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.11,
        width * 0.54,
        height * 0.12,
        width * 0.54,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.11,
        width * 0.5,
        height * 0.11,
        width * 0.49,
        height * 0.1,
      )
      ..lineTo(width * 0.48, height * 0.09)
      ..lineTo(width * 0.48, height * 0.09)
      ..moveTo(width * 0.18, height * 0.27)
      ..cubicTo(
        width * 0.18,
        height * 0.27,
        width * 0.18,
        height * 0.27,
        width * 0.18,
        height * 0.28,
      )
      ..lineTo(width * 0.18, height * 0.27)
      ..lineTo(width * 0.18, height * 0.27)
      ..moveTo(width * 0.18, height * 0.29)
      ..cubicTo(
        width * 0.18,
        height * 0.29,
        width * 0.18,
        height * 0.29,
        width * 0.18,
        height * 0.29,
      )
      ..lineTo(width * 0.18, height * 0.29)
      ..lineTo(width * 0.18, height * 0.29)
      ..moveTo(width * 0.2, height * 0.35)
      ..lineTo(width * 0.2, height * 0.35)
      ..lineTo(width * 0.2, height * 0.35)
      ..lineTo(width * 0.2, height * 0.35)
      ..moveTo(width * 0.82, height * 0.59)
      ..lineTo(width * 0.82, height * 0.6)
      ..cubicTo(
        width * 0.82,
        height * 0.59,
        width * 0.82,
        height * 0.59,
        width * 0.82,
        height * 0.59,
      )
      ..lineTo(width * 0.82, height * 0.59);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
