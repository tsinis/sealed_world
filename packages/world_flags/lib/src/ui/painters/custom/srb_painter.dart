import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class SrbPainter extends CustomElementsPainter {
  const SrbPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagSrbProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.5, height * 0.12)
      ..cubicTo(
        width * 0.1,
        height * 0.12,
        width * -0.03,
        height * 0.23,
        0,
        height * 0.28,
      )
      ..lineTo(width * 0.14, height * 0.44)
      ..cubicTo(
        width * 0.14,
        height * 0.44,
        width * 0.11,
        height * 0.45,
        width * 0.14,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.54,
        width * 0.29,
        height * 0.51,
        width * 0.5,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.51,
        width * 0.83,
        height * 0.54,
        width * 0.86,
        height * 0.49,
      )
      ..lineTo(width * 0.86, height * 0.44)
      ..cubicTo(
        width * 0.86,
        height * 0.44,
        width * 0.96,
        height * 0.32,
        width * 0.99,
        height * 0.28,
      )
      ..cubicTo(
        width * 1.03,
        height * 0.23,
        width * 0.9,
        height * 0.12,
        width * 0.5,
        height * 0.12,
      )
      ..lineTo(width * 0.5, height * 0.12)
      ..moveTo(width * 0.15, height * 0.33)
      ..cubicTo(
        width * 0.12,
        height * 0.33,
        width * 0.15,
        height * 0.39,
        width * 0.14,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.35,
        width * 0.1,
        height * 0.34,
        width * 0.1,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.36,
        width * 0.08,
        height * 0.35,
        width * 0.09,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.3,
        width * 0.08,
        height * 0.29,
        width * 0.06,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.25,
        width * 0.04,
        height * 0.24,
        width * 0.07,
        height * 0.23,
      )
      ..lineTo(width * 0.14, height * 0.21)
      ..cubicTo(
        width * 0.14,
        height * 0.21,
        width * 0.16,
        height * 0.27,
        width * 0.18,
        height * 0.28,
      )
      ..lineTo(width * 0.21, height * 0.31)
      ..cubicTo(
        width * 0.21,
        height * 0.31,
        width * 0.2,
        height * 0.32,
        width * 0.21,
        height * 0.32,
      )
      ..lineTo(width * 0.23, height * 0.34)
      ..cubicTo(
        width * 0.23,
        height * 0.34,
        width * 0.19,
        height * 0.32,
        width * 0.19,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.33,
        width * 0.19,
        height * 0.34,
        width * 0.19,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.35,
        width * 0.17,
        height * 0.32,
        width * 0.15,
        height * 0.33,
      )
      ..lineTo(width * 0.15, height * 0.33)
      ..moveTo(width * 0.47, height * 0.33)
      ..cubicTo(
        width * 0.47,
        height * 0.33,
        width * 0.46,
        height * 0.32,
        width * 0.44,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.31,
        width * 0.42,
        height * 0.31,
        width * 0.42,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.33,
        width * 0.4,
        height * 0.33,
        width * 0.4,
        height * 0.34,
      )
      ..lineTo(width * 0.38, height * 0.35)
      ..cubicTo(
        width * 0.38,
        height * 0.35,
        width * 0.41,
        height * 0.3,
        width * 0.36,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.31,
        width * 0.35,
        height * 0.34,
        width * 0.36,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.34,
        width * 0.34,
        height * 0.34,
        width * 0.32,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.33,
        width * 0.32,
        height * 0.31,
        width * 0.31,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.32,
        width * 0.29,
        height * 0.33,
        width * 0.28,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.34,
        width * 0.27,
        height * 0.33,
        width * 0.28,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.31,
        width * 0.28,
        height * 0.3,
        width * 0.27,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.3,
        width * 0.27,
        height * 0.29,
        width * 0.28,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.28,
        width * 0.29,
        height * 0.27,
        width * 0.28,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.26,
        width * 0.22,
        height * 0.21,
        width * 0.23,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.17,
        width * 0.3,
        height * 0.15,
        width * 0.43,
        height * 0.16,
      )
      ..lineTo(width * 0.42, height * 0.27)
      ..cubicTo(
        width * 0.42,
        height * 0.27,
        width * 0.44,
        height * 0.28,
        width * 0.45,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.3,
        width * 0.45,
        height * 0.3,
        width * 0.46,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.32,
        width * 0.48,
        height * 0.32,
        width * 0.47,
        height * 0.33,
      )
      ..lineTo(width * 0.47, height * 0.33)
      ..moveTo(width * 0.72, height * 0.32)
      ..cubicTo(
        width * 0.73,
        height * 0.33,
        width * 0.73,
        height * 0.34,
        width * 0.72,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.33,
        width * 0.7,
        height * 0.32,
        width * 0.69,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.31,
        width * 0.69,
        height * 0.33,
        width * 0.68,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.34,
        width * 0.64,
        height * 0.34,
        width * 0.63,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.34,
        width * 0.66,
        height * 0.31,
        width * 0.63,
        height * 0.3,
      )
      ..lineTo(width * 0.62, height * 0.35)
      ..cubicTo(
        width * 0.62,
        height * 0.35,
        width * 0.6,
        height * 0.36,
        width * 0.6,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.33,
        width * 0.57,
        height * 0.33,
        width * 0.58,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.31,
        width * 0.57,
        height * 0.31,
        width * 0.55,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.32,
        width * 0.53,
        height * 0.33,
        width * 0.52,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.32,
        width * 0.52,
        height * 0.32,
        width * 0.54,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.3,
        width * 0.56,
        height * 0.3,
        width * 0.54,
        height * 0.29,
      )
      ..lineTo(width * 0.58, height * 0.27)
      ..cubicTo(
        width * 0.58,
        height * 0.27,
        width * 0.54,
        height * 0.23,
        width * 0.57,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.15,
        width * 0.75,
        height * 0.17,
        width * 0.76,
        height * 0.19,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.21,
        width * 0.73,
        height * 0.26,
        width * 0.72,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.27,
        width * 0.71,
        height * 0.28,
        width * 0.72,
        height * 0.29,
      )
      ..lineTo(width * 0.73, height * 0.3)
      ..cubicTo(
        width * 0.73,
        height * 0.3,
        width * 0.72,
        height * 0.3,
        width * 0.72,
        height * 0.32,
      )
      ..lineTo(width * 0.72, height * 0.32)
      ..moveTo(width * 0.94, height * 0.27)
      ..cubicTo(
        width * 0.92,
        height * 0.29,
        width * 0.91,
        height * 0.3,
        width * 0.91,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.35,
        width * 0.9,
        height * 0.36,
        width * 0.9,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.9,
        height * 0.34,
        width * 0.87,
        height * 0.35,
        width * 0.86,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.85,
        height * 0.39,
        width * 0.88,
        height * 0.33,
        width * 0.85,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.82,
        height * 0.32,
        width * 0.79,
        height * 0.37,
        width * 0.8,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.36,
        width * 0.82,
        height * 0.33,
        width * 0.81,
        height * 0.33,
      )
      ..lineTo(width * 0.77, height * 0.34)
      ..cubicTo(
        width * 0.77,
        height * 0.34,
        width * 0.78,
        height * 0.33,
        width * 0.79,
        height * 0.32,
      )
      ..lineTo(width * 0.79, height * 0.31)
      ..cubicTo(
        width * 0.79,
        height * 0.31,
        width * 0.81,
        height * 0.3,
        width * 0.82,
        height * 0.28,
      )
      ..lineTo(width * 0.85, height * 0.21)
      ..cubicTo(
        width * 0.85,
        height * 0.21,
        width * 0.91,
        height * 0.21,
        width * 0.93,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.24,
        width * 0.95,
        height * 0.25,
        width * 0.94,
        height * 0.27,
      )
      ..lineTo(width * 0.94, height * 0.27);

    final path2 = Path()
      ..moveTo(width * 0.51, height * 0.13)
      ..cubicTo(
        width * 0.51,
        height * 0.14,
        width * 0.49,
        height * 0.14,
        width * 0.48,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.14,
        width * 0.47,
        height * 0.13,
        width * 0.47,
        height * 0.13,
      )
      ..lineTo(width * 0.47, height * 0.02)
      ..cubicTo(width * 0.47, height * 0.01, width * 0.49, 0, width * 0.5, 0)
      ..cubicTo(
        width * 0.51,
        height * 0.01,
        width * 0.51,
        height * 0.01,
        width * 0.51,
        height * 0.02,
      )
      ..lineTo(width * 0.51, height * 0.13)
      ..lineTo(width * 0.51, height * 0.13);

    final path3 = Path()
      ..moveTo(width * 0.55, height * 0.05)
      ..cubicTo(
        width * 0.55,
        height * 0.05,
        width * 0.54,
        height * 0.06,
        width * 0.53,
        height * 0.06,
      )
      ..lineTo(width * 0.45, height * 0.06)
      ..cubicTo(
        width * 0.44,
        height * 0.06,
        width * 0.43,
        height * 0.05,
        width * 0.43,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.04,
        width * 0.44,
        height * 0.03,
        width * 0.45,
        height * 0.03,
      )
      ..lineTo(width * 0.53, height * 0.03)
      ..cubicTo(
        width * 0.54,
        height * 0.03,
        width * 0.55,
        height * 0.04,
        width * 0.55,
        height * 0.05,
      )
      ..lineTo(width * 0.55, height * 0.05);

    final path4 = Path()
      ..moveTo(width * 0.55, height * 0.12)
      ..cubicTo(
        width * 0.56,
        height * 0.15,
        width * 0.51,
        height * 0.17,
        width * 0.46,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.15,
        width * 0.43,
        height * 0.13,
        width * 0.43,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.08,
        width * 0.49,
        height * 0.06,
        width * 0.53,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.09,
        width * 0.55,
        height * 0.1,
        width * 0.55,
        height * 0.12,
      )
      ..lineTo(width * 0.55, height * 0.12)
      ..moveTo(width * 0.2, height * 0.49)
      ..cubicTo(
        width * 0.2,
        height * 0.5,
        width * 0.19,
        height * 0.51,
        width * 0.17,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.14,
        height * 0.51,
        width * 0.13,
        height * 0.5,
        width * 0.13,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.48,
        width * 0.14,
        height * 0.47,
        width * 0.17,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.47,
        width * 0.2,
        height * 0.48,
        width * 0.2,
        height * 0.49,
      )
      ..lineTo(width * 0.2, height * 0.49);

    final path5 = Path()
      ..moveTo(width * 0.36, height * 0.48)
      ..cubicTo(
        width * 0.36,
        height * 0.49,
        width * 0.34,
        height * 0.5,
        width * 0.32,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.5,
        width * 0.28,
        height * 0.49,
        width * 0.28,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.47,
        width * 0.3,
        height * 0.46,
        width * 0.32,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.46,
        width * 0.36,
        height * 0.47,
        width * 0.36,
        height * 0.48,
      )
      ..lineTo(width * 0.36, height * 0.48)
      ..moveTo(width * 0.7, height * 0.48)
      ..cubicTo(
        width * 0.7,
        height * 0.49,
        width * 0.69,
        height * 0.5,
        width * 0.66,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.5,
        width * 0.63,
        height * 0.49,
        width * 0.63,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.47,
        width * 0.64,
        height * 0.46,
        width * 0.66,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.46,
        width * 0.7,
        height * 0.47,
        width * 0.7,
        height * 0.48,
      )
      ..lineTo(width * 0.7, height * 0.48);

    final path6 = Path()
      ..moveTo(width * 0.86, height * 0.49)
      ..cubicTo(
        width * 0.86,
        height * 0.5,
        width * 0.84,
        height * 0.51,
        width * 0.82,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.51,
        width * 0.78,
        height * 0.5,
        width * 0.78,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.48,
        width * 0.8,
        height * 0.47,
        width * 0.82,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.47,
        width * 0.86,
        height * 0.48,
        width * 0.86,
        height * 0.49,
      )
      ..lineTo(width * 0.86, height * 0.49)
      ..moveTo(width * 0.53, height * 0.48)
      ..cubicTo(
        width * 0.53,
        height * 0.49,
        width * 0.51,
        height * 0.5,
        width * 0.49,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.5,
        width * 0.45,
        height * 0.49,
        width * 0.45,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.47,
        width * 0.47,
        height * 0.46,
        width * 0.49,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.46,
        width * 0.53,
        height * 0.47,
        width * 0.53,
        height * 0.48,
      )
      ..lineTo(width * 0.53, height * 0.48);

    final path7 = Path()
      ..moveTo(width * 0.27, height * 1.22)
      ..cubicTo(
        width * 0.24,
        height * 1.27,
        width * 0.23,
        height * 1.3,
        width * 0.19,
        height * 1.3,
      )
      ..cubicTo(
        width * 0.15,
        height * 1.3,
        width * 0.12,
        height * 1.29,
        width * 0.12,
        height * 1.3,
      )
      ..lineTo(width * 0.19, height * 1.31)
      ..cubicTo(
        width * 0.19,
        height * 1.31,
        width * 0.13,
        height * 1.33,
        width * 0.14,
        height * 1.35,
      )
      ..lineTo(width * 0.2, height * 1.32)
      ..cubicTo(
        width * 0.2,
        height * 1.32,
        width * 0.22,
        height * 1.33,
        width * 0.24,
        height * 1.31,
      )
      ..lineTo(width * 0.31, height * 1.25)
      ..lineTo(width * 0.27, height * 1.22)
      ..lineTo(width * 0.27, height * 1.22)
      ..moveTo(width * 0.72, height * 1.22)
      ..cubicTo(
        width * 0.76,
        height * 1.27,
        width * 0.76,
        height * 1.3,
        width * 0.8,
        height * 1.3,
      )
      ..cubicTo(
        width * 0.84,
        height * 1.3,
        width * 0.87,
        height * 1.29,
        width * 0.87,
        height * 1.3,
      )
      ..lineTo(width * 0.81, height * 1.31)
      ..cubicTo(
        width * 0.81,
        height * 1.31,
        width * 0.87,
        height * 1.33,
        width * 0.86,
        height * 1.35,
      )
      ..lineTo(width * 0.79, height * 1.32)
      ..cubicTo(
        width * 0.79,
        height * 1.32,
        width * 0.78,
        height * 1.33,
        width * 0.76,
        height * 1.31,
      )
      ..cubicTo(
        width * 0.73,
        height * 1.29,
        width * 0.71,
        height * 1.27,
        width * 0.68,
        height * 1.25,
      )
      ..lineTo(width * 0.72, height * 1.22)
      ..lineTo(width * 0.72, height * 1.22);

    final path8 = Path()
      ..moveTo(width * 0.97, height * 0.73)
      ..cubicTo(
        width * 0.95,
        height * 0.64,
        width * 0.84,
        height * 0.67,
        width * 0.79,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.79,
        width * 0.69,
        height * 0.82,
        width * 0.65,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.74,
        width * 0.57,
        height * 0.7,
        width * 0.64,
        height * 0.64,
      )
      ..lineTo(width * 0.71, height * 0.58)
      ..cubicTo(
        width * 0.7,
        height * 0.55,
        width * 0.66,
        height * 0.56,
        width * 0.6,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.59,
        width * 0.51,
        height * 0.58,
        width * 0.51,
        height * 0.6,
      )
      ..lineTo(width * 0.54, height * 0.62)
      ..cubicTo(
        width * 0.54,
        height * 0.62,
        width * 0.5,
        height * 0.64,
        width * 0.49,
        height * 0.73,
      )
      ..lineTo(width * 0.45, height * 0.62)
      ..cubicTo(
        width * 0.45,
        height * 0.62,
        width * 0.47,
        height * 0.62,
        width * 0.48,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.58,
        width * 0.45,
        height * 0.59,
        width * 0.39,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.56,
        width * 0.29,
        height * 0.55,
        width * 0.28,
        height * 0.58,
      )
      ..lineTo(width * 0.35, height * 0.64)
      ..cubicTo(
        width * 0.42,
        height * 0.7,
        width * 0.39,
        height * 0.74,
        width * 0.34,
        height * 0.78,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.82,
        width * 0.25,
        height * 0.79,
        width * 0.2,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.67,
        width * 0.04,
        height * 0.65,
        width * 0.02,
        height * 0.73,
      )
      ..lineTo(width * 0.02, height * 0.97)
      ..cubicTo(
        width * 0.02,
        height * 0.97,
        width * 0.01,
        height * 1.05,
        width * 0.03,
        height * 1.12,
      )
      ..cubicTo(
        width * 0.06,
        height * 1.19,
        width * 0.07,
        height * 1.25,
        width * 0.03,
        height * 1.31,
      )
      ..lineTo(width * 0.1, height * 1.26)
      ..cubicTo(
        width * 0.1,
        height * 1.26,
        width * 0.08,
        height * 1.31,
        width * 0.11,
        height * 1.3,
      )
      ..cubicTo(
        width * 0.13,
        height * 1.3,
        width * 0.14,
        height * 1.26,
        width * 0.16,
        height * 1.25,
      )
      ..lineTo(width * 0.19, height * 1.21)
      ..cubicTo(
        width * 0.19,
        height * 1.21,
        width * 0.23,
        height * 1.2,
        width * 0.19,
        height * 1.25,
      )
      ..lineTo(width * 0.24, height * 1.24)
      ..lineTo(width * 0.26, height * 1.28)
      ..lineTo(width * 0.27, height * 1.26)
      ..lineTo(width * 0.28, height * 1.3)
      ..lineTo(width * 0.32, height * 1.26)
      ..lineTo(width * 0.34, height * 1.28)
      ..cubicTo(
        width * 0.34,
        height * 1.28,
        width * 0.34,
        height * 1.2,
        width * 0.37,
        height * 1.21,
      )
      ..cubicTo(
        width * 0.4,
        height * 1.23,
        width * 0.41,
        height * 1.28,
        width * 0.39,
        height * 1.31,
      )
      ..lineTo(width * 0.39, height * 1.35)
      ..cubicTo(
        width * 0.39,
        height * 1.35,
        width * 0.36,
        height * 1.38,
        width * 0.34,
        height * 1.4,
      )
      ..lineTo(width * 0.35, height * 1.44)
      ..cubicTo(
        width * 0.35,
        height * 1.44,
        width * 0.29,
        height * 1.5,
        width * 0.31,
        height * 1.52,
      )
      ..cubicTo(
        width * 0.32,
        height * 1.54,
        width * 0.42,
        height * 1.56,
        width * 0.49,
        height * 1.56,
      )
      ..lineTo(width * 0.5, height * 1.56)
      ..cubicTo(
        width * 0.57,
        height * 1.56,
        width * 0.67,
        height * 1.54,
        width * 0.68,
        height * 1.52,
      )
      ..lineTo(width * 0.64, height * 1.44)
      ..cubicTo(
        width * 0.64,
        height * 1.44,
        width * 0.66,
        height * 1.42,
        width * 0.65,
        height * 1.4,
      )
      ..lineTo(width * 0.6, height * 1.35)
      ..cubicTo(
        width * 0.6,
        height * 1.35,
        width * 0.62,
        height * 1.34,
        width * 0.6,
        height * 1.31,
      )
      ..cubicTo(
        width * 0.58,
        height * 1.28,
        width * 0.58,
        height * 1.23,
        width * 0.61,
        height * 1.21,
      )
      ..lineTo(width * 0.65, height * 1.28)
      ..lineTo(width * 0.67, height * 1.26)
      ..lineTo(width * 0.7, height * 1.3)
      ..lineTo(width * 0.71, height * 1.26)
      ..lineTo(width * 0.73, height * 1.28)
      ..lineTo(width * 0.74, height * 1.24)
      ..cubicTo(
        width * 0.74,
        height * 1.24,
        width * 0.76,
        height * 1.25,
        width * 0.8,
        height * 1.25,
      )
      ..lineTo(width * 0.8, height * 1.21)
      ..cubicTo(
        width * 0.8,
        height * 1.21,
        width * 0.81,
        height * 1.24,
        width * 0.83,
        height * 1.25,
      )
      ..cubicTo(
        width * 0.85,
        height * 1.27,
        width * 0.85,
        height * 1.3,
        width * 0.88,
        height * 1.3,
      )
      ..lineTo(width * 0.89, height * 1.26)
      ..cubicTo(
        width * 0.89,
        height * 1.26,
        width * 0.92,
        height * 1.3,
        width * 0.95,
        height * 1.31,
      )
      ..cubicTo(
        width * 0.92,
        height * 1.25,
        width * 0.93,
        height * 1.19,
        width * 0.95,
        height * 1.12,
      )
      ..lineTo(width * 0.97, height * 0.97)
      ..cubicTo(
        width * 0.97,
        height * 0.97,
        width * 0.99,
        height * 0.82,
        width * 0.97,
        height * 0.73,
      )
      ..lineTo(width * 0.97, height * 0.73);

    final path9 = Path()
      ..moveTo(width * 0.44, height * 0.63)
      ..cubicTo(
        width * 0.39,
        height * 0.6,
        width * 0.28,
        height * 0.56,
        width * 0.24,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.57,
        width * 0.18,
        height * 0.59,
        width * 0.2,
        height * 0.62,
      )
      ..lineTo(width * 0.24, height * 0.65)
      ..cubicTo(
        width * 0.24,
        height * 0.65,
        width * 0.29,
        height * 0.62,
        width * 0.31,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.65,
        width * 0.31,
        height * 0.65,
        width * 0.27,
        height * 0.66,
      )
      ..lineTo(width * 0.2, height * 0.64)
      ..cubicTo(
        width * 0.2,
        height * 0.64,
        width * 0.22,
        height * 0.67,
        width * 0.26,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.7,
        width * 0.34,
        height * 0.68,
        width * 0.36,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.68,
        width * 0.48,
        height * 0.66,
        width * 0.44,
        height * 0.63,
      )
      ..lineTo(width * 0.44, height * 0.63)
      ..moveTo(width * 0.55, height * 0.63)
      ..cubicTo(
        width * 0.6,
        height * 0.6,
        width * 0.71,
        height * 0.56,
        width * 0.75,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.57,
        width * 0.81,
        height * 0.59,
        width * 0.79,
        height * 0.62,
      )
      ..lineTo(width * 0.75, height * 0.65)
      ..cubicTo(
        width * 0.75,
        height * 0.65,
        width * 0.7,
        height * 0.62,
        width * 0.68,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.65,
        width * 0.68,
        height * 0.65,
        width * 0.71,
        height * 0.66,
      )
      ..lineTo(width * 0.79, height * 0.64)
      ..cubicTo(
        width * 0.79,
        height * 0.64,
        width * 0.77,
        height * 0.67,
        width * 0.73,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.7,
        width * 0.65,
        height * 0.68,
        width * 0.63,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.68,
        width * 0.51,
        height * 0.66,
        width * 0.55,
        height * 0.63,
      )
      ..lineTo(width * 0.55, height * 0.63)
      ..moveTo(width * 0.24, height * 1.41)
      ..cubicTo(
        width * 0.25,
        height * 1.38,
        width * 0.25,
        height * 1.38,
        width * 0.23,
        height * 1.37,
      )
      ..cubicTo(
        width * 0.23,
        height * 1.37,
        width * 0.22,
        height * 1.36,
        width * 0.22,
        height * 1.35,
      )
      ..cubicTo(
        width * 0.22,
        height * 1.35,
        width * 0.21,
        height * 1.37,
        width * 0.2,
        height * 1.37,
      )
      ..cubicTo(
        width * 0.19,
        height * 1.38,
        width * 0.18,
        height * 1.38,
        width * 0.19,
        height * 1.41,
      )
      ..cubicTo(
        width * 0.16,
        height * 1.39,
        width * 0.15,
        height * 1.42,
        width * 0.17,
        height * 1.43,
      )
      ..cubicTo(
        width * 0.17,
        height * 1.42,
        width * 0.2,
        height * 1.42,
        width * 0.2,
        height * 1.44,
      )
      ..cubicTo(
        width * 0.2,
        height * 1.46,
        width * 0.18,
        height * 1.45,
        width * 0.18,
        height * 1.46,
      )
      ..cubicTo(
        width * 0.18,
        height * 1.46,
        width * 0.2,
        height * 1.48,
        width * 0.22,
        height * 1.48,
      )
      ..cubicTo(
        width * 0.23,
        height * 1.48,
        width * 0.25,
        height * 1.46,
        width * 0.25,
        height * 1.46,
      )
      ..cubicTo(
        width * 0.26,
        height * 1.45,
        width * 0.23,
        height * 1.46,
        width * 0.23,
        height * 1.44,
      )
      ..cubicTo(
        width * 0.23,
        height * 1.42,
        width * 0.26,
        height * 1.42,
        width * 0.27,
        height * 1.43,
      )
      ..cubicTo(
        width * 0.28,
        height * 1.42,
        width * 0.28,
        height * 1.39,
        width * 0.24,
        height * 1.41,
      )
      ..lineTo(width * 0.24, height * 1.41)
      ..moveTo(width * 0.8, height * 1.41)
      ..cubicTo(
        width * 0.81,
        height * 1.38,
        width * 0.8,
        height * 1.38,
        width * 0.79,
        height * 1.37,
      )
      ..cubicTo(
        width * 0.78,
        height * 1.37,
        width * 0.77,
        height * 1.36,
        width * 0.77,
        height * 1.35,
      )
      ..cubicTo(
        width * 0.77,
        height * 1.35,
        width * 0.77,
        height * 1.37,
        width * 0.75,
        height * 1.37,
      )
      ..cubicTo(
        width * 0.74,
        height * 1.38,
        width * 0.73,
        height * 1.38,
        width * 0.75,
        height * 1.41,
      )
      ..cubicTo(
        width * 0.71,
        height * 1.39,
        width * 0.71,
        height * 1.42,
        width * 0.72,
        height * 1.43,
      )
      ..cubicTo(
        width * 0.73,
        height * 1.42,
        width * 0.75,
        height * 1.42,
        width * 0.75,
        height * 1.44,
      )
      ..cubicTo(
        width * 0.75,
        height * 1.46,
        width * 0.73,
        height * 1.45,
        width * 0.73,
        height * 1.46,
      )
      ..cubicTo(
        width * 0.74,
        height * 1.46,
        width * 0.76,
        height * 1.48,
        width * 0.77,
        height * 1.48,
      )
      ..cubicTo(
        width * 0.78,
        height * 1.48,
        width * 0.81,
        height * 1.46,
        width * 0.81,
        height * 1.46,
      )
      ..cubicTo(
        width * 0.81,
        height * 1.45,
        width * 0.79,
        height * 1.46,
        width * 0.79,
        height * 1.44,
      )
      ..cubicTo(
        width * 0.79,
        height * 1.42,
        width * 0.81,
        height * 1.42,
        width * 0.82,
        height * 1.43,
      )
      ..cubicTo(
        width * 0.83,
        height * 1.42,
        width * 0.83,
        height * 1.39,
        width * 0.8,
        height * 1.41,
      )
      ..lineTo(width * 0.8, height * 1.41);

    final path10 = Path()
      ..moveTo(width * 0.27, height * 0.81)
      ..lineTo(width * 0.27, height * 1.09)
      ..cubicTo(
        width * 0.27,
        height * 1.21,
        width * 0.46,
        height * 1.29,
        width * 0.61,
        height * 1.23,
      )
      ..cubicTo(
        width * 0.68,
        height * 1.2,
        width * 0.72,
        height * 1.15,
        width * 0.72,
        height * 1.09,
      )
      ..lineTo(width * 0.72, height * 0.81)
      ..lineTo(width * 0.27, height * 0.81)
      ..lineTo(width * 0.27, height * 0.81);

    final path11 = Path()
      ..moveTo(width * 0.72, height * 0.98)
      ..lineTo(width * 0.55, height * 0.98)
      ..lineTo(width * 0.55, height * 0.81)
      ..lineTo(width * 0.45, height * 0.81)
      ..lineTo(width * 0.45, height * 0.98)
      ..lineTo(width * 0.27, height * 0.98)
      ..lineTo(width * 0.27, height * 1.05)
      ..lineTo(width * 0.45, height * 1.05)
      ..lineTo(width * 0.45, height * 1.24)
      ..cubicTo(
        width * 0.48,
        height * 1.25,
        width * 0.51,
        height * 1.25,
        width * 0.55,
        height * 1.24,
      )
      ..lineTo(width * 0.55, height * 1.05)
      ..lineTo(width * 0.72, height * 1.05)
      ..lineTo(width * 0.72, height * 0.98)
      ..lineTo(width * 0.72, height * 0.98);

    final bounds = path8.getBounds();
    final rect = Rect.fromLTWH(
      bounds.left * 1.2,
      bounds.top,
      bounds.width * 1.1,
      bounds.height * 1.1,
    );
    final shield = RRect.fromRectAndCorners(
      rect,
      bottomRight: Radius.circular(rect.width / 2),
      bottomLeft: Radius.circular(rect.width / 2),
    );
    final paint = paintCreator();

    canvas
      ..translate(center.dx - rect.width / 2, center.dy - rect.height)
      ..drawRRect(shield, paintCreator(customColors[1])) // Red.
      ..drawRRect(
        shield,
        paintCreator() // White.
          ..style = PaintingStyle.stroke
          ..strokeWidth = height / 80,
      )
      ..translate(rect.width * 0.05, rect.height * 0.02)
      ..drawPath(path, paintCreator(customColors[2])) // Yellow.
      ..drawPath(path2, paint)
      ..drawPath(path3, paint)
      ..drawPath(path4, paintCreator(customColors.last)) // Dark blue.
      ..drawPath(path5, paintCreator(customColors[1])) // Red.
      ..drawPath(path6, paintCreator(customColors.last)) // Dark blue.
      ..drawPath(path7, paintCreator(customColors[2])) // Yellow.
      ..drawPath(path8, paint)
      ..drawPath(path9, paintCreator(customColors[2])) // Yellow.
      ..drawPath(path10, paintCreator(customColors[1])) // Red.
      ..drawPath(path11, paint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
