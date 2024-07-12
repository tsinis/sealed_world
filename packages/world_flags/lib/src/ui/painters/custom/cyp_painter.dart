import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class CypPainter extends CustomElementsPainter {
  const CypPainter(super.properties, super.aspectRatio);

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
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final silhouette = Path()
      ..moveTo(width * 0.35, height * 0.87)
      ..lineTo(width * 0.35, height * 0.87)
      ..moveTo(width * 0.32, height * 0.83)
      ..cubicTo(
        width * 0.32,
        height * 0.83,
        width * 0.31,
        height * 0.83,
        width * 0.31,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.84,
        width * 0.32,
        height * 0.85,
        width * 0.33,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.86,
        width * 0.34,
        height * 0.87,
        width * 0.35,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.86,
        width * 0.34,
        height * 0.84,
        width * 0.33,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.83,
        width * 0.32,
        height * 0.83,
        width * 0.32,
        height * 0.83,
      )
      ..lineTo(width * 0.32, height * 0.83)
      ..lineTo(width * 0.32, height * 0.83)
      ..moveTo(width * 0.29, height * 0.81)
      ..cubicTo(
        width * 0.3,
        height * 0.82,
        width * 0.3,
        height * 0.82,
        width * 0.31,
        height * 0.82,
      )
      ..lineTo(width * 0.31, height * 0.82)
      ..lineTo(width * 0.31, height * 0.82)
      ..lineTo(width * 0.31, height * 0.82)
      ..cubicTo(
        width * 0.31,
        height * 0.81,
        width * 0.3,
        height * 0.8,
        width * 0.3,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.78,
        width * 0.29,
        height * 0.78,
        width * 0.28,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.77,
        width * 0.28,
        height * 0.77,
        width * 0.28,
        height * 0.77,
      )
      ..lineTo(width * 0.27, height * 0.77)
      ..lineTo(width * 0.27, height * 0.78)
      ..cubicTo(
        width * 0.27,
        height * 0.79,
        width * 0.28,
        height * 0.79,
        width * 0.28,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.8,
        width * 0.29,
        height * 0.81,
        width * 0.29,
        height * 0.81,
      )
      ..lineTo(width * 0.29, height * 0.81)
      ..moveTo(width * 0.36, height * 0.87)
      ..lineTo(width * 0.36, height * 0.87)
      ..cubicTo(
        width * 0.36,
        height * 0.85,
        width * 0.35,
        height * 0.84,
        width * 0.35,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.82,
        width * 0.34,
        height * 0.82,
        width * 0.33,
        height * 0.82,
      )
      ..lineTo(width * 0.33, height * 0.82)
      ..cubicTo(
        width * 0.33,
        height * 0.82,
        width * 0.33,
        height * 0.82,
        width * 0.33,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.34,
        height * 0.83,
        width * 0.34,
        height * 0.85,
        width * 0.35,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.86,
        width * 0.36,
        height * 0.87,
        width * 0.36,
        height * 0.87,
      )
      ..lineTo(width * 0.36, height * 0.87)
      ..moveTo(width * 0.31, height * 0.84)
      ..cubicTo(
        width * 0.31,
        height * 0.84,
        width * 0.31,
        height * 0.84,
        width * 0.31,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.83,
        width * 0.29,
        height * 0.82,
        width * 0.28,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.82,
        width * 0.28,
        height * 0.83,
        width * 0.28,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.28,
        height * 0.84,
        width * 0.28,
        height * 0.84,
        width * 0.29,
        height * 0.84,
      )
      ..lineTo(width * 0.3, height * 0.84)
      ..lineTo(width * 0.31, height * 0.84)
      ..lineTo(width * 0.31, height * 0.84)
      ..moveTo(width * 0.32, height * 0.87)
      ..lineTo(width * 0.32, height * 0.87)
      ..cubicTo(
        width * 0.32,
        height * 0.87,
        width * 0.31,
        height * 0.87,
        width * 0.31,
        height * 0.87,
      )
      ..lineTo(width * 0.31, height * 0.87)
      ..cubicTo(
        width * 0.31,
        height * 0.87,
        width * 0.31,
        height * 0.87,
        width * 0.31,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.88,
        width * 0.31,
        height * 0.88,
        width * 0.31,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.88,
        width * 0.31,
        height * 0.89,
        width * 0.32,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.89,
        width * 0.34,
        height * 0.89,
        width * 0.35,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.88,
        width * 0.34,
        height * 0.87,
        width * 0.33,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.33,
        height * 0.87,
        width * 0.32,
        height * 0.87,
        width * 0.32,
        height * 0.87,
      )
      ..lineTo(width * 0.32, height * 0.87)
      ..moveTo(width * 0.42, height * 0.9)
      ..cubicTo(
        width * 0.41,
        height * 0.87,
        width * 0.39,
        height * 0.87,
        width * 0.39,
        height * 0.87,
      )
      ..lineTo(width * 0.39, height * 0.87)
      ..cubicTo(
        width * 0.38,
        height * 0.87,
        width * 0.38,
        height * 0.87,
        width * 0.38,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.87,
        width * 0.38,
        height * 0.88,
        width * 0.39,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.89,
        width * 0.4,
        height * 0.9,
        width * 0.42,
        height * 0.9,
      )
      ..lineTo(width * 0.42, height * 0.9)
      ..moveTo(width * 0.48, height * 0.94)
      ..cubicTo(
        width * 0.46,
        height * 0.9,
        width * 0.45,
        height * 0.9,
        width * 0.44,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.9,
        width * 0.44,
        height * 0.9,
        width * 0.44,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.9,
        width * 0.44,
        height * 0.91,
        width * 0.44,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.92,
        width * 0.46,
        height * 0.93,
        width * 0.48,
        height * 0.94,
      )
      ..lineTo(width * 0.48, height * 0.94)
      ..moveTo(width * 0.4, height * 0.9)
      ..lineTo(width * 0.4, height * 0.9)
      ..moveTo(width * 0.36, height * 0.88)
      ..lineTo(width * 0.36, height * 0.88)
      ..lineTo(width * 0.35, height * 0.88)
      ..lineTo(width * 0.36, height * 0.88)
      ..cubicTo(
        width * 0.36,
        height * 0.88,
        width * 0.36,
        height * 0.89,
        width * 0.36,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.9,
        width * 0.38,
        height * 0.9,
        width * 0.4,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.88,
        width * 0.37,
        height * 0.88,
        width * 0.36,
        height * 0.88,
      )
      ..lineTo(width * 0.36, height * 0.88)
      ..moveTo(width * 0.44, height * 0.94)
      ..cubicTo(
        width * 0.44,
        height * 0.94,
        width * 0.43,
        height * 0.94,
        width * 0.43,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.95,
        width * 0.43,
        height * 0.95,
        width * 0.43,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.95,
        width * 0.44,
        height * 0.96,
        width * 0.45,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.96,
        width * 0.47,
        height * 0.96,
        width * 0.47,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.94,
        width * 0.45,
        height * 0.94,
        width * 0.44,
        height * 0.94,
      )
      ..lineTo(width * 0.44, height * 0.94)
      ..moveTo(width * 0.38, height * 0.91)
      ..lineTo(width * 0.38, height * 0.91)
      ..cubicTo(
        width * 0.37,
        height * 0.91,
        width * 0.36,
        height * 0.91,
        width * 0.36,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.93,
        width * 0.38,
        height * 0.93,
        width * 0.39,
        height * 0.93,
      )
      ..lineTo(width * 0.39, height * 0.93)
      ..cubicTo(
        width * 0.4,
        height * 0.93,
        width * 0.4,
        height * 0.93,
        width * 0.4,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.93,
        width * 0.4,
        height * 0.92,
        width * 0.4,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.92,
        width * 0.4,
        height * 0.92,
        width * 0.4,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.91,
        width * 0.39,
        height * 0.91,
        width * 0.38,
        height * 0.91,
      )
      ..lineTo(width * 0.38, height * 0.91)
      ..moveTo(width * 0.41, height * 0.93)
      ..cubicTo(
        width * 0.42,
        height * 0.93,
        width * 0.42,
        height * 0.93,
        width * 0.43,
        height * 0.93,
      )
      ..lineTo(width * 0.45, height * 0.93)
      ..cubicTo(
        width * 0.44,
        height * 0.92,
        width * 0.43,
        height * 0.91,
        width * 0.42,
        height * 0.91,
      )
      ..lineTo(width * 0.42, height * 0.91)
      ..cubicTo(
        width * 0.41,
        height * 0.91,
        width * 0.41,
        height * 0.91,
        width * 0.41,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.92,
        width * 0.41,
        height * 0.92,
        width * 0.41,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.92,
        width * 0.41,
        height * 0.92,
        width * 0.41,
        height * 0.93,
      )
      ..lineTo(width * 0.41, height * 0.93)
      ..moveTo(width * 0.66, height * 0.87)
      ..lineTo(width * 0.66, height * 0.87)
      ..moveTo(width * 0.61, height * 0.88)
      ..cubicTo(
        width * 0.62,
        height * 0.88,
        width * 0.62,
        height * 0.87,
        width * 0.62,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.87,
        width * 0.62,
        height * 0.87,
        width * 0.61,
        height * 0.87,
      )
      ..lineTo(width * 0.61, height * 0.87)
      ..cubicTo(
        width * 0.61,
        height * 0.87,
        width * 0.59,
        height * 0.87,
        width * 0.58,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.9,
        width * 0.61,
        height * 0.89,
        width * 0.61,
        height * 0.88,
      )
      ..lineTo(width * 0.61, height * 0.88)
      ..moveTo(width * 0.61, height * 0.9)
      ..lineTo(width * 0.61, height * 0.9)
      ..moveTo(width * 0.61, height * 0.9)
      ..cubicTo(
        width * 0.62,
        height * 0.9,
        width * 0.63,
        height * 0.9,
        width * 0.64,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.89,
        width * 0.64,
        height * 0.88,
        width * 0.64,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.88,
        width * 0.65,
        height * 0.88,
        width * 0.65,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.88,
        width * 0.64,
        height * 0.88,
        width * 0.64,
        height * 0.88,
      )
      ..lineTo(width * 0.64, height * 0.88)
      ..cubicTo(
        width * 0.63,
        height * 0.88,
        width * 0.62,
        height * 0.88,
        width * 0.61,
        height * 0.9,
      )
      ..lineTo(width * 0.61, height * 0.9)
      ..moveTo(width * 0.67, height * 0.86)
      ..cubicTo(
        width * 0.68,
        height * 0.85,
        width * 0.68,
        height * 0.84,
        width * 0.69,
        height * 0.83,
      )
      ..lineTo(width * 0.68, height * 0.83)
      ..lineTo(width * 0.68, height * 0.83)
      ..cubicTo(
        width * 0.68,
        height * 0.83,
        width * 0.68,
        height * 0.83,
        width * 0.67,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.84,
        width * 0.66,
        height * 0.85,
        width * 0.65,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.87,
        width * 0.67,
        height * 0.86,
        width * 0.67,
        height * 0.86,
      )
      ..lineTo(width * 0.67, height * 0.86)
      ..moveTo(width * 0.69, height * 0.82)
      ..cubicTo(
        width * 0.7,
        height * 0.82,
        width * 0.7,
        height * 0.82,
        width * 0.71,
        height * 0.81,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.81,
        width * 0.72,
        height * 0.8,
        width * 0.72,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.79,
        width * 0.73,
        height * 0.79,
        width * 0.73,
        height * 0.78,
      )
      ..lineTo(width * 0.73, height * 0.77)
      ..lineTo(width * 0.72, height * 0.77)
      ..cubicTo(
        width * 0.72,
        height * 0.77,
        width * 0.72,
        height * 0.77,
        width * 0.72,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.78,
        width * 0.7,
        height * 0.78,
        width * 0.7,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.8,
        width * 0.69,
        height * 0.81,
        width * 0.69,
        height * 0.82,
      )
      ..lineTo(width * 0.69, height * 0.82)
      ..lineTo(width * 0.69, height * 0.82)
      ..lineTo(width * 0.69, height * 0.82)
      ..lineTo(width * 0.69, height * 0.82)
      ..moveTo(width * 0.62, height * 0.91)
      ..lineTo(width * 0.62, height * 0.91)
      ..cubicTo(
        width * 0.61,
        height * 0.91,
        width * 0.6,
        height * 0.91,
        width * 0.6,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.92,
        width * 0.6,
        height * 0.92,
        width * 0.6,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.92,
        width * 0.6,
        height * 0.93,
        width * 0.6,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.93,
        width * 0.6,
        height * 0.93,
        width * 0.61,
        height * 0.93,
      )
      ..lineTo(width * 0.61, height * 0.93)
      ..cubicTo(
        width * 0.62,
        height * 0.93,
        width * 0.63,
        height * 0.93,
        width * 0.64,
        height * 0.91,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.91,
        width * 0.63,
        height * 0.91,
        width * 0.62,
        height * 0.91,
      )
      ..lineTo(width * 0.62, height * 0.91)
      ..moveTo(width * 0.58, height * 0.91)
      ..cubicTo(
        width * 0.57,
        height * 0.91,
        width * 0.56,
        height * 0.92,
        width * 0.55,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.93,
        width * 0.56,
        height * 0.93,
        width * 0.57,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.93,
        width * 0.58,
        height * 0.93,
        width * 0.59,
        height * 0.93,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.92,
        width * 0.59,
        height * 0.92,
        width * 0.59,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.92,
        width * 0.59,
        height * 0.92,
        width * 0.59,
        height * 0.92,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.91,
        width * 0.59,
        height * 0.91,
        width * 0.58,
        height * 0.91,
      )
      ..lineTo(width * 0.58, height * 0.91)
      ..lineTo(width * 0.58, height * 0.91)
      ..moveTo(width * 0.51, height * 0.95)
      ..lineTo(width * 0.52, height * 0.95)
      ..lineTo(width * 0.51, height * 0.94)
      ..lineTo(width * 0.5, height * 0.95)
      ..lineTo(width * 0.5, height * 0.95)
      ..lineTo(width * 0.49, height * 0.94)
      ..lineTo(width * 0.48, height * 0.95)
      ..lineTo(width * 0.49, height * 0.95)
      ..lineTo(width * 0.49, height * 0.95)
      ..lineTo(width * 0.47, height * 0.97)
      ..lineTo(width * 0.48, height * 0.98)
      ..lineTo(width * 0.48, height * 0.98)
      ..cubicTo(
        width * 0.48,
        height * 0.98,
        width * 0.48,
        height * 0.98,
        width * 0.48,
        height * 0.98,
      )
      ..lineTo(width * 0.48, height * 0.98)
      ..cubicTo(
        width * 0.49,
        height * 0.98,
        width * 0.49,
        height * 0.98,
        width * 0.49,
        height * 0.98,
      )
      ..lineTo(width * 0.49, height * 0.97)
      ..lineTo(width * 0.5, height * 0.96)
      ..lineTo(width * 0.5, height * 0.96)
      ..cubicTo(
        width * 0.51,
        height * 0.97,
        width * 0.51,
        height * 0.98,
        width * 0.52,
        height * 0.98,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.98,
        width * 0.52,
        height * 0.98,
        width * 0.52,
        height * 0.98,
      )
      ..lineTo(width * 0.52, height * 0.98)
      ..cubicTo(
        width * 0.52,
        height * 0.98,
        width * 0.52,
        height * 0.98,
        width * 0.52,
        height * 0.98,
      )
      ..lineTo(width * 0.52, height * 0.98)
      ..lineTo(width * 0.53, height * 0.97)
      ..lineTo(width * 0.51, height * 0.95)
      ..lineTo(width * 0.51, height * 0.95)
      ..lineTo(width * 0.51, height * 0.95)
      ..moveTo(width * 0.56, height * 0.94)
      ..cubicTo(
        width * 0.55,
        height * 0.94,
        width * 0.54,
        height * 0.94,
        width * 0.53,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.96,
        width * 0.54,
        height * 0.96,
        width * 0.55,
        height * 0.96,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.96,
        width * 0.57,
        height * 0.95,
        width * 0.57,
        height * 0.95,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.95,
        width * 0.57,
        height * 0.95,
        width * 0.57,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.94,
        width * 0.56,
        height * 0.94,
        width * 0.56,
        height * 0.94,
      )
      ..lineTo(width * 0.56, height * 0.94)
      ..moveTo(width * 0.56, height * 0.92)
      ..cubicTo(
        width * 0.56,
        height * 0.91,
        width * 0.56,
        height * 0.9,
        width * 0.56,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.9,
        width * 0.56,
        height * 0.9,
        width * 0.56,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.9,
        width * 0.54,
        height * 0.9,
        width * 0.52,
        height * 0.94,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.93,
        width * 0.55,
        height * 0.92,
        width * 0.56,
        height * 0.92,
      )
      ..lineTo(width * 0.56, height * 0.92)
      ..moveTo(width * 0.69, height * 0.83)
      ..cubicTo(
        width * 0.69,
        height * 0.84,
        width * 0.69,
        height * 0.84,
        width * 0.69,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.84,
        width * 0.69,
        height * 0.84,
        width * 0.7,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.7,
        height * 0.84,
        width * 0.71,
        height * 0.84,
        width * 0.71,
        height * 0.84,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.84,
        width * 0.72,
        height * 0.84,
        width * 0.72,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.83,
        width * 0.72,
        height * 0.82,
        width * 0.72,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.71,
        height * 0.82,
        width * 0.7,
        height * 0.83,
        width * 0.69,
        height * 0.83,
      )
      ..lineTo(width * 0.69, height * 0.83)
      ..moveTo(width * 0.68, height * 0.87)
      ..lineTo(width * 0.68, height * 0.87)
      ..cubicTo(
        width * 0.68,
        height * 0.87,
        width * 0.67,
        height * 0.87,
        width * 0.67,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.87,
        width * 0.65,
        height * 0.88,
        width * 0.65,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.89,
        width * 0.67,
        height * 0.89,
        width * 0.68,
        height * 0.89,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.89,
        width * 0.69,
        height * 0.88,
        width * 0.69,
        height * 0.88,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.88,
        width * 0.69,
        height * 0.88,
        width * 0.69,
        height * 0.88,
      )
      ..lineTo(width * 0.69, height * 0.87)
      ..cubicTo(
        width * 0.69,
        height * 0.87,
        width * 0.68,
        height * 0.87,
        width * 0.68,
        height * 0.87,
      )
      ..lineTo(width * 0.68, height * 0.87)
      ..moveTo(width * 0.67, height * 0.82)
      ..lineTo(width * 0.66, height * 0.82)
      ..cubicTo(
        width * 0.66,
        height * 0.82,
        width * 0.66,
        height * 0.82,
        width * 0.65,
        height * 0.83,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.84,
        width * 0.64,
        height * 0.85,
        width * 0.64,
        height * 0.87,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.87,
        width * 0.65,
        height * 0.86,
        width * 0.65,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.85,
        width * 0.66,
        height * 0.83,
        width * 0.67,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.82,
        width * 0.67,
        height * 0.82,
        width * 0.67,
        height * 0.82,
      )
      ..lineTo(width * 0.67, height * 0.82);

    final branches = Path()
      ..moveTo(width * 0.85, height * 0.32)
      ..cubicTo(
        width * 0.82,
        height * 0.33,
        width * 0.81,
        height * 0.34,
        width * 0.79,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.36,
        width * 0.76,
        height * 0.38,
        width * 0.74,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.39,
        width * 0.7,
        height * 0.42,
        width * 0.67,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.44,
        width * 0.58,
        height * 0.47,
        width * 0.53,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.46,
        width * 0.45,
        height * 0.46,
        width * 0.41,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.47,
        width * 0.42,
        height * 0.56,
        width * 0.37,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.52,
        width * 0.33,
        height * 0.52,
        width * 0.31,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.66,
        width * 0.21,
        height * 0.5,
        width * 0.25,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.62,
        width * 0.24,
        height * 0.65,
        width * 0.26,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.27,
        height * 0.67,
        width * 0.27,
        height * 0.7,
        width * 0.28,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.72,
        width * 0.32,
        height * 0.73,
        width * 0.35,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.74,
        width * 0.4,
        height * 0.72,
        width * 0.42,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.78,
        width * 0.39,
        height * 0.75,
        width * 0.46,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.73,
        width * 0.55,
        height * 0.69,
        width * 0.59,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.66,
        width * 0.59,
        height * 0.63,
        width * 0.61,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.61,
        width * 0.64,
        height * 0.61,
        width * 0.66,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.61,
        width * 0.68,
        height * 0.6,
        width * 0.7,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.62,
        width * 0.71,
        height * 0.62,
        width * 0.71,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.57,
        width * 0.67,
        height * 0.55,
        width * 0.66,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.67,
        height * 0.47,
        width * 0.68,
        height * 0.48,
        width * 0.71,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.42,
        width * 0.78,
        height * 0.41,
        width * 0.8,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.81,
        height * 0.35,
        width * 0.84,
        height * 0.35,
        width * 0.84,
        height * 0.32,
      )
      ..lineTo(width * 0.85, height * 0.32);

    final bounds = branches.getBounds();

    canvas
      ..translate(
        center.dx - bounds.center.dx,
        center.dy - bounds.center.dy * 1.2,
      )
      ..drawPath(branches, paintCreator(customColors.first))
      ..drawPath(silhouette, paintCreator());

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
