import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Norfolk Island flag.
final class PinePainter extends CustomElementsPainter {
  /// Creates a new instance of [PinePainter].
  const PinePainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagNfkProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height * 1.26;
    final width = adjustedSize.width * 0.86;

    final path = Path()
      ..moveTo(width * 0.49, height * 0.73)
      ..lineTo(width * 0.49, height * 0.84)
      ..lineTo(width * 0.52, height * 0.84)
      ..cubicTo(
        width * 0.52,
        height * 0.84,
        width * 0.51,
        height * 0.75,
        width * 0.52,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.72,
        width * 0.53,
        height * 0.72,
        width * 0.53,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.72,
        width * 0.55,
        height * 0.73,
        width * 0.55,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.73,
        width * 0.55,
        height * 0.72,
        width * 0.56,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.72,
        width * 0.57,
        height * 0.71,
        width * 0.57,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.71,
        width * 0.64,
        height * 0.73,
        width * 0.65,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.7,
        width * 0.64,
        height * 0.71,
        width * 0.63,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.71,
        width * 0.62,
        height * 0.7,
        width * 0.61,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.7,
        width * 0.57,
        height * 0.7,
        width * 0.57,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.69,
        width * 0.65,
        height * 0.7,
        width * 0.65,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.68,
        width * 0.63,
        height * 0.69,
        width * 0.63,
        height * 0.69,
      )
      ..arcToPoint(
        Offset(width * 0.61, height * 0.69),
        radius: Radius.elliptical(width * 0.02, height * 0.03),
      )
      ..cubicTo(
        width * 0.6,
        height * 0.68,
        width * 0.58,
        height * 0.68,
        width * 0.57,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.68,
        width * 0.56,
        height * 0.68,
        width * 0.56,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.68,
        width * 0.62,
        height * 0.68,
        width * 0.65,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.66,
        height * 0.67,
        width * 0.64,
        height * 0.66,
        width * 0.63,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.66,
        width * 0.61,
        height * 0.67,
        width * 0.6,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.67,
        width * 0.6,
        height * 0.65,
        width * 0.61,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.66,
        width * 0.64,
        height * 0.66,
        width * 0.65,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.64,
        width * 0.64,
        height * 0.63,
        width * 0.62,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.63,
        width * 0.6,
        height * 0.64,
        width * 0.6,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.64,
        width * 0.57,
        height * 0.64,
        width * 0.56,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.64,
        width * 0.6,
        height * 0.63,
        width * 0.6,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.63,
        width * 0.62,
        height * 0.63,
        width * 0.63,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.65,
        height * 0.61,
        width * 0.63,
        height * 0.61,
        width * 0.61,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.61,
        width * 0.6,
        height * 0.62,
        width * 0.59,
        height * 0.62,
      )
      ..arcToPoint(
        Offset(width * 0.57, height * 0.63),
        radius: Radius.elliptical(width * 0.06, height * 0.08),
      )
      ..cubicTo(
        width * 0.57,
        height * 0.62,
        width * 0.59,
        height * 0.61,
        width * 0.59,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.61,
        width * 0.61,
        height * 0.61,
        width * 0.62,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.6,
        width * 0.65,
        height * 0.59,
        width * 0.61,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.6,
        width * 0.6,
        height * 0.6,
        width * 0.59,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.6,
        width * 0.59,
        height * 0.59,
        width * 0.59,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.59,
        width * 0.63,
        height * 0.59,
        width * 0.63,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.57,
        width * 0.6,
        height * 0.58,
        width * 0.6,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.56,
        width * 0.57,
        height * 0.58,
        width * 0.57,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.57,
        width * 0.58,
        height * 0.57,
        width * 0.58,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.57,
        width * 0.59,
        height * 0.56,
        width * 0.6,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.56,
        width * 0.62,
        height * 0.56,
        width * 0.62,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.62,
        height * 0.53,
        width * 0.58,
        height * 0.56,
        width * 0.57,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.56,
        width * 0.58,
        height * 0.54,
        width * 0.58,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.54,
        width * 0.61,
        height * 0.54,
        width * 0.62,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.5,
        width * 0.61,
        height * 0.52,
        width * 0.61,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.5,
        width * 0.59,
        height * 0.53,
        width * 0.57,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.53,
        width * 0.56,
        height * 0.52,
        width * 0.57,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.52,
        width * 0.59,
        height * 0.52,
        width * 0.59,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.49,
        width * 0.61,
        height * 0.5,
        width * 0.61,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.49,
        width * 0.61,
        height * 0.49,
        width * 0.61,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.49,
        width * 0.62,
        height * 0.47,
        width * 0.6,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.47,
        width * 0.56,
        height * 0.47,
        width * 0.56,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.47,
        width * 0.58,
        height * 0.46,
        width * 0.6,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.46,
        width * 0.6,
        height * 0.45,
        width * 0.59,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.57,
        height * 0.45,
        width * 0.57,
        height * 0.44,
        width * 0.57,
        height * 0.44,
      )
      ..lineTo(width * 0.59, height * 0.43)
      ..lineTo(width * 0.59, height * 0.42)
      ..cubicTo(
        width * 0.59,
        height * 0.42,
        width * 0.6,
        height * 0.4,
        width * 0.58,
        height * 0.41,
      )
      ..lineTo(width * 0.56, height * 0.41)
      ..lineTo(width * 0.52, height * 0.42)
      ..cubicTo(
        width * 0.52,
        height * 0.42,
        width * 0.51,
        height * 0.41,
        width * 0.52,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.41,
        width * 0.57,
        height * 0.4,
        width * 0.57,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.58,
        height * 0.4,
        width * 0.57,
        height * 0.38,
        width * 0.55,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.37,
        width * 0.52,
        height * 0.38,
        width * 0.52,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.38,
        width * 0.5,
        height * 0.38,
        width * 0.52,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.37,
        width * 0.55,
        height * 0.37,
        width * 0.55,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.37,
        width * 0.57,
        height * 0.36,
        width * 0.55,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.36,
        width * 0.53,
        height * 0.36,
        width * 0.52,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.36,
        width * 0.55,
        height * 0.36,
        width * 0.55,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.34,
        width * 0.53,
        height * 0.35,
        width * 0.52,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.35,
        width * 0.51,
        height * 0.35,
        width * 0.52,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.34,
        width * 0.54,
        height * 0.34,
        width * 0.55,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.33,
        width * 0.55,
        height * 0.32,
        width * 0.55,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.31,
        width * 0.52,
        height * 0.32,
        width * 0.51,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.31,
        width * 0.54,
        height * 0.31,
        width * 0.55,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.29,
        width * 0.52,
        height * 0.3,
        width * 0.52,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.3,
        width * 0.51,
        height * 0.3,
        width * 0.51,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.29,
        width * 0.55,
        height * 0.3,
        width * 0.54,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.28,
        width * 0.53,
        height * 0.28,
        width * 0.52,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.29,
        width * 0.51,
        height * 0.29,
        width * 0.51,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.28,
        width * 0.54,
        height * 0.28,
        width * 0.54,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.27,
        width * 0.52,
        height * 0.27,
        width * 0.51,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.27,
        width * 0.54,
        height * 0.27,
        width * 0.54,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.25,
        width * 0.52,
        height * 0.26,
        width * 0.51,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.26,
        width * 0.51,
        height * 0.26,
        width * 0.51,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.26,
        width * 0.52,
        height * 0.25,
        width * 0.52,
        height * 0.25,
      )
      ..arcToPoint(
        Offset(width * 0.51, height * 0.24),
        radius: Radius.elliptical(width * 0.03, height * 0.05),
      )
      ..cubicTo(
        width * 0.51,
        height * 0.24,
        width * 0.51,
        height * 0.23,
        width * 0.51,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.23,
        width * 0.52,
        height * 0.23,
        width * 0.52,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.22,
        width * 0.51,
        height * 0.22,
        width * 0.51,
        height * 0.22,
      )
      ..lineTo(width * 0.51, height * 0.22)
      ..cubicTo(
        width * 0.51,
        height * 0.22,
        width * 0.51,
        height * 0.21,
        width * 0.52,
        height * 0.21,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.21,
        width * 0.51,
        height * 0.21,
        width * 0.51,
        height * 0.21,
      )
      ..lineTo(width * 0.5, height * 0.16)
      ..lineTo(width * 0.5, height * 0.2)
      ..lineTo(width * 0.49, height * 0.21)
      ..cubicTo(
        width * 0.49,
        height * 0.21,
        width * 0.5,
        height * 0.21,
        width * 0.5,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.22,
        width * 0.49,
        height * 0.22,
        width * 0.49,
        height * 0.22,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.22,
        width * 0.5,
        height * 0.23,
        width * 0.5,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.24,
        width * 0.49,
        height * 0.24,
        width * 0.49,
        height * 0.24,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.24,
        width * 0.5,
        height * 0.25,
        width * 0.5,
        height * 0.26,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.26,
        width * 0.5,
        height * 0.27,
        width * 0.5,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.27,
        width * 0.48,
        height * 0.24,
        width * 0.47,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.25,
        width * 0.48,
        height * 0.26,
        width * 0.5,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.27,
        width * 0.46,
        height * 0.26,
        width * 0.46,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.27,
        width * 0.5,
        height * 0.28,
        width * 0.5,
        height * 0.28,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.28,
        width * 0.46,
        height * 0.28,
        width * 0.46,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.29,
        width * 0.49,
        height * 0.29,
        width * 0.5,
        height * 0.29,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.3,
        width * 0.5,
        height * 0.3,
        width * 0.49,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.3,
        width * 0.46,
        height * 0.29,
        width * 0.46,
        height * 0.3,
      )
      ..cubicTo(
        width * 0.46,
        height * 0.3,
        width * 0.48,
        height * 0.3,
        width * 0.49,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.31,
        width * 0.44,
        height * 0.3,
        width * 0.44,
        height * 0.31,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.31,
        width * 0.45,
        height * 0.32,
        width * 0.46,
        height * 0.32,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.32,
        width * 0.5,
        height * 0.33,
        width * 0.5,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.33,
        width * 0.46,
        height * 0.32,
        width * 0.45,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.34,
        width * 0.49,
        height * 0.33,
        width * 0.5,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.35,
        width * 0.48,
        height * 0.34,
        width * 0.48,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.34,
        width * 0.45,
        height * 0.34,
        width * 0.44,
        height * 0.34,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.34,
        width * 0.43,
        height * 0.35,
        width * 0.43,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.35,
        width * 0.43,
        height * 0.36,
        width * 0.44,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.35,
        width * 0.44,
        height * 0.36,
        width * 0.44,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.36,
        width * 0.48,
        height * 0.38,
        width * 0.5,
        height * 0.39,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.4,
        width * 0.43,
        height * 0.37,
        width * 0.43,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.37,
        width * 0.41,
        height * 0.38,
        width * 0.44,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.39,
        width * 0.44,
        height * 0.4,
        width * 0.44,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.4,
        width * 0.49,
        height * 0.41,
        width * 0.49,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.43,
        width * 0.46,
        height * 0.41,
        width * 0.45,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.4,
        width * 0.42,
        height * 0.41,
        width * 0.42,
        height * 0.41,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.41,
        width * 0.43,
        height * 0.42,
        width * 0.43,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.42,
        width * 0.41,
        height * 0.42,
        width * 0.41,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.43,
        width * 0.48,
        height * 0.45,
        width * 0.5,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.49,
        width * 0.44,
        height * 0.45,
        width * 0.44,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.45,
        width * 0.45,
        height * 0.45,
        width * 0.44,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.46,
        width * 0.43,
        height * 0.43,
        width * 0.41,
        height * 0.45,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.45,
        width * 0.42,
        height * 0.46,
        width * 0.43,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.47,
        width * 0.43,
        height * 0.47,
        width * 0.44,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.48,
        width * 0.42,
        height * 0.47,
        width * 0.42,
        height * 0.47,
      )
      ..lineTo(width * 0.42, height * 0.48)
      ..cubicTo(
        width * 0.41,
        height * 0.47,
        width * 0.4,
        height * 0.47,
        width * 0.4,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.48,
        width * 0.4,
        height * 0.48,
        width * 0.4,
        height * 0.49,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.5,
        width * 0.41,
        height * 0.5,
        width * 0.43,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.5,
        width * 0.4,
        height * 0.52,
        width * 0.42,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.53,
        width * 0.48,
        height * 0.53,
        width * 0.49,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.57,
        width * 0.48,
        height * 0.54,
        width * 0.47,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.54,
        width * 0.47,
        height * 0.55,
        width * 0.47,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.54,
        width * 0.46,
        height * 0.54,
        width * 0.45,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.54,
        width * 0.45,
        height * 0.54,
        width * 0.45,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.53,
        width * 0.43,
        height * 0.53,
        width * 0.42,
        height * 0.53,
      )
      ..lineTo(width * 0.42, height * 0.54)
      ..cubicTo(
        width * 0.42,
        height * 0.54,
        width * 0.41,
        height * 0.52,
        width * 0.39,
        height * 0.54,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.55,
        width * 0.43,
        height * 0.54,
        width * 0.44,
        height * 0.55,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.56,
        width * 0.44,
        height * 0.57,
        width * 0.44,
        height * 0.57,
      )
      ..lineTo(width * 0.42, height * 0.56)
      ..cubicTo(
        width * 0.42,
        height * 0.56,
        width * 0.4,
        height * 0.55,
        width * 0.39,
        height * 0.56,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.56,
        width * 0.49,
        height * 0.58,
        width * 0.49,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.61,
        width * 0.47,
        height * 0.59,
        width * 0.45,
        height * 0.58,
      )
      ..lineTo(width * 0.44, height * 0.59)
      ..cubicTo(
        width * 0.44,
        height * 0.59,
        width * 0.43,
        height * 0.58,
        width * 0.42,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.58,
        width * 0.42,
        height * 0.59,
        width * 0.42,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.59,
        width * 0.4,
        height * 0.57,
        width * 0.39,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.37,
        height * 0.59,
        width * 0.43,
        height * 0.59,
        width * 0.44,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.61,
        width * 0.42,
        height * 0.6,
        width * 0.42,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.41,
        height * 0.61,
        width * 0.39,
        height * 0.59,
        width * 0.39,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.61,
        width * 0.39,
        height * 0.61,
        width * 0.39,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.61,
        width * 0.45,
        height * 0.62,
        width * 0.45,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.64,
        width * 0.42,
        height * 0.62,
        width * 0.42,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.62,
        width * 0.42,
        height * 0.63,
        width * 0.42,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.42,
        height * 0.64,
        width * 0.4,
        height * 0.62,
        width * 0.4,
        height * 0.63,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.63,
        width * 0.37,
        height * 0.61,
        width * 0.38,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.63,
        width * 0.43,
        height * 0.65,
        width * 0.43,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.65,
        width * 0.41,
        height * 0.65,
        width * 0.41,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.63,
        width * 0.38,
        height * 0.65,
        width * 0.38,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.38,
        height * 0.65,
        width * 0.34,
        height * 0.63,
        width * 0.37,
        height * 0.66,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.68,
        width * 0.39,
        height * 0.67,
        width * 0.39,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.67,
        width * 0.39,
        height * 0.68,
        width * 0.39,
        height * 0.68,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.68,
        width * 0.37,
        height * 0.67,
        width * 0.36,
        height * 0.67,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.67,
        width * 0.33,
        height * 0.68,
        width * 0.36,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.72,
        width * 0.41,
        height * 0.7,
        width * 0.43,
        height * 0.7,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.7,
        width * 0.46,
        height * 0.71,
        width * 0.46,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.72,
        width * 0.44,
        height * 0.69,
        width * 0.42,
        height * 0.72,
      )
      ..cubicTo(
        width * 0.4,
        height * 0.71,
        width * 0.39,
        height * 0.71,
        width * 0.4,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.71,
        width * 0.34,
        height * 0.73,
        width * 0.38,
        height * 0.74,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.74,
        width * 0.45,
        height * 0.73,
        width * 0.45,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.73,
        width * 0.46,
        height * 0.74,
        width * 0.47,
        height * 0.73,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.72,
        width * 0.48,
        height * 0.74,
        width * 0.48,
        height * 0.74,
      )
      ..lineTo(width * 0.49, height * 0.73)
      ..close();

    final bounds = path.getBounds();
    final paint = paintCreator();

    canvas
      ..translate(
        center.dx - bounds.center.dx * 1.008,
        center.dy - bounds.center.dy,
      )
      ..drawPath(path, paint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
