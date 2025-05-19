import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the Eritrea flag.
final class EriPainter extends CustomElementsPainter {
  /// Creates a new instance of [EriPainter].
  const EriPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagEriProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    MultiElementPainter(
      List.unmodifiable(properties.skip(1)),
      aspectRatio, // ignore: require_trailing_commas, new dart format.
    ).paint(canvas, size);
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.37, height * 0.05)
      ..cubicTo(
        width * 0.37,
        height * 0.06,
        width * 0.39,
        height * 0.03,
        width * 0.41,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.01,
        width * 0.45,
        height * 0.01,
        width * 0.47,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.05,
        width * 0.37,
        height * 0.06,
        width * 0.36,
        height * 0.07,
      )
      ..lineTo(width * 0.44, height * 0.05)
      ..cubicTo(
        width * 0.38,
        height * 0.14,
        width * 0.31,
        height * 0.1,
        width * 0.29,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.11,
        width * 0.26,
        height * 0.12,
        width * 0.26,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.11,
        width * 0.31,
        height * 0.14,
        width * 0.34,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.18,
        width * 0.22,
        height * 0.21,
        width * 0.2,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.19,
        width * 0.18,
        height * 0.2,
        width * 0.18,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.19,
        width * 0.23,
        height * 0.23,
        width * 0.26,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.26,
        width * 0.17,
        height * 0.3,
        width * 0.13,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.13,
        height * 0.3,
        width * 0.11,
        height * 0.33,
        width * 0.11,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.12,
        height * 0.34,
        width * 0.11,
        height * 0.33,
        width * 0.14,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.32,
        width * 0.19,
        height * 0.31,
        width * 0.2,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.22,
        height * 0.31,
        width * 0.15,
        height * 0.42,
        width * 0.1,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.45,
        width * 0.1,
        height * 0.47,
        width * 0.1,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.11,
        height * 0.47,
        width * 0.12,
        height * 0.46,
        width * 0.13,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.15,
        height * 0.44,
        width * 0.17,
        height * 0.43,
        width * 0.17,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.43,
        width * 0.17,
        height * 0.56,
        width * 0.13,
        height * 0.61,
      )
      ..lineTo(width * 0.15, height * 0.65)
      ..cubicTo(
        width * 0.14,
        height * 0.62,
        width * 0.16,
        height * 0.62,
        width * 0.18,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.19,
        height * 0.57,
        width * 0.19,
        height * 0.52,
        width * 0.19,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.57,
        width * 0.24,
        height * 0.74,
        width * 0.23,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.23,
        height * 0.76,
        width * 0.26,
        height * 0.79,
        width * 0.27,
        height * 0.79,
      )
      ..lineTo(width * 0.27, height * 0.78)
      ..cubicTo(
        width * 0.26,
        height * 0.76,
        width * 0.26,
        height * 0.69,
        width * 0.24,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.65,
        width * 0.35,
        height * 0.76,
        width * 0.37,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.84,
        width * 0.43,
        height * 0.87,
        width * 0.48,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.91,
        width * 0.59,
        height * 0.96,
        width * 0.61,
        height * 0.98,
      )
      ..lineTo(width * 0.59, height)
      ..cubicTo(
        width * 0.57,
        height * 0.99,
        width * 0.5,
        height * 0.91,
        width * 0.48,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.93,
        width * 0.27,
        height * 0.91,
        width * 0.2,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.1,
        height * 0.84,
        width * 0.06,
        height * 0.75,
        width * 0.06,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.09,
        height * 0.77,
        width * 0.2,
        height * 0.79,
        width * 0.23,
        height * 0.79,
      )
      ..lineTo(width * 0.21, height * 0.77)
      ..cubicTo(
        width * 0.18,
        height * 0.78,
        width * 0.08,
        height * 0.73,
        width * 0.05,
        height * 0.68,
      )
      ..cubicTo(0, height * 0.6, 0, height * 0.53, width * 0.01, height * 0.53)
      ..cubicTo(
        width * 0.04,
        height * 0.59,
        width * 0.09,
        height * 0.61,
        width * 0.12,
        height * 0.63,
      )
      ..lineTo(width * 0.11, height * 0.61)
      ..cubicTo(0, height * 0.56, 0, height * 0.44, 0, height * 0.42)
      ..cubicTo(
        0,
        height * 0.37,
        width * 0.02,
        height * 0.34,
        width * 0.02,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.38,
        width * 0.06,
        height * 0.44,
        width * 0.08,
        height * 0.45,
      )
      ..lineTo(width * 0.09, height * 0.44)
      ..cubicTo(
        width * 0.05,
        height * 0.41,
        width * 0.03,
        height * 0.35,
        width * 0.03,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.02,
        height * 0.25,
        width * 0.08,
        height * 0.18,
        width * 0.09,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.08,
        height * 0.25,
        width * 0.09,
        height * 0.28,
        width * 0.1,
        height * 0.3,
      )
      ..lineTo(width * 0.11, height * 0.29)
      ..cubicTo(
        width * 0.06,
        height * 0.2,
        width * 0.14,
        height * 0.08,
        width * 0.19,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.16,
        height * 0.11,
        width * 0.17,
        height * 0.16,
        width * 0.17,
        height * 0.17,
      )
      ..lineTo(width * 0.18, height * 0.16)
      ..cubicTo(
        width * 0.17,
        height * 0.08,
        width * 0.25,
        height * 0.03,
        width * 0.28,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.01,
        width * 0.33,
        height * 0.01,
        width * 0.33,
        height * 0.01,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.02,
        width * 0.26,
        height * 0.04,
        width * 0.26,
        height * 0.1,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.09,
        width * 0.28,
        height * 0.08,
        width * 0.29,
        height * 0.08,
      )
      ..cubicTo(width * 0.3, height * 0.03, width * 0.36, 0, width * 0.4, 0)
      ..lineTo(width * 0.41, 0)
      ..cubicTo(
        width * 0.41,
        0,
        width * 0.36,
        height * 0.05,
        width * 0.37,
        height * 0.05,
      )
      ..lineTo(width * 0.37, height * 0.05);

    final tree = Path()
      ..moveTo(width * 0.52, height * 0.93)
      ..cubicTo(
        width * 0.52,
        height * 0.97,
        width * 0.53,
        height * 0.98,
        width * 0.52,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.98,
        width * 0.48,
        height * 0.99,
        width * 0.47,
        height * 0.99,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.96,
        width * 0.49,
        height * 0.77,
        width * 0.46,
        height * 0.66,
      )
      ..lineTo(width * 0.39, height * 0.59)
      ..cubicTo(
        width * 0.37,
        height * 0.61,
        width * 0.27,
        height * 0.61,
        width * 0.25,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.26,
        height * 0.54,
        width * 0.31,
        height * 0.56,
        width * 0.33,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.54,
        width * 0.24,
        height * 0.5,
        width * 0.25,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.46,
        width * 0.27,
        height * 0.48,
        width * 0.28,
        height * 0.48,
      )
      ..lineTo(width * 0.33, height * 0.48)
      ..cubicTo(
        width * 0.34,
        height * 0.49,
        width * 0.35,
        height * 0.51,
        width * 0.35,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.5,
        width * 0.35,
        height * 0.46,
        width * 0.32,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.44,
        width * 0.36,
        height * 0.45,
        width * 0.38,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.52,
        width * 0.4,
        height * 0.56,
        width * 0.41,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.59,
        width * 0.44,
        height * 0.62,
        width * 0.45,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.6,
        width * 0.43,
        height * 0.57,
        width * 0.46,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.46,
        width * 0.49,
        height * 0.41,
        width * 0.5,
        height * 0.4,
      )
      ..lineTo(width * 0.45, height * 0.35)
      ..cubicTo(
        width * 0.44,
        height * 0.35,
        width * 0.38,
        height * 0.36,
        width * 0.35,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.33,
        width * 0.33,
        height * 0.32,
        width * 0.32,
        height * 0.31,
      )
      ..lineTo(width * 0.38, height * 0.31)
      ..cubicTo(
        width * 0.38,
        height * 0.31,
        width * 0.38,
        height * 0.31,
        width * 0.36,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.28,
        width * 0.33,
        height * 0.27,
        width * 0.33,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.24,
        width * 0.34,
        height * 0.26,
        width * 0.37,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.25,
        width * 0.41,
        height * 0.27,
        width * 0.41,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.27,
        width * 0.41,
        height * 0.24,
        width * 0.39,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.21,
        width * 0.45,
        height * 0.25,
        width * 0.45,
        height * 0.29,
      )
      ..lineTo(width * 0.45, height * 0.33)
      ..cubicTo(
        width * 0.45,
        height * 0.33,
        width * 0.5,
        height * 0.38,
        width * 0.51,
        height * 0.37,
      )
      ..lineTo(width * 0.53, height * 0.29)
      ..cubicTo(
        width * 0.54,
        height * 0.26,
        width * 0.55,
        height * 0.2,
        width * 0.53,
        height * 0.16,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.16,
        width * 0.49,
        height * 0.17,
        width * 0.46,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.12,
        width * 0.44,
        height * 0.1,
        width * 0.45,
        height * 0.09,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.1,
        width * 0.48,
        height * 0.13,
        width * 0.49,
        height * 0.12,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.11,
        width * 0.45,
        height * 0.11,
        width * 0.47,
        height * 0.06,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.05,
        width * 0.47,
        height * 0.05,
        width * 0.48,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.07,
        width * 0.5,
        height * 0.07,
        width * 0.52,
        height * 0.11,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.1,
        width * 0.52,
        height * 0.08,
        width * 0.52,
        height * 0.07,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.06,
        width * 0.52,
        height * 0.05,
        width * 0.51,
        height * 0.04,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.04,
        width * 0.53,
        height * 0.04,
        width * 0.55,
        height * 0.08,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.11,
        width * 0.55,
        height * 0.14,
        width * 0.54,
        height * 0.15,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.16,
        width * 0.56,
        height * 0.17,
        width * 0.56,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.24,
        width * 0.55,
        height * 0.29,
        width * 0.55,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.3,
        width * 0.57,
        height * 0.29,
        width * 0.58,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.26,
        width * 0.58,
        height * 0.23,
        width * 0.59,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.19,
        width * 0.62,
        height * 0.18,
        width * 0.65,
        height * 0.18,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.19,
        width * 0.64,
        height * 0.19,
        width * 0.63,
        height * 0.2,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.21,
        width * 0.62,
        height * 0.22,
        width * 0.62,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.23,
        width * 0.62,
        height * 0.22,
        width * 0.64,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.2,
        width * 0.66,
        height * 0.21,
        width * 0.68,
        height * 0.21,
      )
      ..lineTo(width * 0.7, height * 0.2)
      ..cubicTo(
        width * 0.7,
        height * 0.2,
        width * 0.7,
        height * 0.23,
        width * 0.66,
        height * 0.25,
      )
      ..lineTo(width * 0.66, height * 0.25)
      ..lineTo(width * 0.65, height * 0.26)
      ..cubicTo(
        width * 0.64,
        height * 0.26,
        width * 0.65,
        height * 0.27,
        width * 0.67,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.26,
        width * 0.69,
        height * 0.26,
        width * 0.7,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.25,
        width * 0.7,
        height * 0.27,
        width * 0.67,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.3,
        width * 0.61,
        height * 0.3,
        width * 0.6,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.3,
        width * 0.55,
        height * 0.32,
        width * 0.55,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.36,
        width * 0.51,
        height * 0.43,
        width * 0.48,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.49,
        width * 0.51,
        height * 0.48,
        width * 0.53,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.45,
        width * 0.56,
        height * 0.39,
        width * 0.58,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.36,
        width * 0.62,
        height * 0.36,
        width * 0.63,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.36,
        width * 0.6,
        height * 0.38,
        width * 0.6,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.4,
        width * 0.61,
        height * 0.39,
        width * 0.62,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.38,
        width * 0.65,
        height * 0.39,
        width * 0.66,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.39,
        width * 0.69,
        height * 0.38,
        width * 0.69,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.43,
        width * 0.64,
        height * 0.44,
        width * 0.61,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.46,
        width * 0.65,
        height * 0.46,
        width * 0.68,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.45,
        width * 0.67,
        height * 0.48,
        width * 0.63,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.5,
        width * 0.57,
        height * 0.48,
        width * 0.55,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.48,
        width * 0.52,
        height * 0.5,
        width * 0.51,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.51,
        width * 0.48,
        height * 0.51,
        width * 0.48,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.52,
        width * 0.47,
        height * 0.57,
        width * 0.48,
        height * 0.61,
      )
      ..lineTo(width * 0.51, height * 0.71)
      ..cubicTo(
        width * 0.52,
        height * 0.7,
        width * 0.55,
        height * 0.69,
        width * 0.57,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.62,
        width * 0.55,
        height * 0.54,
        width * 0.65,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.52,
        width * 0.63,
        height * 0.53,
        width * 0.63,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.56,
        width * 0.62,
        height * 0.58,
        width * 0.62,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.58,
        width * 0.64,
        height * 0.56,
        width * 0.67,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.57,
        width * 0.71,
        height * 0.56,
        width * 0.72,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.55,
        width * 0.72,
        height * 0.58,
        width * 0.7,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.62,
        width * 0.66,
        height * 0.63,
        width * 0.66,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.64,
        width * 0.69,
        height * 0.64,
        width * 0.73,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.73,
        height * 0.61,
        width * 0.71,
        height * 0.66,
        width * 0.67,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.69,
        width * 0.6,
        height * 0.69,
        width * 0.57,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.69,
        width * 0.54,
        height * 0.72,
        width * 0.51,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.84,
        width * 0.52,
        height * 0.88,
        width * 0.52,
        height * 0.93,
      )
      ..lineTo(width * 0.52, height * 0.93);

    final bounds = path.getBounds();
    final paint = paintCreator(customProperties.mainColor);

    canvas
      ..translate(
        center.dx - bounds.center.dx / 2,
        center.dy - bounds.center.dy / 2,
      )
      ..drawPath(tree, paint)
      ..drawPath(path, paint)
      ..scale(-1, 1)
      ..translate(-bounds.width * 1.66, 0)
      ..drawPath(path, paint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
