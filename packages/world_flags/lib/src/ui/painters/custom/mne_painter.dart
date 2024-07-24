part of "../multi_element_painter.dart";

final class MnePainter extends MultiElementPainter {
  const MnePainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagMneProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.98, height * 0.46)
      ..lineTo(width * 0.85, height * 0.06)
      ..lineTo(width * 0.8, height * 0.28)
      ..lineTo(width * 0.7, height * 0.41)
      ..lineTo(width * 0.74, height * 0.47)
      ..lineTo(width * 0.7, height * 0.5)
      ..lineTo(width * 0.6, height * 0.37)
      ..lineTo(width * 0.64, height * 0.29)
      ..lineTo(width * 0.77, height * 0.23)
      ..lineTo(width * 0.63, height * 0.18)
      ..lineTo(width * 0.54, height * 0.28)
      ..lineTo(width * 0.52, height * 0.38)
      ..lineTo(width * 0.48, height * 0.28)
      ..lineTo(width * 0.39, height * 0.18)
      ..lineTo(width * 0.26, height * 0.21)
      ..lineTo(width * 0.37, height * 0.28)
      ..lineTo(width * 0.42, height * 0.37)
      ..lineTo(width * 0.32, height * 0.5)
      ..lineTo(width * 0.28, height * 0.47)
      ..lineTo(width * 0.32, height * 0.4)
      ..lineTo(width * 0.22, height * 0.28)
      ..lineTo(width * 0.16, height * 0.06)
      ..lineTo(width * 0.03, height * 0.45)
      ..cubicTo(
        width * 0.1,
        height * 0.6,
        width * 0.1,
        height * 0.6,
        width * 0.3,
        height * 0.71,
      )
      ..lineTo(width * 0.19, height * 0.81)
      ..lineTo(width * 0.09, height * 0.82)
      ..lineTo(width * 0.08, height * 0.91)
      ..lineTo(width * 0.16, height * 0.95)
      ..lineTo(width * 0.24, height * 0.87)
      ..lineTo(width * 0.42, height * 0.81)
      ..lineTo(width * 0.31, height * 0.95)
      ..lineTo(width * 0.52, height * 1.06)
      ..lineTo(width * 0.71, height * 0.95)
      ..lineTo(width * 0.61, height * 0.82)
      ..lineTo(width * 0.61, height * 0.81)
      ..lineTo(width * 0.79, height * 0.87)
      ..lineTo(width * 0.86, height * 0.95)
      ..lineTo(width * 0.94, height * 0.91)
      ..lineTo(width * 0.93, height * 0.82)
      ..lineTo(width * 0.83, height * 0.81)
      ..lineTo(width * 0.68, height * 0.71)
      ..cubicTo(
        width * 0.68,
        height * 0.71,
        width * 0.92,
        height * 0.68,
        width * 0.98,
        height * 0.46,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.52, height * 0.65)
      ..lineTo(width * 0.52, height * 0.77)
      ..cubicTo(width * 0.52, height * 0.77, width * 0.5, height * 0.74,
          width * 0.45, height * 0.73)
      ..lineTo(width * 0.36, height * 0.65)
      ..lineTo(width * 0.52, height * 0.65)
      ..lineTo(width * 0.52, height * 0.65)
      ..moveTo(width * 0.52, height * 0.65)
      ..lineTo(width * 0.52, height * 0.77)
      ..cubicTo(width * 0.52, height * 0.77, width * 0.53, height * 0.74,
          width * 0.59, height * 0.73)
      ..lineTo(width * 0.67, height * 0.65)
      ..lineTo(width * 0.52, height * 0.65)
      ..lineTo(width * 0.52, height * 0.65);

    final path3 = Path()
      ..moveTo(width * 0.4, height * 0.41)
      ..cubicTo(width * 0.4, height * 0.41, width * 0.47, height * 0.44,
          width * 0.52, height * 0.41)
      ..lineTo(width * 0.52, height * 0.64)
      ..lineTo(width * 0.36, height * 0.64)
      ..cubicTo(width * 0.36, height * 0.64, width * 0.36, height * 0.59,
          width * 0.38, height * 0.53)
      ..lineTo(width * 0.37, height * 0.45)
      ..lineTo(width * 0.4, height * 0.41)
      ..lineTo(width * 0.4, height * 0.41)
      ..moveTo(width * 0.64, height * 0.41)
      ..cubicTo(width * 0.64, height * 0.41, width * 0.57, height * 0.44,
          width * 0.52, height * 0.41)
      ..lineTo(width * 0.52, height * 0.64)
      ..lineTo(width * 0.67, height * 0.64)
      ..cubicTo(width * 0.67, height * 0.64, width * 0.68, height * 0.59,
          width * 0.66, height * 0.53)
      ..lineTo(width * 0.67, height * 0.45)
      ..lineTo(width * 0.64, height * 0.41)
      ..lineTo(width * 0.64, height * 0.41)
      ..moveTo(width, height * 0.8)
      ..cubicTo(width * 1.01, height * 0.86, width * 0.95, height * 0.9,
          width * 0.89, height * 0.87)
      ..cubicTo(width * 0.86, height * 0.86, width * 0.85, height * 0.84,
          width * 0.85, height * 0.81)
      ..cubicTo(width * 0.85, height * 0.75, width * 0.91, height * 0.72,
          width * 0.96, height * 0.75)
      ..cubicTo(width * 0.98, height * 0.76, width, height * 0.78, width,
          height * 0.8)
      ..lineTo(width, height * 0.8);

    final path4 = Path()
      ..moveTo(width * 0.62, height * 0.16)
      ..cubicTo(width * 0.62, height * 0.18, width * 0.57, height * 0.2,
          width * 0.52, height * 0.2)
      ..cubicTo(width * 0.47, height * 0.2, width * 0.43, height * 0.18,
          width * 0.43, height * 0.16)
      ..cubicTo(width * 0.43, height * 0.14, width * 0.47, height * 0.12,
          width * 0.52, height * 0.12)
      ..cubicTo(width * 0.57, height * 0.12, width * 0.61, height * 0.14,
          width * 0.61, height * 0.16)
      ..lineTo(width * 0.62, height * 0.16);

    final path5 = Path()
      ..moveTo(width * 0.52, 0)
      ..cubicTo(width * 0.44, 0, width * 0.37, height * 0.04, width * 0.37,
          height * 0.08)
      ..cubicTo(width * 0.37, height * 0.12, width * 0.44, height * 0.16,
          width * 0.52, height * 0.16)
      ..cubicTo(width * 0.6, height * 0.16, width * 0.67, height * 0.12,
          width * 0.67, height * 0.08)
      ..cubicTo(width * 0.67, height * 0.04, width * 0.6, 0, width * 0.52, 0)
      ..lineTo(width * 0.52, 0)
      ..moveTo(width * 0.42, height * 0.11)
      ..cubicTo(width * 0.4, height * 0.11, width * 0.4, height * 0.09,
          width * 0.4, height * 0.07)
      ..lineTo(width * 0.43, height * 0.04)
      ..cubicTo(width * 0.43, height * 0.04, width * 0.41, height * 0.08,
          width * 0.43, height * 0.09)
      ..cubicTo(width * 0.44, height * 0.11, width * 0.44, height * 0.12,
          width * 0.42, height * 0.11)
      ..lineTo(width * 0.42, height * 0.11)
      ..moveTo(width * 0.48, height * 0.11)
      ..cubicTo(width * 0.47, height * 0.11, width * 0.47, height * 0.1,
          width * 0.47, height * 0.09)
      ..cubicTo(width * 0.46, height * 0.08, width * 0.46, height * 0.07,
          width * 0.46, height * 0.06)
      ..lineTo(width * 0.5, height * 0.03)
      ..cubicTo(width * 0.5, height * 0.03, width * 0.49, height * 0.06,
          width * 0.49, height * 0.08)
      ..lineTo(width * 0.51, height * 0.1)
      ..cubicTo(width * 0.51, height * 0.1, width * 0.49, height * 0.11,
          width * 0.48, height * 0.11)
      ..lineTo(width * 0.48, height * 0.11)
      ..moveTo(width * 0.57, height * 0.09)
      ..cubicTo(width * 0.57, height * 0.1, width * 0.57, height * 0.11,
          width * 0.56, height * 0.11)
      ..lineTo(width * 0.53, height * 0.1)
      ..cubicTo(width * 0.53, height * 0.1, width * 0.54, height * 0.09,
          width * 0.54, height * 0.08)
      ..lineTo(width * 0.54, height * 0.03)
      ..cubicTo(width * 0.54, height * 0.03, width * 0.57, height * 0.04,
          width * 0.58, height * 0.06)
      ..cubicTo(width * 0.58, height * 0.07, width * 0.57, height * 0.08,
          width * 0.57, height * 0.09)
      ..lineTo(width * 0.57, height * 0.09)
      ..moveTo(width * 0.62, height * 0.11)
      ..cubicTo(width * 0.6, height * 0.12, width * 0.6, height * 0.11,
          width * 0.61, height * 0.09)
      ..lineTo(width * 0.61, height * 0.04)
      ..cubicTo(width * 0.61, height * 0.04, width * 0.63, height * 0.06,
          width * 0.64, height * 0.07)
      ..cubicTo(width * 0.64, height * 0.09, width * 0.64, height * 0.11,
          width * 0.62, height * 0.11)
      ..lineTo(width * 0.62, height * 0.11)
      ..moveTo(width, height * 0.81)
      ..cubicTo(width, height * 0.82, width * 0.99, height * 0.83, width * 0.98,
          height * 0.82)
      ..lineTo(width * 0.87, height * 0.8)
      ..cubicTo(width * 0.86, height * 0.79, width * 0.85, height * 0.78,
          width * 0.86, height * 0.77)
      ..cubicTo(width * 0.86, height * 0.76, width * 0.87, height * 0.76,
          width * 0.88, height * 0.76)
      ..lineTo(width * 0.99, height * 0.79)
      ..cubicTo(width, height * 0.79, width, height * 0.8, width, height * 0.81)
      ..lineTo(width, height * 0.81);

    final path6 = Path()
      ..moveTo(width * 0.94, height * 0.8)
      ..cubicTo(width * 0.94, height * 0.81, width * 0.93, height * 0.81,
          width * 0.92, height * 0.81)
      ..cubicTo(width * 0.91, height * 0.8, width * 0.91, height * 0.8,
          width * 0.91, height * 0.79)
      ..lineTo(width * 0.93, height * 0.69)
      ..cubicTo(width * 0.94, height * 0.68, width * 0.95, height * 0.67,
          width * 0.96, height * 0.68)
      ..cubicTo(width * 0.97, height * 0.68, width * 0.97, height * 0.69,
          width * 0.97, height * 0.7)
      ..lineTo(width * 0.94, height * 0.8)
      ..lineTo(width * 0.94, height * 0.8)
      ..moveTo(width * 0.22, height * 1.04)
      ..cubicTo(width * 0.21, height * 1.05, width * 0.2, height * 1.04,
          width * 0.19, height * 1.02)
      ..lineTo(width * 0.01, height * 0.58)
      ..cubicTo(0, height * 0.56, 0, height * 0.55, width * 0.01, height * 0.54)
      ..lineTo(width * 0.02, height * 0.54)
      ..cubicTo(width * 0.02, height * 0.54, width * 0.05, height * 0.54,
          width * 0.05, height * 0.56)
      ..lineTo(width * 0.24, height)
      ..cubicTo(width * 0.24, height * 1.02, width * 0.23, height * 1.04,
          width * 0.23, height * 1.04)
      ..lineTo(width * 0.22, height * 1.04)
      ..lineTo(width * 0.22, height * 1.04)
      ..moveTo(width * 0.44, height * 0.54)
      ..lineTo(width * 0.59, height * 0.54)
      ..lineTo(width * 0.59, height * 0.64)
      ..lineTo(width * 0.44, height * 0.64)
      ..lineTo(width * 0.44, height * 0.54)
      ..lineTo(width * 0.44, height * 0.54);

    final bounds = path5.getBounds();
    final paint = paintCreator();

    canvas
      ..save()
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paint) // Yellow.
      ..drawPath(path2, paintCreator(customColors.first)) // Green.
      ..drawPath(path3, paintCreator(customColors.last)) // Blue.
      ..drawPath(path4, paint) // Yellow.
      ..drawPath(path5, paint) // Yellow.
      ..drawPath(path6, paint) // Yellow.
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
