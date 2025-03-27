// ignore_for_file: prefer-moving-to-variable

import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the San Marino flag.
final class SmrPainter extends CustomElementsPainter {
  /// Creates a new instance of [SmrPainter].
  const SmrPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagSmrProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.4);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path =
        Path()
          ..moveTo(width * 0.68, height * 0.39)
          ..cubicTo(
            width * 0.77,
            height * 0.22,
            width * 0.61,
            height * 0.25,
            width * 0.54,
            height * 0.2,
          )
          ..cubicTo(
            width * 0.56,
            height * 0.19,
            width * 0.55,
            height * 0.19,
            width * 0.54,
            height * 0.18,
          )
          ..cubicTo(
            width * 0.53,
            height * 0.17,
            width * 0.53,
            height * 0.15,
            width * 0.52,
            height * 0.14,
          )
          ..cubicTo(
            width * 0.53,
            height * 0.12,
            width * 0.53,
            height * 0.1,
            width * 0.51,
            height * 0.09,
          )
          ..cubicTo(
            width * 0.51,
            height * 0.08,
            width * 0.5,
            height * 0.05,
            width * 0.52,
            height * 0.06,
          )
          ..cubicTo(
            width * 0.55,
            height * 0.08,
            width * 0.54,
            height * 0.02,
            width * 0.51,
            height * 0.04,
          )
          ..cubicTo(
            width * 0.51,
            height * 0.03,
            width * 0.52,
            0,
            width * 0.5,
            0,
          )
          ..cubicTo(
            width * 0.48,
            0,
            width * 0.49,
            height * 0.03,
            width * 0.49,
            height * 0.04,
          )
          ..cubicTo(
            width * 0.46,
            height * 0.02,
            width * 0.45,
            height * 0.08,
            width * 0.48,
            height * 0.06,
          )
          ..cubicTo(
            width * 0.5,
            height * 0.05,
            width * 0.49,
            height * 0.08,
            width * 0.49,
            height * 0.09,
          )
          ..cubicTo(
            width * 0.47,
            height * 0.1,
            width * 0.47,
            height * 0.12,
            width * 0.48,
            height * 0.14,
          )
          ..cubicTo(
            width * 0.46,
            height * 0.15,
            width * 0.47,
            height * 0.17,
            width * 0.46,
            height * 0.18,
          )
          ..cubicTo(
            width * 0.45,
            height * 0.19,
            width * 0.44,
            height * 0.19,
            width * 0.46,
            height * 0.2,
          )
          ..cubicTo(
            width * 0.39,
            height * 0.25,
            width * 0.23,
            height * 0.22,
            width * 0.32,
            height * 0.39,
          )
          ..cubicTo(
            width * 0.29,
            height * 0.4,
            width * 0.35,
            height * 0.42,
            width * 0.35,
            height * 0.44,
          )
          ..cubicTo(
            width * 0.35,
            height * 0.45,
            width * 0.35,
            height * 0.46,
            width * 0.36,
            height * 0.46,
          )
          ..cubicTo(
            width * 0.36,
            height * 0.47,
            width * 0.36,
            height * 0.48,
            width * 0.37,
            height * 0.48,
          )
          ..cubicTo(
            width * 0.37,
            height * 0.48,
            width * 0.37,
            height * 0.49,
            width * 0.37,
            height * 0.49,
          )
          ..cubicTo(
            width * 0.34,
            height * 0.57,
            width * 0.64,
            height * 0.59,
            width * 0.63,
            height * 0.49,
          )
          ..cubicTo(
            width * 0.63,
            height * 0.49,
            width * 0.63,
            height * 0.48,
            width * 0.63,
            height * 0.48,
          )
          ..cubicTo(
            width * 0.64,
            height * 0.48,
            width * 0.64,
            height * 0.47,
            width * 0.64,
            height * 0.46,
          )
          ..cubicTo(
            width * 0.65,
            height * 0.46,
            width * 0.65,
            height * 0.45,
            width * 0.65,
            height * 0.44,
          )
          ..cubicTo(
            width * 0.65,
            height * 0.41,
            width * 0.72,
            height * 0.4,
            width * 0.68,
            height * 0.39,
          )
          ..lineTo(width * 0.68, height * 0.39)
          ..moveTo(width * 0.39, height * 0.32)
          ..cubicTo(
            width * 0.39,
            height * 0.32,
            width * 0.38,
            height * 0.33,
            width * 0.38,
            height * 0.36,
          )
          ..cubicTo(
            width * 0.38,
            height * 0.35,
            width * 0.37,
            height * 0.35,
            width * 0.36,
            height * 0.35,
          )
          ..cubicTo(
            width * 0.3,
            height * 0.25,
            width * 0.44,
            height * 0.29,
            width * 0.47,
            height * 0.24,
          )
          ..cubicTo(
            width * 0.46,
            height * 0.26,
            width * 0.48,
            height * 0.28,
            width * 0.48,
            height * 0.3,
          )
          ..lineTo(width * 0.47, height * 0.33)
          ..cubicTo(
            width * 0.44,
            height * 0.28,
            width * 0.44,
            height * 0.28,
            width * 0.42,
            height * 0.34,
          )
          ..cubicTo(
            width * 0.41,
            height * 0.32,
            width * 0.39,
            height * 0.32,
            width * 0.39,
            height * 0.32,
          )
          ..lineTo(width * 0.39, height * 0.32)
          ..moveTo(width * 0.65, height * 0.29)
          ..cubicTo(
            width * 0.66,
            height * 0.31,
            width * 0.65,
            height * 0.33,
            width * 0.63,
            height * 0.35,
          )
          ..cubicTo(
            width * 0.63,
            height * 0.35,
            width * 0.62,
            height * 0.35,
            width * 0.62,
            height * 0.36,
          )
          ..cubicTo(
            width * 0.61,
            height * 0.3,
            width * 0.61,
            height * 0.31,
            width * 0.58,
            height * 0.34,
          )
          ..cubicTo(
            width * 0.56,
            height * 0.28,
            width * 0.56,
            height * 0.28,
            width * 0.53,
            height * 0.33,
          )
          ..cubicTo(
            width * 0.53,
            height * 0.32,
            width * 0.52,
            height * 0.31,
            width * 0.52,
            height * 0.3,
          )
          ..cubicTo(
            width * 0.52,
            height * 0.28,
            width * 0.54,
            height * 0.26,
            width * 0.53,
            height * 0.24,
          )
          ..cubicTo(
            width * 0.56,
            height * 0.28,
            width * 0.62,
            height * 0.26,
            width * 0.65,
            height * 0.29,
          )
          ..lineTo(width * 0.65, height * 0.29);

    final path2 =
        Path()
          ..moveTo(width * 0.5, height * 0.6)
          ..cubicTo(
            width * 0.54,
            height * 0.59,
            width * 0.72,
            height * 0.55,
            width * 0.72,
            height * 0.89,
          )
          ..lineTo(width * 0.7, height * 1.1)
          ..cubicTo(
            width * 0.5,
            height * 1.34,
            width * 0.27,
            height * 1.22,
            width * 0.27,
            height * 0.86,
          )
          ..lineTo(width * 0.3, height * 0.59)
          ..lineTo(width * 0.5, height * 0.59);

    final path3 =
        Path()
          ..moveTo(width * 0.57, height * 1.1)
          ..cubicTo(
            width * 0.61,
            height * 1.07,
            width * 0.65,
            height * 1.08,
            width * 0.68,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.64,
            height * 1.22,
            width * 0.57,
            height * 1.29,
            width * 0.5,
            height * 1.34,
          )
          ..cubicTo(
            width * 0.5,
            height * 1.34,
            width * 0.39,
            height * 1.28,
            width * 0.32,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.35,
            height * 1.08,
            width * 0.4,
            height * 1.07,
            width * 0.44,
            height * 1.1,
          )
          ..cubicTo(
            width * 0.47,
            height * 1.05,
            width * 0.53,
            height * 1.05,
            width * 0.57,
            height * 1.1,
          )
          ..lineTo(width * 0.57, height * 1.1);

    final path4 =
        Path()
          ..moveTo(width * 0.78, height * 0.81)
          ..cubicTo(
            width * 0.77,
            height * 0.7,
            width * 0.74,
            height * 0.61,
            width * 0.7,
            height * 0.56,
          )
          ..cubicTo(
            width * 0.68,
            height * 0.53,
            width * 0.63,
            height * 0.51,
            width * 0.59,
            height * 0.53,
          )
          ..lineTo(width * 0.59, height * 0.54)
          ..lineTo(width * 0.59, height * 0.54)
          ..lineTo(width * 0.52, height * 0.58)
          ..cubicTo(
            width * 0.51,
            height * 0.57,
            width * 0.51,
            height * 0.57,
            width * 0.5,
            height * 0.57,
          )
          ..lineTo(width * 0.5, height * 0.57)
          ..cubicTo(
            width * 0.49,
            height * 0.57,
            width * 0.49,
            height * 0.57,
            width * 0.49,
            height * 0.57,
          )
          ..lineTo(width * 0.48, height * 0.58)
          ..lineTo(width * 0.42, height * 0.54)
          ..lineTo(width * 0.41, height * 0.54)
          ..cubicTo(
            width * 0.41,
            height * 0.53,
            width * 0.41,
            height * 0.53,
            width * 0.4,
            height * 0.53,
          )
          ..cubicTo(
            width * 0.37,
            height * 0.51,
            width * 0.32,
            height * 0.53,
            width * 0.29,
            height * 0.56,
          )
          ..cubicTo(
            width * 0.26,
            height * 0.61,
            width * 0.23,
            height * 0.7,
            width * 0.22,
            height * 0.81,
          )
          ..cubicTo(
            width * 0.21,
            height * 0.97,
            width * 0.26,
            height * 1.12,
            width * 0.35,
            height * 1.23,
          )
          ..cubicTo(
            width * 0.39,
            height * 1.27,
            width * 0.45,
            height * 1.32,
            width * 0.5,
            height * 1.35,
          )
          ..lineTo(width * 0.5, height * 1.35)
          ..cubicTo(
            width * 0.55,
            height * 1.32,
            width * 0.6,
            height * 1.28,
            width * 0.65,
            height * 1.23,
          )
          ..cubicTo(
            width * 0.74,
            height * 1.12,
            width * 0.78,
            height * 0.97,
            width * 0.78,
            height * 0.81,
          )
          ..lineTo(width * 0.78, height * 0.81)
          ..moveTo(width * 0.53, height * 1.3)
          ..cubicTo(
            width * 0.52,
            height * 1.31,
            width * 0.51,
            height * 1.31,
            width * 0.5,
            height * 1.32,
          )
          ..cubicTo(
            width * 0.49,
            height * 1.31,
            width * 0.48,
            height * 1.31,
            width * 0.47,
            height * 1.3,
          )
          ..lineTo(width * 0.46, height * 1.29)
          ..cubicTo(
            width * 0.44,
            height * 1.26,
            width * 0.41,
            height * 1.23,
            width * 0.39,
            height * 1.19,
          )
          ..cubicTo(
            width * 0.33,
            height * 1.09,
            width * 0.3,
            height * 0.96,
            width * 0.3,
            height * 0.84,
          )
          ..cubicTo(
            width * 0.3,
            height * 0.72,
            width * 0.33,
            height * 0.68,
            width * 0.34,
            height * 0.66,
          )
          ..cubicTo(
            width * 0.35,
            height * 0.67,
            width * 0.36,
            height * 0.68,
            width * 0.38,
            height * 0.68,
          )
          ..cubicTo(
            width * 0.39,
            height * 0.68,
            width * 0.4,
            height * 0.68,
            width * 0.41,
            height * 0.67,
          )
          ..lineTo(width * 0.48, height * 0.62)
          ..cubicTo(
            width * 0.48,
            height * 0.62,
            width * 0.49,
            height * 0.62,
            width * 0.49,
            height * 0.63,
          )
          ..lineTo(width * 0.49, height * 0.63)
          ..lineTo(width * 0.5, height * 0.63)
          ..lineTo(width * 0.5, height * 0.63)
          ..cubicTo(
            width * 0.5,
            height * 0.63,
            width * 0.51,
            height * 0.63,
            width * 0.51,
            height * 0.62,
          )
          ..cubicTo(
            width * 0.51,
            height * 0.62,
            width * 0.52,
            height * 0.62,
            width * 0.52,
            height * 0.62,
          )
          ..lineTo(width * 0.59, height * 0.67)
          ..cubicTo(
            width * 0.59,
            height * 0.68,
            width * 0.61,
            height * 0.68,
            width * 0.62,
            height * 0.68,
          )
          ..cubicTo(
            width * 0.64,
            height * 0.68,
            width * 0.65,
            height * 0.67,
            width * 0.66,
            height * 0.66,
          )
          ..cubicTo(
            width * 0.67,
            height * 0.68,
            width * 0.69,
            height * 0.72,
            width * 0.7,
            height * 0.84,
          )
          ..cubicTo(
            width * 0.7,
            height * 0.96,
            width * 0.67,
            height * 1.09,
            width * 0.61,
            height * 1.19,
          )
          ..cubicTo(
            width * 0.58,
            height * 1.24,
            width * 0.55,
            height * 1.27,
            width * 0.54,
            height * 1.29,
          )
          ..lineTo(width * 0.53, height * 1.3)
          ..lineTo(width * 0.53, height * 1.3);

    final path6 =
        Path()
          ..moveTo(width * 0.46, height * 1.51)
          ..cubicTo(
            width * 0.48,
            height * 1.46,
            width * 0.49,
            height * 1.44,
            width * 0.51,
            height * 1.41,
          )
          ..cubicTo(
            width * 0.55,
            height * 1.33,
            width * 0.62,
            height * 1.3,
            width * 0.69,
            height * 1.27,
          )
          ..lineTo(width * 0.7, height * 1.28)
          ..cubicTo(
            width * 0.69,
            height * 1.29,
            width * 0.69,
            height * 1.32,
            width * 0.71,
            height * 1.32,
          )
          ..cubicTo(
            width * 0.74,
            height * 1.32,
            width * 0.73,
            height * 1.26,
            width * 0.7,
            height * 1.27,
          )
          ..lineTo(width * 0.7, height * 1.27)
          ..cubicTo(
            width * 0.73,
            height * 1.25,
            width * 0.74,
            height * 1.29,
            width * 0.76,
            height * 1.31,
          )
          ..cubicTo(
            width * 0.78,
            height * 1.34,
            width * 0.83,
            height * 1.35,
            width * 0.85,
            height * 1.32,
          )
          ..cubicTo(
            width * 0.83,
            height * 1.3,
            width * 0.82,
            height * 1.27,
            width * 0.78,
            height * 1.26,
          )
          ..cubicTo(
            width * 0.79,
            height * 1.25,
            width * 0.79,
            height * 1.22,
            width * 0.78,
            height * 1.22,
          )
          ..lineTo(width * 0.79, height * 1.21)
          ..cubicTo(
            width * 0.81,
            height * 1.22,
            width * 0.82,
            height * 1.24,
            width * 0.84,
            height * 1.24,
          )
          ..cubicTo(
            width * 0.87,
            height * 1.24,
            width * 0.91,
            height * 1.22,
            width * 0.93,
            height * 1.18,
          )
          ..cubicTo(
            width * 0.89,
            height * 1.18,
            width * 0.85,
            height * 1.15,
            width * 0.82,
            height * 1.17,
          )
          ..cubicTo(
            width * 0.82,
            height * 1.16,
            width * 0.83,
            height * 1.15,
            width * 0.83,
            height * 1.14,
          )
          ..cubicTo(
            width * 0.85,
            height * 1.14,
            width * 0.88,
            height * 1.15,
            width * 0.91,
            height * 1.14,
          )
          ..cubicTo(
            width * 0.94,
            height * 1.12,
            width * 0.96,
            height * 1.08,
            width * 0.96,
            height * 1.04,
          )
          ..cubicTo(
            width * 0.91,
            height * 1.06,
            width * 0.87,
            height * 1.06,
            width * 0.83,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.83,
            height * 1.12,
            width * 0.83,
            height * 1.12,
            width * 0.83,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.87,
            height * 1.01,
            width * 0.9,
            height * 1.07,
            width * 0.95,
            height * 1.01,
          )
          ..cubicTo(
            width * 0.97,
            height * 0.99,
            width * 0.98,
            height * 0.93,
            width * 0.98,
            height * 0.89,
          )
          ..cubicTo(
            width * 0.98,
            height * 0.89,
            width * 0.98,
            height * 0.88,
            width * 0.98,
            height * 0.89,
          )
          ..cubicTo(
            width * 0.97,
            height * 0.9,
            width * 0.95,
            height * 0.91,
            width * 0.94,
            height * 0.92,
          )
          ..cubicTo(
            width * 0.89,
            height * 0.96,
            width * 0.89,
            height * 1.03,
            width * 0.86,
            height * 1.05,
          )
          ..cubicTo(
            width * 0.87,
            height,
            width * 0.9,
            height * 0.99,
            width * 0.9,
            height * 0.94,
          )
          ..cubicTo(
            width * 0.94,
            height * 0.95,
            width * 0.93,
            height * 0.87,
            width * 0.9,
            height * 0.9,
          )
          ..cubicTo(
            width * 0.9,
            height * 0.89,
            width * 0.9,
            height * 0.89,
            width * 0.9,
            height * 0.89,
          )
          ..cubicTo(
            width * 0.95,
            height * 0.87,
            width * 0.99,
            height * 0.79,
            width * 0.96,
            height * 0.72,
          )
          ..cubicTo(
            width * 0.91,
            height * 0.8,
            width * 0.91,
            height * 0.77,
            width * 0.89,
            height * 0.87,
          )
          ..cubicTo(
            width * 0.89,
            height * 0.87,
            width * 0.89,
            height * 0.86,
            width * 0.88,
            height * 0.85,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.79,
            width * 0.91,
            height * 0.79,
            width * 0.93,
            height * 0.72,
          )
          ..cubicTo(
            width * 0.94,
            height * 0.66,
            width * 0.92,
            height * 0.6,
            width * 0.9,
            height * 0.6,
          )
          ..cubicTo(
            width * 0.9,
            height * 0.62,
            width * 0.89,
            height * 0.64,
            width * 0.88,
            height * 0.68,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.67,
            width * 0.86,
            height * 0.7,
            width * 0.87,
            height * 0.72,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.72,
            width * 0.87,
            height * 0.72,
            width * 0.87,
            height * 0.72,
          )
          ..cubicTo(
            width * 0.85,
            height * 0.68,
            width * 0.86,
            height * 0.64,
            width * 0.84,
            height * 0.59,
          )
          ..cubicTo(
            width * 0.82,
            height * 0.56,
            width * 0.8,
            height * 0.54,
            width * 0.78,
            height * 0.52,
          )
          ..lineTo(width * 0.78, height * 0.52)
          ..cubicTo(
            width * 0.77,
            height * 0.58,
            width * 0.79,
            height * 0.64,
            width * 0.84,
            height * 0.68,
          )
          ..cubicTo(
            width * 0.86,
            height * 0.72,
            width * 0.86,
            height * 0.76,
            width * 0.87,
            height * 0.8,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.79,
            width * 0.86,
            height * 0.79,
            width * 0.86,
            height * 0.78,
          )
          ..cubicTo(
            width * 0.85,
            height * 0.72,
            width * 0.82,
            height * 0.67,
            width * 0.78,
            height * 0.64,
          )
          ..cubicTo(
            width * 0.77,
            height * 0.71,
            width * 0.8,
            height * 0.77,
            width * 0.85,
            height * 0.8,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.8,
            width * 0.87,
            height * 0.82,
            width * 0.87,
            height * 0.84,
          )
          ..cubicTo(
            width * 0.86,
            height * 0.81,
            width * 0.86,
            height * 0.85,
            width * 0.86,
            height * 0.86,
          )
          ..cubicTo(
            width * 0.85,
            height * 0.81,
            width * 0.82,
            height * 0.81,
            width * 0.8,
            height * 0.77,
          )
          ..cubicTo(
            width * 0.78,
            height * 0.82,
            width * 0.8,
            height * 0.9,
            width * 0.84,
            height * 0.92,
          )
          ..cubicTo(
            width * 0.84,
            height * 0.99,
            width * 0.87,
            height,
            width * 0.84,
            height * 1.07,
          )
          ..cubicTo(
            width * 0.83,
            height * 1.06,
            width * 0.83,
            height * 1.05,
            width * 0.84,
            height * 1.03,
          )
          ..cubicTo(
            width * 0.85,
            height * 0.97,
            width * 0.82,
            height * 0.92,
            width * 0.8,
            height * 0.88,
          )
          ..cubicTo(
            width * 0.78,
            height * 0.93,
            width * 0.78,
            height,
            width * 0.81,
            height * 1.04,
          )
          ..cubicTo(
            width * 0.82,
            height * 1.05,
            width * 0.83,
            height * 1.07,
            width * 0.83,
            height * 1.08,
          )
          ..lineTo(width * 0.83, height * 1.09)
          ..cubicTo(
            width * 0.82,
            height * 1.09,
            width * 0.82,
            height * 1.09,
            width * 0.82,
            height * 1.1,
          )
          ..cubicTo(
            width * 0.83,
            height * 1.08,
            width * 0.82,
            height * 1.05,
            width * 0.8,
            height * 1.06,
          )
          ..cubicTo(
            width * 0.8,
            height * 1.03,
            width * 0.79,
            height,
            width * 0.77,
            height * 0.99,
          )
          ..cubicTo(
            width * 0.77,
            height * 1.04,
            width * 0.74,
            height * 1.1,
            width * 0.76,
            height * 1.15,
          )
          ..cubicTo(
            width * 0.75,
            height * 1.17,
            width * 0.75,
            height * 1.18,
            width * 0.75,
            height * 1.2,
          )
          ..cubicTo(
            width * 0.73,
            height * 1.24,
            width * 0.69,
            height * 1.25,
            width * 0.67,
            height * 1.26,
          )
          ..cubicTo(
            width * 0.67,
            height * 1.26,
            width * 0.68,
            height * 1.26,
            width * 0.68,
            height * 1.25,
          )
          ..cubicTo(
            width * 0.74,
            height * 1.24,
            width * 0.75,
            height * 1.16,
            width * 0.75,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.75,
            height * 1.11,
            width * 0.74,
            height * 1.11,
            width * 0.74,
            height * 1.12,
          )
          ..cubicTo(
            width * 0.74,
            height * 1.13,
            width * 0.72,
            height * 1.14,
            width * 0.71,
            height * 1.15,
          )
          ..cubicTo(
            width * 0.68,
            height * 1.18,
            width * 0.68,
            height * 1.22,
            width * 0.66,
            height * 1.26,
          )
          ..cubicTo(
            width * 0.55,
            height * 1.31,
            width * 0.51,
            height * 1.35,
            width * 0.44,
            height * 1.5,
          )
          ..cubicTo(
            width * 0.43,
            height * 1.52,
            width * 0.45,
            height * 1.53,
            width * 0.46,
            height * 1.51,
          )
          ..lineTo(width * 0.46, height * 1.51)
          ..moveTo(width * 0.88, height * 0.72)
          ..cubicTo(
            width * 0.88,
            height * 0.75,
            width * 0.89,
            height * 0.78,
            width * 0.88,
            height * 0.8,
          )
          ..cubicTo(
            width * 0.88,
            height * 0.78,
            width * 0.87,
            height * 0.76,
            width * 0.87,
            height * 0.74,
          )
          ..cubicTo(
            width * 0.87,
            height * 0.73,
            width * 0.87,
            height * 0.73,
            width * 0.88,
            height * 0.72,
          )
          ..lineTo(width * 0.88, height * 0.72)
          ..moveTo(width * 0.82, height * 1.1)
          ..lineTo(width * 0.82, height * 1.1)
          ..cubicTo(
            width * 0.81,
            height * 1.11,
            width * 0.8,
            height * 1.12,
            width * 0.8,
            height * 1.12,
          )
          ..lineTo(width * 0.8, height * 1.1)
          ..cubicTo(
            width * 0.81,
            height * 1.11,
            width * 0.81,
            height * 1.1,
            width * 0.82,
            height * 1.1,
          )
          ..lineTo(width * 0.82, height * 1.1)
          ..moveTo(width * 0.76, height * 1.22)
          ..cubicTo(
            width * 0.76,
            height * 1.23,
            width * 0.75,
            height * 1.24,
            width * 0.76,
            height * 1.25,
          )
          ..cubicTo(
            width * 0.75,
            height * 1.25,
            width * 0.74,
            height * 1.26,
            width * 0.72,
            height * 1.26,
          )
          ..cubicTo(
            width * 0.74,
            height * 1.25,
            width * 0.75,
            height * 1.23,
            width * 0.76,
            height * 1.22,
          )
          ..lineTo(width * 0.76, height * 1.22)
          ..lineTo(width * 0.76, height * 1.22);

    final rect = Rect.fromCenter(
      center: Offset(width / 2, height * 1.44),
      width: width * aspectRatio * 0.5,
      height: height * aspectRatio / 10,
    );

    final bounds = path4.getBounds();

    canvas
      ..translate(
        center.dx - bounds.center.dx,
        center.dy - bounds.center.dy * 0.9,
      )
      ..drawPath(path6, paintCreator(customColors[1]))
      ..scale(-1, 1)
      ..translate(-bounds.width * 1.75, 0)
      ..drawPath(path6, paintCreator(customColors[1]))
      ..drawRect(rect, paintCreator(customColors[2]))
      ..drawPath(path, paintCreator()) // Yellow.
      ..drawPath(path2, paintCreator(customColors.first)) // Light blue.
      ..drawPath(path3, paintCreator(customColors.last)) // Green.
      ..drawPath(path4, paintCreator()) // Yellow.
      ; // Darkest green.

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
