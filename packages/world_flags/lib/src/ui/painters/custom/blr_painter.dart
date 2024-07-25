import "dart:ui";

import "package:world_flags/world_flags.dart";

final class BlrPainter extends CustomElementsPainter {
  const BlrPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagBlrProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final width = adjustedSize.width;
    final height = size.height;

    final path = Path()
      ..moveTo(width * 0.82, height * 0.4)
      ..lineTo(width * 0.97, height * 0.35)
      ..lineTo(width * 0.99, height * 0.35)
      ..lineTo(width * 0.99, height * 0.33)
      ..lineTo(width * 0.76, height * 0.24)
      ..lineTo(width * 0.48, height * 0.33)
      ..lineTo(width * 0.23, height * 0.24)
      ..lineTo(0, height * 0.32)
      ..lineTo(0, height * 0.35)
      ..lineTo(width * 0.14, height * 0.4)
      ..lineTo(width * 0.24, height * 0.37)
      ..lineTo(width * 0.17, height * 0.35)
      ..lineTo(width * 0.23, height * 0.33)
      ..lineTo(width * 0.38, height * 0.38)
      ..lineTo(width * 0.15, height * 0.47)
      ..lineTo(0, height * 0.42)
      ..lineTo(0, height * 0.48)
      ..lineTo(width * 0.01, height * 0.48)
      ..lineTo(width * 0.17, height * 0.52)
      ..lineTo(0, height * 0.59)
      ..lineTo(0, height * 0.64)
      ..lineTo(width * 0.15, height * 0.59)
      ..lineTo(width * 0.38, height * 0.68)
      ..lineTo(width * 0.25, height * 0.72)
      ..lineTo(width * 0.23, height * 0.73)
      ..lineTo(width * 0.2, height * 0.72)
      ..lineTo(width * 0.17, height * 0.71)
      ..lineTo(width * 0.24, height * 0.68)
      ..lineTo(width * 0.14, height * 0.65)
      ..lineTo(0, height * 0.71)
      ..lineTo(0, height * 0.73)
      ..lineTo(width * 0.24, height * 0.81)
      ..lineTo(width * 0.47, height * 0.72)
      ..lineTo(width * 0.48, height * 0.71)
      ..lineTo(width * 0.49, height * 0.72)
      ..lineTo(width * 0.76, height * 0.82)
      ..lineTo(width, height * 0.72)
      ..lineTo(width, height * 0.7)
      ..lineTo(width * 0.97, height * 0.71)
      ..lineTo(width * 0.83, height * 0.65)
      ..lineTo(width * 0.73, height * 0.68)
      ..lineTo(width * 0.8, height * 0.71)
      ..lineTo(width * 0.77, height * 0.72)
      ..lineTo(width * 0.75, height * 0.73)
      ..lineTo(width * 0.72, height * 0.72)
      ..lineTo(width * 0.59, height * 0.68)
      ..lineTo(width * 0.82, height * 0.59)
      ..lineTo(width * 0.99, height * 0.64)
      ..lineTo(width * 0.99, height * 0.6)
      ..lineTo(width * 0.8, height * 0.52)
      ..lineTo(width * 0.96, height * 0.48)
      ..lineTo(width * 0.99, height * 0.49)
      ..lineTo(width * 0.99, height * 0.41)
      ..lineTo(width * 0.81, height * 0.47)
      ..lineTo(width * 0.58, height * 0.38)
      ..lineTo(width * 0.74, height * 0.33)
      ..lineTo(width * 0.79, height * 0.35)
      ..lineTo(width * 0.72, height * 0.37)
      ..lineTo(width * 0.82, height * 0.4)
      ..lineTo(width * 0.82, height * 0.4)
      ..moveTo(width * 0.71, height * 0.48)
      ..lineTo(width * 0.71, height * 0.56)
      ..lineTo(width * 0.48, height * 0.65)
      ..lineTo(width * 0.26, height * 0.56)
      ..lineTo(width * 0.26, height * 0.48)
      ..lineTo(width * 0.48, height * 0.4)
      ..lineTo(width * 0.71, height * 0.48)
      ..lineTo(width * 0.71, height * 0.48);

