import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Albania flag.
final class AlbPainter extends CustomElementsPainter {
  /// Creates a new instance of [AlbPainter].
  const AlbPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagAlbProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.6);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.98, height * 0.68)
      ..cubicTo(
        width * 0.96,
        height * 0.66,
        width * 0.94,
        height * 0.66,
        width * 0.92,
        height * 0.68,
      )
      ..lineTo(width * 0.86, height * 0.68)
      ..cubicTo(
        width * 0.88,
        height * 0.68,
        width * 0.88,
        height * 0.67,
        width * 0.89,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.67,
        width * 0.92,
        height * 0.63,
        width * 0.96,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.96,
        height * 0.62,
        width * 0.94,
        height * 0.62,
        width * 0.92,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.61,
        width * 0.89,
        height * 0.63,
        width * 0.89,
        height * 0.64,
      )
      ..lineTo(width * 0.84, height * 0.68)
      ..lineTo(width * 0.72, height * 0.65)
      ..cubicTo(
        width * 0.81,
        height * 0.6,
        width * 0.62,
        height * 0.61,
        width * 0.62,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.45,
        width * 0.66,
        height * 0.56,
        width * 0.69,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.57,
        width * 0.67,
        height * 0.54,
        width * 0.67,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.44,
        width * 0.71,
        height * 0.55,
        width * 0.74,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.59,
        width * 0.83,
        height * 0.59,
        width * 0.79,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.55,
        width * 0.71,
        height * 0.46,
        width * 0.76,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.52,
        width * 0.88,
        height * 0.64,
        width * 0.96,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.57,
        width * 0.97,
        height * 0.55,
        width * 0.94,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.88,
        height * 0.56,
        width * 0.84,
        height * 0.53,
        width * 0.8,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.45,
        width * 0.79,
        height * 0.43,
        width * 0.81,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.84,
        height * 0.49,
        width * 0.93,
        height * 0.54,
        width * 0.96,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.49,
        width * 0.97,
        height * 0.46,
        width * 0.95,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.5,
        width * 0.75,
        height * 0.4,
        width * 0.82,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.86,
        height * 0.42,
        width * 0.92,
        height * 0.44,
        width * 0.95,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.42,
        width * 0.98,
        height * 0.38,
        width * 0.95,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.89,
        height * 0.39,
        width * 0.87,
        height * 0.38,
        width * 0.81,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.28,
        width * 0.94,
        height * 0.38,
        width * 0.96,
        height * 0.34,
      )
      ..cubicTo(
        width * 1.01,
        height * 0.26,
        width * 0.88,
        height * 0.35,
        width * 0.81,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.22,
        width * 0.94,
        height * 0.34,
        width * 0.97,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.18,
        width * 0.88,
        height * 0.29,
        width * 0.81,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.18,
        width * 0.96,
        height * 0.23,
        width * 0.97,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.98,
        height * 0.09,
        width * 0.87,
        height * 0.19,
        width * 0.83,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.13,
        width * 0.98,
        height * 0.13,
        width * 0.97,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.97,
        height * -0.05,
        width * 0.88,
        height * 0.12,
        width * 0.8,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.07,
        width * 0.71,
        height * 0.13,
        width * 0.67,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.16,
        width * 0.68,
        height * 0.2,
        width * 0.66,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.25,
        width * 0.56,
        height * 0.18,
        width * 0.61,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.09,
        width * 0.74,
        height * 0.1,
        width * 0.77,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.07,
        width * 0.73,
        height * 0.08,
        width * 0.71,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.74,
        height * 0.06,
        width * 0.79,
        height * 0.07,
        width * 0.81,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.02,
        width * 0.81,
        height * 0.02,
        width * 0.79,
        height * 0.03,
      )
      ..cubicTo(
        width * 0.78,
        height * 0.05,
        width * 0.75,
        height * 0.06,
        width * 0.72,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.04,
        width * 0.76,
        height * 0.02,
        width * 0.77,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.03,
        width * 0.77,
        height * 0.01,
        width * 0.72,
        height * 0.02,
      )
      ..cubicTo(width * 0.72, height * 0.01, width * 0.69, 0, width * 0.68, 0)
      ..cubicTo(
        width * 0.64,
        0,
        width * 0.6,
        height * 0.02,
        width * 0.56,
        height * 0.02,
      )
      ..lineTo(width * 0.59, height * 0.05)
      ..cubicTo(
        width * 0.57,
        height * 0.05,
        width * 0.55,
        height * 0.07,
        width * 0.54,
        height * 0.08,
      )
      ..lineTo(width * 0.58, height * 0.08)
      ..cubicTo(
        width * 0.55,
        height * 0.09,
        width * 0.54,
        height * 0.09,
        width * 0.53,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.11,
        width * 0.51,
        height * 0.14,
        width * 0.5,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.14,
        width * 0.44,
        height * 0.11,
        width * 0.48,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.09,
        width * 0.45,
        height * 0.09,
        width * 0.43,
        height * 0.08,
      )
      ..lineTo(width * 0.46, height * 0.08)
      ..cubicTo(
        width * 0.45,
        height * 0.07,
        width * 0.43,
        height * 0.05,
        width * 0.41,
        height * 0.05,
      )
      ..lineTo(width * 0.44, height * 0.02)
      ..cubicTo(
        width * 0.4,
        height * 0.02,
        width * 0.36,
        height * 0.01,
        width * 0.33,
        0,
      )
      ..cubicTo(width * 0.31, 0, width * 0.28, 0, width * 0.28, height * 0.02)
      ..cubicTo(
        width * 0.23,
        height * 0.01,
        width * 0.23,
        height * 0.03,
        width * 0.23,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.02,
        width * 0.27,
        height * 0.04,
        width * 0.28,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.05,
        width * 0.22,
        height * 0.05,
        width * 0.21,
        height * 0.03,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.02,
        width * 0.18,
        height * 0.02,
        width * 0.19,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.07,
        width * 0.26,
        height * 0.06,
        width * 0.29,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.08,
        width * 0.25,
        height * 0.07,
        width * 0.23,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.1,
        width * 0.36,
        height * 0.09,
        width * 0.39,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.18,
        width * 0.39,
        height * 0.25,
        width * 0.34,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.2,
        width * 0.34,
        height * 0.16,
        width * 0.33,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.13,
        width * 0.22,
        height * 0.07,
        width * 0.2,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.12,
        width * 0.04,
        height * -0.06,
        width * 0.03,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.13,
        width * 0.25,
        height * 0.13,
        width * 0.18,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.2,
        width * 0.03,
        height * 0.09,
        width * 0.03,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.23,
        width * 0.25,
        height * 0.18,
        width * 0.19,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.24,
        width * 0.11,
        height * 0.26,
        width * 0.06,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.2,
        width * 0.03,
        height * 0.22,
        width * 0.03,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.3,
        width * 0.13,
        height * 0.29,
        width * 0.18,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.25,
        width * 0.21,
        height * 0.27,
        width * 0.19,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.35,
        width * -0.01,
        height * 0.26,
        width * 0.04,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.06,
        height * 0.38,
        width * 0.23,
        height * 0.28,
        width * 0.19,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.38,
        width * 0.11,
        height * 0.39,
        width * 0.06,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.39,
        width * 0.02,
        height * 0.42,
        width * 0.05,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.44,
        width * 0.14,
        height * 0.42,
        width * 0.18,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.4,
        width * 0.09,
        height * 0.5,
        width * 0.06,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.47,
        width * 0.03,
        height * 0.49,
        width * 0.04,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.54,
        width * 0.17,
        height * 0.49,
        width * 0.2,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.43,
        width * 0.22,
        height * 0.44,
        width * 0.21,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.53,
        width * 0.11,
        height * 0.56,
        width * 0.06,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.04,
        height * 0.55,
        width * 0.03,
        height * 0.57,
        width * 0.05,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.68,
        width * 0.26,
        height * 0.39,
        width * 0.26,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.53,
        width * 0.15,
        height * 0.57,
        width * 0.22,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.6,
        width * 0.3,
        height * 0.43,
        width * 0.33,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.54,
        width * 0.25,
        height * 0.57,
        width * 0.31,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.56,
        width * 0.38,
        height * 0.44,
        width * 0.38,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.61,
        width * 0.19,
        height * 0.6,
        width * 0.28,
        height * 0.65,
      )
      ..lineTo(width * 0.16, height * 0.68)
      ..lineTo(width * 0.11, height * 0.64)
      ..cubicTo(
        width * 0.11,
        height * 0.63,
        width * 0.11,
        height * 0.61,
        width * 0.08,
        height * 0.63,
      )
      ..lineTo(width * 0.04, height * 0.63)
      ..cubicTo(
        width * 0.08,
        height * 0.63,
        width * 0.07,
        height * 0.67,
        width * 0.11,
        height * 0.65,
      )
      ..lineTo(width * 0.14, height * 0.68)
      ..lineTo(width * 0.08, height * 0.68)
      ..cubicTo(
        width * 0.06,
        height * 0.66,
        width * 0.04,
        height * 0.66,
        width * 0.03,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.01,
        height * 0.68,
        width * 0.01,
        height * 0.68,
        0,
        height * 0.69,
      )
      ..cubicTo(
        width * 0.03,
        height * 0.68,
        width * 0.06,
        height * 0.71,
        width * 0.08,
        height * 0.69,
      )
      ..lineTo(width * 0.14, height * 0.69)
      ..lineTo(width * 0.11, height * 0.71)
      ..cubicTo(
        width * 0.06,
        height * 0.7,
        width * 0.05,
        height * 0.74,
        width * 0.05,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.05,
        height * 0.76,
        width * 0.06,
        height * 0.75,
        width * 0.07,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.75,
        width * 0.11,
        height * 0.75,
        width * 0.11,
        height * 0.73,
      )
      ..lineTo(width * 0.16, height * 0.7)
      ..lineTo(width * 0.2, height * 0.71)
      ..cubicTo(
        width * 0.2,
        height * 0.75,
        width * 0.28,
        height * 0.73,
        width * 0.26,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.74,
        width * 0.28,
        height * 0.73,
        width * 0.26,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.71,
        width * 0.24,
        height * 0.7,
        width * 0.23,
        height * 0.71,
      )
      ..lineTo(width * 0.19, height * 0.7)
      ..lineTo(width * 0.29, height * 0.67)
      ..cubicTo(
        width * 0.35,
        height * 0.74,
        width * 0.36,
        height * 0.63,
        width * 0.39,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.58,
        width * 0.46,
        height * 0.57,
        width * 0.46,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.66,
        width * 0.41,
        height * 0.7,
        width * 0.38,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.73,
        width * 0.34,
        height * 0.73,
        width * 0.33,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.74,
        width * 0.34,
        height * 0.77,
        width * 0.36,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.69,
        width * 0.39,
        height * 0.8,
        width * 0.34,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.8,
        width * 0.32,
        height * 0.81,
        width * 0.34,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.83,
        width * 0.4,
        height * 0.81,
        width * 0.41,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.78,
        width * 0.44,
        height * 0.78,
        width * 0.43,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.85,
        width * 0.34,
        height * 0.83,
        width * 0.37,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.89,
        width * 0.43,
        height * 0.85,
        width * 0.44,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.8,
        width * 0.47,
        height * 0.89,
        width * 0.43,
        height * 0.9,
      )
      ..lineTo(width * 0.5, height)
      ..lineTo(width * 0.58, height * 0.89)
      ..cubicTo(
        width * 0.53,
        height * 0.88,
        width * 0.51,
        height * 0.79,
        width * 0.56,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.85,
        width * 0.59,
        height * 0.88,
        width * 0.62,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.82,
        width * 0.57,
        height * 0.85,
        width * 0.56,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.77,
        width * 0.57,
        height * 0.77,
        width * 0.59,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.8,
        width * 0.63,
        height * 0.82,
        width * 0.66,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.81,
        width * 0.69,
        height * 0.79,
        width * 0.66,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.79,
        width * 0.54,
        height * 0.68,
        width * 0.64,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.77,
        width * 0.73,
        height * 0.73,
        width * 0.67,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.72,
        width * 0.65,
        height * 0.73,
        width * 0.62,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.7,
        width * 0.55,
        height * 0.65,
        width * 0.54,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.56,
        width * 0.59,
        height * 0.58,
        width * 0.61,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.63,
        width * 0.66,
        height * 0.73,
        width * 0.71,
        height * 0.67,
      )
      ..lineTo(width * 0.81, height * 0.7)
      ..lineTo(width * 0.78, height * 0.71)
      ..cubicTo(
        width * 0.76,
        height * 0.7,
        width * 0.75,
        height * 0.71,
        width * 0.74,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.73,
        width * 0.72,
        height * 0.74,
        width * 0.73,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.73,
        width * 0.79,
        height * 0.75,
        width * 0.79,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.71,
        width * 0.82,
        height * 0.71,
        width * 0.84,
        height * 0.7,
      )
      ..lineTo(width * 0.89, height * 0.73)
      ..cubicTo(
        width * 0.89,
        height * 0.74,
        width * 0.9,
        height * 0.75,
        width * 0.93,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.94,
        height * 0.75,
        width * 0.94,
        height * 0.76,
        width * 0.95,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.95,
        height * 0.74,
        width * 0.94,
        height * 0.7,
        width * 0.89,
        height * 0.71,
      )
      ..lineTo(width * 0.86, height * 0.7)
      ..lineTo(width * 0.92, height * 0.7)
      ..cubicTo(
        width * 0.94,
        height * 0.71,
        width * 0.97,
        height * 0.68,
        width,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.99,
        height * 0.68,
        width * 0.99,
        height * 0.68,
        width * 0.97,
        height * 0.68,
      )
      ..lineTo(width * 0.98, height * 0.68);

    final bounds = path.getBounds();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
