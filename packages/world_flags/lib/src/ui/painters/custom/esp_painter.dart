import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class EspPainter extends CustomElementsPainter {
  const EspPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagEspProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.22);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.14, height * 1.12)
      ..lineTo(width * 0.06, height * 1.12)
      ..lineTo(width * 0.06, height * 0.5)
      ..lineTo(width * 0.14, height * 0.5)
      ..lineTo(width * 0.14, height * 1.12)
      ..lineTo(width * 0.14, height * 1.12)
      ..moveTo(width * 0.86, height * 1.12)
      ..lineTo(width * 0.94, height * 1.12)
      ..lineTo(width * 0.94, height * 0.5)
      ..lineTo(width * 0.86, height * 0.5)
      ..lineTo(width * 0.86, height * 1.12)
      ..lineTo(width * 0.86, height * 1.12)
      ..moveTo(width * 0.5, height * 1.31)
      ..cubicTo(
        width * 0.65,
        height * 1.31,
        width * 0.77,
        height * 1.2,
        width * 0.77,
        height * 1.06,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.92,
        width * 0.65,
        height * 0.81,
        width * 0.5,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.81,
        width * 0.23,
        height * 0.92,
        width * 0.23,
        height * 1.06,
      )
      ..cubicTo(
        width * 0.23,
        height * 1.2,
        width * 0.35,
        height * 1.31,
        width * 0.5,
        height * 1.31,
      )
      ..lineTo(width * 0.5, height * 1.31);

    final path2 = Path()
      ..moveTo(width * 0.14, height * 0.31)
      ..cubicTo(
        width * 0.14,
        height * 0.26,
        width * 0.11,
        height * 0.23,
        width * 0.08,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.27,
        width * 0.06,
        height * 0.29,
        width * 0.06,
        height * 0.31,
      )
      ..lineTo(width * 0.06, height * 0.37)
      ..cubicTo(
        width * 0.06,
        height * 0.42,
        width * 0.09,
        height * 0.45,
        width * 0.12,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.42,
        width * 0.14,
        height * 0.4,
        width * 0.14,
        height * 0.37,
      )
      ..lineTo(width * 0.14, height * 0.31)
      ..lineTo(width * 0.14, height * 0.31)
      ..moveTo(width * 0.94, height * 0.31)
      ..cubicTo(
        width * 0.94,
        height * 0.26,
        width * 0.91,
        height * 0.23,
        width * 0.88,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.27,
        width * 0.86,
        height * 0.29,
        width * 0.86,
        height * 0.31,
      )
      ..lineTo(width * 0.86, height * 0.37)
      ..cubicTo(
        width * 0.86,
        height * 0.42,
        width * 0.89,
        height * 0.45,
        width * 0.92,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.42,
        width * 0.94,
        height * 0.4,
        width * 0.94,
        height * 0.37,
      )
      ..lineTo(width * 0.94, height * 0.31)
      ..lineTo(width * 0.94, height * 0.31)
      ..moveTo(width * 0.5, height * 0.87)
      ..lineTo(width * 0.5, height * 1.06)
      ..cubicTo(
        width * 0.5,
        height * 1.21,
        width * 0.61,
        height * 1.3,
        width * 0.7,
        height * 1.22,
      )
      ..cubicTo(
        width * 0.74,
        height * 1.19,
        width * 0.77,
        height * 1.13,
        width * 0.77,
        height * 1.06,
      )
      ..lineTo(width * 0.77, height * 0.87)
      ..lineTo(width * 0.5, height * 0.87)
      ..lineTo(width * 0.5, height * 0.87);

    final path3 = Path()
      ..moveTo(width * 0.23, height * 0.87)
      ..lineTo(width * 0.23, height * 1.06)
      ..cubicTo(
        width * 0.23,
        height * 1.21,
        width * 0.34,
        height * 1.3,
        width * 0.43,
        height * 1.22,
      )
      ..cubicTo(
        width * 0.47,
        height * 1.19,
        width * 0.5,
        height * 1.13,
        width * 0.5,
        height * 1.06,
      )
      ..lineTo(width * 0.5, height * 0.87)
      ..lineTo(width * 0.23, height * 0.87)
      ..lineTo(width * 0.23, height * 0.87)
      ..moveTo(width * 0.14, height * 0.37)
      ..lineTo(width * 0.06, height * 0.37)
      ..cubicTo(
        width * 0.02,
        height * 0.37,
        0,
        height * 0.43,
        width * 0.02,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.49,
        width * 0.04,
        height * 0.5,
        width * 0.06,
        height * 0.5,
      )
      ..lineTo(width * 0.14, height * 0.5)
      ..cubicTo(
        width * 0.18,
        height * 0.5,
        width * 0.2,
        height * 0.45,
        width * 0.18,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.39,
        width * 0.16,
        height * 0.37,
        width * 0.14,
        height * 0.37,
      )
      ..lineTo(width * 0.14, height * 0.37)
      ..moveTo(width * 0.94, height * 0.37)
      ..lineTo(width * 0.86, height * 0.37)
      ..cubicTo(
        width * 0.82,
        height * 0.37,
        width * 0.8,
        height * 0.43,
        width * 0.82,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.49,
        width * 0.84,
        height * 0.5,
        width * 0.86,
        height * 0.5,
      )
      ..lineTo(width * 0.94, height * 0.5)
      ..cubicTo(
        width * 0.98,
        height * 0.5,
        width,
        height * 0.45,
        width * 0.98,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.97,
        height * 0.39,
        width * 0.96,
        height * 0.37,
        width * 0.94,
        height * 0.37,
      )
      ..lineTo(width * 0.94, height * 0.37)
      ..moveTo(width * 0.14, height * 1.12)
      ..lineTo(width * 0.06, height * 1.12)
      ..cubicTo(
        width * 0.02,
        height * 1.12,
        0,
        height * 1.18,
        width * 0.02,
        height * 1.22,
      )
      ..cubicTo(
        width * 0.03,
        height * 1.24,
        width * 0.04,
        height * 1.25,
        width * 0.06,
        height * 1.25,
      )
      ..lineTo(width * 0.14, height * 1.25)
      ..cubicTo(
        width * 0.18,
        height * 1.25,
        width * 0.2,
        height * 1.2,
        width * 0.18,
        height * 1.16,
      )
      ..cubicTo(
        width * 0.17,
        height * 1.14,
        width * 0.16,
        height * 1.12,
        width * 0.14,
        height * 1.12,
      )
      ..lineTo(width * 0.14, height * 1.12)
      ..moveTo(width * 0.94, height * 1.12)
      ..lineTo(width * 0.86, height * 1.12)
      ..cubicTo(
        width * 0.82,
        height * 1.12,
        width * 0.8,
        height * 1.18,
        width * 0.82,
        height * 1.22,
      )
      ..cubicTo(
        width * 0.82,
        height * 1.24,
        width * 0.84,
        height * 1.25,
        width * 0.86,
        height * 1.25,
      )
      ..lineTo(width * 0.94, height * 1.25)
      ..cubicTo(
        width * 0.98,
        height * 1.25,
        width,
        height * 1.2,
        width * 0.98,
        height * 1.16,
      )
      ..cubicTo(
        width * 0.97,
        height * 1.14,
        width * 0.96,
        height * 1.12,
        width * 0.94,
        height * 1.12,
      )
      ..lineTo(width * 0.94, height * 1.12);

    final path4 = Path()
      ..moveTo(width * 0.02, height * 0.72)
      ..lineTo(width * 0.98, height * 0.72)
      ..lineTo(width * 0.02, height * 0.72)
      ..moveTo(width * 0.02, height * 0.91)
      ..lineTo(width * 0.18, height * 0.91)
      ..lineTo(width * 0.02, height * 0.91)
      ..moveTo(width * 0.82, height * 0.91)
      ..lineTo(width * 0.98, height * 0.91)
      ..lineTo(width * 0.82, height * 0.91);

    final path5 = Path()
      ..moveTo(width * 0.02, height * 0.69)
      ..cubicTo(
        width * 0.01,
        height * 0.69,
        width * -0.01,
        height * 0.71,
        0,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.74,
        width * 0.01,
        height * 0.75,
        width * 0.02,
        height * 0.75,
      )
      ..lineTo(width * 0.98, height * 0.75)
      ..cubicTo(
        width * 0.99,
        height * 0.75,
        width * 1.01,
        height * 0.72,
        width,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.69,
        width * 0.99,
        height * 0.69,
        width * 0.98,
        height * 0.69,
      )
      ..lineTo(width * 0.02, height * 0.69)
      ..lineTo(width * 0.02, height * 0.69)
      ..moveTo(width * 0.02, height * 0.87)
      ..cubicTo(
        width * 0.01,
        height * 0.87,
        width * -0.01,
        height * 0.9,
        0,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.93,
        width * 0.01,
        height * 0.94,
        width * 0.02,
        height * 0.94,
      )
      ..lineTo(width * 0.18, height * 0.94)
      ..cubicTo(
        width * 0.19,
        height * 0.94,
        width * 0.21,
        height * 0.91,
        width * 0.2,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.88,
        width * 0.19,
        height * 0.87,
        width * 0.18,
        height * 0.87,
      )
      ..lineTo(width * 0.02, height * 0.87)
      ..lineTo(width * 0.02, height * 0.87)
      ..moveTo(width * 0.82, height * 0.87)
      ..cubicTo(
        width * 0.81,
        height * 0.87,
        width * 0.79,
        height * 0.9,
        width * 0.8,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.93,
        width * 0.81,
        height * 0.94,
        width * 0.82,
        height * 0.94,
      )
      ..lineTo(width * 0.98, height * 0.94)
      ..cubicTo(
        width * 0.99,
        height * 0.94,
        width * 1.01,
        height * 0.91,
        width,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.88,
        width * 0.99,
        height * 0.87,
        width * 0.98,
        height * 0.87,
      )
      ..lineTo(width * 0.82, height * 0.87)
      ..lineTo(width * 0.82, height * 0.87);

    final path6 = Path()
      ..moveTo(width * 0.43, height * 0.06)
      ..cubicTo(
        width * 0.39,
        height * 0.06,
        width * 0.36,
        height * 0.1,
        width * 0.35,
        height * 0.15,
      )
      ..lineTo(width * 0.32, height * 0.14)
      ..cubicTo(
        width * 0.27,
        height * 0.14,
        width * 0.23,
        height * 0.2,
        width * 0.23,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.34,
        width * 0.27,
        height * 0.39,
        width * 0.32,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.39,
        width * 0.39,
        height * 0.36,
        width * 0.41,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.32,
        width * 0.48,
        height * 0.31,
        width * 0.5,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.31,
        width * 0.56,
        height * 0.32,
        width * 0.59,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.4,
        width * 0.7,
        height * 0.42,
        width * 0.74,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.28,
        width * 0.76,
        height * 0.16,
        width * 0.7,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.14,
        width * 0.67,
        height * 0.14,
        width * 0.65,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.06,
        width * 0.54,
        height * 0.04,
        width * 0.5,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.08,
        width * 0.46,
        height * 0.06,
        width * 0.43,
        height * 0.06,
      )
      ..lineTo(width * 0.43, height * 0.06)
      ..moveTo(width * 0.43, height * 0.12)
      ..cubicTo(
        width * 0.46,
        height * 0.12,
        width * 0.48,
        height * 0.16,
        width * 0.48,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.23,
        width * 0.46,
        height * 0.25,
        width * 0.43,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.25,
        width * 0.39,
        height * 0.23,
        width * 0.39,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.16,
        width * 0.41,
        height * 0.12,
        width * 0.43,
        height * 0.12,
      )
      ..lineTo(width * 0.43, height * 0.12)
      ..moveTo(width * 0.57, height * 0.12)
      ..cubicTo(
        width * 0.59,
        height * 0.12,
        width * 0.61,
        height * 0.16,
        width * 0.61,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.23,
        width * 0.59,
        height * 0.25,
        width * 0.57,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.25,
        width * 0.52,
        height * 0.23,
        width * 0.52,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.16,
        width * 0.54,
        height * 0.12,
        width * 0.57,
        height * 0.12,
      )
      ..lineTo(width * 0.57, height * 0.12)
      ..moveTo(width * 0.32, height * 0.2)
      ..lineTo(width * 0.34, height * 0.21)
      ..lineTo(width * 0.37, height * 0.27)
      ..cubicTo(
        width * 0.37,
        height * 0.3,
        width * 0.34,
        height * 0.33,
        width * 0.32,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.33,
        width * 0.28,
        height * 0.3,
        width * 0.28,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.23,
        width * 0.3,
        height * 0.2,
        width * 0.32,
        height * 0.2,
      )
      ..lineTo(width * 0.32, height * 0.2)
      ..moveTo(width * 0.68, height * 0.2)
      ..cubicTo(
        width * 0.71,
        height * 0.2,
        width * 0.72,
        height * 0.23,
        width * 0.72,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.3,
        width * 0.71,
        height * 0.33,
        width * 0.68,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.33,
        width * 0.63,
        height * 0.3,
        width * 0.63,
        height * 0.27,
      )
      ..lineTo(width * 0.66, height * 0.21)
      ..lineTo(width * 0.68, height * 0.2)
      ..lineTo(width * 0.68, height * 0.2);

    final path7 = Path()
      ..moveTo(width * 0.46, 0)
      ..lineTo(width * 0.54, 0)
      ..lineTo(width * 0.54, height * 0.25)
      ..lineTo(width * 0.46, height * 0.25)
      ..lineTo(width * 0.46, 0)
      ..lineTo(width * 0.46, 0);

    final path8 = Path()
      ..moveTo(width * 0.5, height * 0.5)
      ..lineTo(width * 0.77, height * 0.5)
      ..lineTo(width * 0.77, height * 0.87)
      ..lineTo(width * 0.5, height * 0.87)
      ..lineTo(width * 0.5, height * 0.5)
      ..lineTo(width * 0.5, height * 0.5);

    final path9 = Path()
      ..moveTo(width * 0.72, height * 0.37)
      ..lineTo(width * 0.68, height * 0.44)
      ..lineTo(width * 0.32, height * 0.44)
      ..lineTo(width * 0.28, height * 0.37)
      ..cubicTo(
        width * 0.28,
        height * 0.27,
        width * 0.38,
        height * 0.19,
        width * 0.5,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.19,
        width * 0.72,
        height * 0.27,
        width * 0.72,
        height * 0.37,
      )
      ..lineTo(width * 0.72, height * 0.37)
      ..moveTo(width * 0.23, height * 0.5)
      ..lineTo(width * 0.5, height * 0.5)
      ..lineTo(width * 0.5, height * 0.87)
      ..lineTo(width * 0.23, height * 0.87)
      ..lineTo(width * 0.23, height * 0.5)
      ..lineTo(width * 0.23, height * 0.5)
      ..moveTo(width * 0.69, height * 0.64)
      ..cubicTo(
        width * 0.69,
        height * 0.58,
        width * 0.64,
        height * 0.54,
        width * 0.61,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.59,
        width * 0.58,
        height * 0.61,
        width * 0.58,
        height * 0.64,
      )
      ..lineTo(width * 0.58, height * 0.73)
      ..cubicTo(
        width * 0.58,
        height * 0.79,
        width * 0.62,
        height * 0.83,
        width * 0.66,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.79,
        width * 0.69,
        height * 0.76,
        width * 0.69,
        height * 0.73,
      )
      ..lineTo(width * 0.69, height * 0.64)
      ..lineTo(width * 0.69, height * 0.64);

    final path10 = Path()
      ..moveTo(width * 0.28, height * 0.56)
      ..lineTo(width * 0.28, height * 0.62)
      ..lineTo(width * 0.32, height * 0.62)
      ..lineTo(width * 0.32, height * 0.75)
      ..lineTo(width * 0.28, height * 0.75)
      ..lineTo(width * 0.28, height * 0.81)
      ..lineTo(width * 0.46, height * 0.81)
      ..lineTo(width * 0.46, height * 0.75)
      ..lineTo(width * 0.41, height * 0.75)
      ..lineTo(width * 0.41, height * 0.62)
      ..lineTo(width * 0.46, height * 0.62)
      ..lineTo(width * 0.46, height * 0.56)
      ..lineTo(width * 0.28, height * 0.56)
      ..lineTo(width * 0.28, height * 0.56)
      ..moveTo(width * 0.32, height * 0.44)
      ..lineTo(width * 0.68, height * 0.44)
      ..lineTo(width * 0.68, height * 0.5)
      ..lineTo(width * 0.32, height * 0.5)
      ..lineTo(width * 0.32, height * 0.44)
      ..lineTo(width * 0.32, height * 0.44);

    final path11 = Path()
      ..moveTo(width * 0.38, height * 0.37)
      ..cubicTo(
        width * 0.4,
        height * 0.37,
        width * 0.42,
        height * 0.34,
        width * 0.41,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.29,
        width * 0.39,
        height * 0.28,
        width * 0.38,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.28,
        width * 0.34,
        height * 0.32,
        width * 0.35,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.37,
        width * 0.37,
        height * 0.37,
        width * 0.38,
        height * 0.37,
      )
      ..lineTo(width * 0.38, height * 0.37)
      ..moveTo(width * 0.5, height * 0.37)
      ..cubicTo(
        width * 0.53,
        height * 0.37,
        width * 0.54,
        height * 0.34,
        width * 0.53,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.29,
        width * 0.51,
        height * 0.28,
        width * 0.5,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.28,
        width * 0.46,
        height * 0.32,
        width * 0.47,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.37,
        width * 0.49,
        height * 0.37,
        width * 0.5,
        height * 0.37,
      )
      ..lineTo(width * 0.5, height * 0.37)
      ..moveTo(width * 0.62, height * 0.37)
      ..cubicTo(
        width * 0.65,
        height * 0.37,
        width * 0.66,
        height * 0.34,
        width * 0.65,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.29,
        width * 0.63,
        height * 0.28,
        width * 0.62,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.28,
        width * 0.58,
        height * 0.32,
        width * 0.59,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.37,
        width * 0.61,
        height * 0.37,
        width * 0.62,
        height * 0.37,
      )
      ..lineTo(width * 0.62, height * 0.37);

    final path12 = Path()
      ..moveTo(width * 0.28, height * 0.87)
      ..lineTo(width * 0.28, height * 1.21)
      ..cubicTo(
        width * 0.3,
        height * 1.23,
        width * 0.32,
        height * 1.24,
        width * 0.34,
        height * 1.25,
      )
      ..lineTo(width * 0.34, height * 0.87)
      ..lineTo(width * 0.28, height * 0.87)
      ..lineTo(width * 0.28, height * 0.87)
      ..moveTo(width * 0.39, height * 0.87)
      ..lineTo(width * 0.39, height * 1.25)
      ..cubicTo(
        width * 0.41,
        height * 1.24,
        width * 0.43,
        height * 1.23,
        width * 0.45,
        height * 1.21,
      )
      ..lineTo(width * 0.45, height * 0.87)
      ..lineTo(width * 0.39, height * 0.87)
      ..lineTo(width * 0.39, height * 0.87);

    final path13 = Path()
      ..moveTo(width * 0.5, height)
      ..cubicTo(
        width * 0.57,
        height,
        width * 0.61,
        height * 0.9,
        width * 0.58,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.77,
        width * 0.53,
        height * 0.75,
        width * 0.5,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.75,
        width * 0.39,
        height * 0.85,
        width * 0.42,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.98,
        width * 0.47,
        height,
        width * 0.5,
        height,
      )
      ..lineTo(width * 0.5, height)
      ..moveTo(width * 0.94, height * 1.25)
      ..lineTo(width * 0.86, height * 1.25)
      ..cubicTo(
        width * 0.82,
        height * 1.25,
        width * 0.8,
        height * 1.3,
        width * 0.82,
        height * 1.34,
      )
      ..cubicTo(
        width * 0.82,
        height * 1.36,
        width * 0.84,
        height * 1.37,
        width * 0.86,
        height * 1.37,
      )
      ..lineTo(width * 0.94, height * 1.37)
      ..cubicTo(
        width * 0.98,
        height * 1.37,
        width,
        height * 1.32,
        width * 0.98,
        height * 1.28,
      )
      ..cubicTo(
        width * 0.97,
        height * 1.26,
        width * 0.96,
        height * 1.25,
        width * 0.94,
        height * 1.25,
      )
      ..lineTo(width * 0.94, height * 1.25)
      ..moveTo(width * 0.14, height * 1.25)
      ..lineTo(width * 0.06, height * 1.25)
      ..cubicTo(
        width * 0.02,
        height * 1.25,
        0,
        height * 1.3,
        width * 0.02,
        height * 1.34,
      )
      ..cubicTo(
        width * 0.03,
        height * 1.36,
        width * 0.04,
        height * 1.37,
        width * 0.06,
        height * 1.37,
      )
      ..lineTo(width * 0.14, height * 1.37)
      ..cubicTo(
        width * 0.18,
        height * 1.37,
        width * 0.2,
        height * 1.32,
        width * 0.18,
        height * 1.28,
      )
      ..cubicTo(
        width * 0.17,
        height * 1.26,
        width * 0.16,
        height * 1.25,
        width * 0.14,
        height * 1.25,
      )
      ..lineTo(width * 0.14, height * 1.25);

    final bounds = path.getBounds();
    final paint = paintCreator();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator(customColors.last)) // White.
      ..drawPath(path2, paint) // Red.
      ..drawPath(path3, paintCreator(customColors.first)) // Yellow.
      ..drawPath(path4, paintCreator()) // Black.
      ..drawPath(path5, paint) // Red.
      ..drawPath(path6, paintCreator(customColors.last)) // White.
      ..drawPath(path7, paintCreator(customColors.first)) // Yellow.
      ..drawPath(path8, paintCreator(customColors.last)) // White.
      ..drawPath(path9, paint) // Red.
      ..drawPath(path10, paintCreator(customColors.first)) // Yellow.
      ..drawPath(path11, paintCreator(customColors.first)) // Light yellow?
      ..drawPath(path12, paint) // Red.
      ..drawPath(path13, paintCreator(customColors[1])); // Blue.

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