    final path2 = Path()
      ..moveTo(width * 0.34, height * 0.48)
      ..lineTo(width * 0.44, height * 0.52)
      ..lineTo(width * 0.34, height * 0.56)
      ..lineTo(width * 0.41, height * 0.57)
      ..lineTo(width * 0.48, height * 0.54)
      ..lineTo(width * 0.56, height * 0.57)
      ..lineTo(width * 0.63, height * 0.56)
      ..lineTo(width * 0.53, height * 0.52)
      ..lineTo(width * 0.63, height * 0.48)
      ..lineTo(width * 0.56, height * 0.47)
      ..lineTo(width * 0.48, height * 0.5)
      ..lineTo(width * 0.41, height * 0.47)
      ..lineTo(width * 0.34, height * 0.48)
      ..lineTo(width * 0.34, height * 0.48)
      ..moveTo(0, height * 0.84)
      ..lineTo(width * 0.11, height * 0.88)
      ..lineTo(width * 0.21, height * 0.84)
      ..lineTo(width * 0.11, height * 0.8)
      ..lineTo(0, height * 0.84)
      ..lineTo(0, height * 0.84)
      ..moveTo(width * 0.26, height * 0.84)
      ..lineTo(width * 0.36, height * 0.88)
      ..lineTo(width * 0.47, height * 0.84)
      ..lineTo(width * 0.36, height * 0.8)
      ..lineTo(width * 0.26, height * 0.84)
      ..lineTo(width * 0.26, height * 0.84)
      ..moveTo(width * 0.5, height * 0.84)
      ..lineTo(width * 0.6, height * 0.88)
      ..lineTo(width * 0.71, height * 0.84)
      ..lineTo(width * 0.6, height * 0.8)
      ..lineTo(width * 0.5, height * 0.84)
      ..lineTo(width * 0.5, height * 0.84)
      ..moveTo(width * 0.77, height * 0.84)
      ..lineTo(width * 0.87, height * 0.88)
      ..lineTo(width * 0.98, height * 0.84)
      ..lineTo(width * 0.87, height * 0.8)
      ..lineTo(width * 0.77, height * 0.84)
      ..lineTo(width * 0.77, height * 0.84)
      ..moveTo(0, height * 0.21)
      ..lineTo(width * 0.11, height * 0.25)
      ..lineTo(width * 0.21, height * 0.21)
      ..lineTo(width * 0.11, height * 0.17)
      ..lineTo(0, height * 0.21)
      ..lineTo(0, height * 0.21)
      ..moveTo(width * 0.26, height * 0.21)
      ..lineTo(width * 0.36, height * 0.25)
      ..lineTo(width * 0.47, height * 0.21)
      ..lineTo(width * 0.36, height * 0.17)
      ..lineTo(width * 0.26, height * 0.21)
      ..lineTo(width * 0.26, height * 0.21)
      ..moveTo(width * 0.5, height * 0.21)
      ..lineTo(width * 0.6, height * 0.25)
      ..lineTo(width * 0.71, height * 0.21)
      ..lineTo(width * 0.6, height * 0.17)
      ..lineTo(width * 0.5, height * 0.21)
      ..lineTo(width * 0.5, height * 0.21)
      ..moveTo(width * 0.77, height * 0.21)
      ..lineTo(width * 0.87, height * 0.25)
      ..lineTo(width * 0.98, height * 0.21)
      ..lineTo(width * 0.87, height * 0.17)
      ..lineTo(width * 0.77, height * 0.21)
      ..lineTo(width * 0.77, height * 0.21);

    final path3 = Path()
      ..moveTo(width * 0.24, height * 0.03)
      ..lineTo(width * 0.41, height * 0.1)
      ..lineTo(width * 0.24, height * 0.16)
      ..lineTo(width * 0.07, height * 0.1)
      ..lineTo(width * 0.24, height * 0.03)
      ..lineTo(width * 0.24, height * 0.03)
      ..moveTo(width * 0.75, height * 0.03)
      ..lineTo(width * 0.93, height * 0.1)
      ..lineTo(width * 0.75, height * 0.16)
      ..lineTo(width * 0.58, height * 0.1)
      ..lineTo(width * 0.75, height * 0.03)
      ..lineTo(width * 0.75, height * 0.03)
      ..moveTo(width * 0.24, height * 0.9)
      ..lineTo(width * 0.41, height * 0.96)
      ..lineTo(width * 0.24, height * 1.03)
      ..lineTo(width * 0.07, height * 0.96)
      ..lineTo(width * 0.22, height * 0.9)
      ..lineTo(width * 0.24, height * 0.89)
      ..moveTo(width * 0.75, height * 0.89)
      ..lineTo(width * 0.93, height * 0.96)
      ..lineTo(width * 0.75, height * 1.03)
      ..lineTo(width * 0.58, height * 0.96)
      ..lineTo(width * 0.75, height * 0.89)
      ..lineTo(width * 0.75, height * 0.89)
      ..close();

    final bounds = path.getBounds();
    final redPaint = paintCreator(customColors.first);
    final rect =
        Rect.fromLTRB(bounds.left, 0, bounds.right - 2, size.height * 1.1);

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawRect(rect, paintCreator())
      ..drawPath(path, redPaint)
      ..drawPath(path2, redPaint)
      ..drawPath(
        path3,
        redPaint
          ..style = PaintingStyle.stroke
          ..strokeWidth = height * 0.025,
      )
      ..restore();

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
