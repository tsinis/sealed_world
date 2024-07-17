import 'dart:ui';

import 'package:world_flags/world_flags.dart';

final class BtnPainter extends CustomElementsPainter {
  const BtnPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagBtnProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final center = calculateCenter(size);
    final adjustedSize = ratioAdjustedSize(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width, height * 0.14)
      ..lineTo(width, 0)
      ..lineTo(width * 0.7, 0)
      ..lineTo(width * 0.68, height * 0.02)
      ..cubicTo(
        width * 0.6,
        height * 0.1,
        width * 0.62,
        height * 0.18,
        width * 0.63,
        height * 0.25,
      )
      ..cubicTo(
        width * 0.64,
        height * 0.31,
        width * 0.64,
        height * 0.33,
        width * 0.61,
        height * 0.35,
      )
      ..cubicTo(
        width * 0.59,
        height * 0.37,
        width * 0.56,
        height * 0.37,
        width * 0.5,
        height * 0.36,
      )
      ..cubicTo(
        width * 0.43,
        height * 0.35,
        width * 0.34,
        height * 0.34,
        width * 0.26,
        height * 0.42,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.49,
        width * 0.2,
        height * 0.58,
        width * 0.21,
        height * 0.64,
      )
      ..cubicTo(
        width * 0.21,
        height * 0.7,
        width * 0.22,
        height * 0.72,
        width * 0.19,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.17,
        height * 0.77,
        width * 0.14,
        height * 0.77,
        width * 0.08,
        height * 0.76,
      )
      ..lineTo(0, height * 0.75)
      ..lineTo(0, height * 0.89)
      ..lineTo(width * 0.06, height * 0.9)
      ..lineTo(width * 0.14, height * 0.91)
      ..cubicTo(
        width * 0.17,
        height * 0.91,
        width * 0.2,
        height * 0.9,
        width * 0.23,
        height * 0.89,
      )
      ..lineTo(width * 0.23, height)
      ..lineTo(width * 0.46, height)
      ..lineTo(width * 0.46, height * 0.9)
      ..lineTo(width * 0.35, height * 0.9)
      ..lineTo(width * 0.35, height * 0.83)
      ..lineTo(width * 0.42, height * 0.83)
      ..lineTo(width * 0.42, height * 0.72)
      ..lineTo(width * 0.36, height * 0.72)
      ..cubicTo(
        width * 0.36,
        height * 0.68,
        width * 0.36,
        height * 0.65,
        width * 0.35,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.56,
        width * 0.34,
        height * 0.54,
        width * 0.37,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.5,
        width * 0.42,
        height * 0.5,
        width * 0.48,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.53,
        height * 0.51,
        width * 0.59,
        height * 0.52,
        width * 0.65,
        height * 0.5,
      )
      ..lineTo(width * 0.65, height * 0.61)
      ..lineTo(width * 0.88, height * 0.61)
      ..lineTo(width * 0.88, height * 0.5)
      ..lineTo(width * 0.77, height * 0.5)
      ..lineTo(width * 0.77, height * 0.43)
      ..lineTo(width * 0.85, height * 0.43)
      ..lineTo(width * 0.85, height * 0.32)
      ..lineTo(width * 0.78, height * 0.32)
      ..cubicTo(
        width * 0.78,
        height * 0.29,
        width * 0.78,
        height * 0.26,
        width * 0.78,
        height * 0.23,
      )
      ..cubicTo(
        width * 0.77,
        height * 0.19,
        width * 0.77,
        height * 0.16,
        width * 0.78,
        height * 0.14,
      )
      ..lineTo(width, height * 0.14)
      ..lineTo(width, height * 0.14);

    final bounds = path.getBounds();

    canvas
      ..translate(
        center.dx - bounds.center.dx,
        center.dy - bounds.center.dy,
      )
      ..drawPath(path, paintCreator(customColors.first))
      ..drawPath(
        path,
        paintCreator()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = height * 0.02,
      );

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
