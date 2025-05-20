import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Iraq flag.
final class IrqPainter extends CustomElementsPainter {
  /// Creates a new instance of [IrqPainter].
  const IrqPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagIrqProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    const width = 1.0;
    final ratio = calculateAspectRatio(size);
    final wordBoxHeight = width / originalAspectRatio;

    double verticalCoordinate = 0;
    double horizontalCoordinate = 0;
    final scale = ratio > originalAspectRatio
        ? size.height / wordBoxHeight
        : size.width;
    if (ratio > originalAspectRatio) {
      horizontalCoordinate = (size.width - width * scale) / 2;
    } else {
      verticalCoordinate = (size.height - wordBoxHeight * scale) / 2;
    }

    canvas
      ..save()
      ..translate(horizontalCoordinate, verticalCoordinate)
      ..scale(scale, scale);

    final path = Path();
    final height = wordBoxHeight;

    path
      ..moveTo(width / 2, height * 0.57)
      ..lineTo(width * 0.33, height * 0.57)
      ..cubicTo(
        width * 0.33,
        height * 0.59,
        width * 0.31,
        height * 0.6,
        width * 0.3,
        height * 0.6,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.58,
        width * 0.32,
        height * 0.56,
        width * 0.31,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.31,
        height * 0.52,
        width * 0.32,
        height * 0.52,
        width * 0.32,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.54,
        width * 0.34,
        height * 0.53,
        width * 0.35,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.53,
        width * 0.35,
        height * 0.52,
        width * 0.35,
        height * 0.51,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.51,
        width * 0.36,
        height * 0.51,
        width * 0.37,
        height * 0.5,
      )
      ..lineTo(width * 0.37, height * 0.53)
      ..lineTo(width * 0.48, height * 0.53)
      ..lineTo(width * 0.48, height * 0.51)
      ..cubicTo(
        width * 0.48,
        height * 0.5,
        width * 0.48,
        height * 0.5,
        width * 0.47,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.51,
        width * 0.47,
        height * 0.51,
        width * 0.47,
        height * 0.51,
      )
      ..lineTo(width * 0.47, height * 0.52)
      ..cubicTo(
        width * 0.47,
        height * 0.52,
        width * 0.47,
        height * 0.53,
        width * 0.47,
        height * 0.53,
      )
      ..lineTo(width * 0.38, height * 0.53)
      ..lineTo(width * 0.38, height * 0.5)
      ..lineTo(width * 0.45, height * 0.41)
      ..cubicTo(
        width * 0.45,
        height * 0.42,
        width * 0.45,
        height * 0.43,
        width * 0.46,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.45,
        height * 0.43,
        width * 0.45,
        height * 0.43,
        width * 0.45,
        height * 0.43,
      )
      ..lineTo(width * 0.4, height * 0.51)
      ..lineTo(width * 0.46, height * 0.51)
      ..cubicTo(
        width * 0.46,
        height * 0.49,
        width * 0.47,
        height * 0.49,
        width * 0.48,
        height * 0.48,
      )
      ..cubicTo(
        width * 0.48,
        height * 0.49,
        width * 0.49,
        height * 0.49,
        width * 0.49,
        height * 0.51,
      )
      ..lineTo(width * 0.49, height * 0.57)
      ..moveTo(width * 0.51, height * 0.57)
      ..lineTo(width * 0.51, height * 0.41)
      ..cubicTo(
        width * 0.51,
        height * 0.42,
        width * 0.52,
        height * 0.42,
        width * 0.52,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.52,
        height * 0.43,
        width * 0.52,
        height * 0.43,
        width * 0.52,
        height * 0.44,
      )
      ..lineTo(width * 0.52, height * 0.53)
      ..cubicTo(
        width * 0.53,
        height * 0.54,
        width * 0.53,
        height * 0.53,
        width * 0.53,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.54,
        width * 0.54,
        height * 0.56,
        width * 0.54,
        height * 0.57,
      )
      ..lineTo(width * 0.51, height * 0.57)
      ..moveTo(width * 0.62, height * 0.46)
      ..lineTo(width * 0.63, height * 0.45)
      ..lineTo(width * 0.63, height * 0.53)
      ..lineTo(width * 0.64, height * 0.53)
      ..lineTo(width * 0.64, height * 0.44)
      ..cubicTo(
        width * 0.64,
        height * 0.43,
        width * 0.65,
        height * 0.42,
        width * 0.65,
        height * 0.42,
      )
      ..lineTo(width * 0.65, height * 0.57)
      ..lineTo(width * 0.57, height * 0.57)
      ..cubicTo(
        width * 0.57,
        height * 0.54,
        width * 0.57,
        height * 0.51,
        width * 0.59,
        height * 0.51,
      )
      ..lineTo(width * 0.59, height * 0.5)
      ..cubicTo(
        width * 0.59,
        height * 0.5,
        width * 0.59,
        height * 0.5,
        width * 0.59,
        height * 0.5,
      )
      ..lineTo(width * 0.61, height * 0.48)
      ..lineTo(width * 0.61, height * 0.53)
      ..lineTo(width * 0.62, height * 0.53)
      ..lineTo(width * 0.62, height * 0.46)
      ..moveTo(width * 0.61, height * 0.42)
      ..cubicTo(
        width * 0.61,
        height * 0.42,
        width * 0.61,
        height * 0.41,
        width * 0.61,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.4,
        width * 0.61,
        height * 0.4,
        width * 0.61,
        height * 0.4,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.4,
        width * 0.61,
        height * 0.42,
        width * 0.61,
        height * 0.42,
      )
      ..lineTo(width * 0.61, height * 0.42)
      ..moveTo(width * 0.6, height * 0.44)
      ..cubicTo(
        width * 0.59,
        height * 0.43,
        width * 0.59,
        height * 0.43,
        width * 0.6,
        height * 0.43,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.44,
        width * 0.61,
        height * 0.43,
        width * 0.61,
        height * 0.43,
      )
      ..lineTo(width * 0.62, height * 0.43)
      ..cubicTo(
        width * 0.62,
        height * 0.43,
        width * 0.63,
        height * 0.43,
        width * 0.63,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.42,
        width * 0.63,
        height * 0.42,
        width * 0.63,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.63,
        height * 0.44,
        width * 0.62,
        height * 0.44,
        width * 0.62,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.43,
        width * 0.61,
        height * 0.43,
        width * 0.61,
        height * 0.44,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.44,
        width * 0.6,
        height * 0.44,
        width * 0.6,
        height * 0.44,
      )
      ..lineTo(width * 0.6, height * 0.44)
      ..moveTo(width * 0.66, height * 0.57)
      ..lineTo(width * 0.66, height * 0.41)
      ..cubicTo(
        width * 0.67,
        height * 0.42,
        width * 0.68,
        height * 0.42,
        width * 0.68,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.43,
        width * 0.68,
        height * 0.43,
        width * 0.68,
        height * 0.44,
      )
      ..lineTo(width * 0.68, height * 0.53)
      ..cubicTo(
        width * 0.69,
        height * 0.54,
        width * 0.69,
        height * 0.53,
        width * 0.69,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.54,
        width * 0.7,
        height * 0.56,
        width * 0.7,
        height * 0.57,
      )
      ..lineTo(width * 0.66, height * 0.57)
      ..moveTo(width * 0.35, height * 0.59)
      ..cubicTo(
        width * 0.35,
        height * 0.58,
        width * 0.35,
        height * 0.58,
        width * 0.35,
        height * 0.58,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.58,
        width * 0.36,
        height * 0.59,
        width * 0.36,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.36,
        height * 0.59,
        width * 0.35,
        height * 0.6,
        width * 0.35,
        height * 0.59,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.59,
        width * 0.35,
        height * 0.59,
        width * 0.35,
        height * 0.59,
      )
      ..lineTo(width * 0.35, height * 0.59)
      ..moveTo(width * 0.59, height * 0.53)
      ..cubicTo(
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.54,
        width * 0.59,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.52,
        width * 0.59,
        height * 0.53,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.53,
        width * 0.59,
        height * 0.53,
      )
      ..lineTo(width * 0.59, height * 0.53)
      ..close();
    canvas.drawPath(path, paintCreator());

    canvas.restore();

    return null;
  }
}
