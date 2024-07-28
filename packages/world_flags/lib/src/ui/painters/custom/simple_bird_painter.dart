part of "../multi_element_painter.dart";

final class SimpleBirdPainter extends MultiElementPainter {
  const SimpleBirdPainter.egy(super.properties, super.aspectRatio)
      : _originalAspectRatio = FlagConstants.defaultAspectRatio;
  const SimpleBirdPainter.mda(super.properties, super.aspectRatio)
      : _originalAspectRatio = 2;

  final double _originalAspectRatio;

  @override
  double get originalAspectRatio => _originalAspectRatio;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final otherColors = (property as CustomElementsProperties?)?.otherColors;

    final adjustedSize = ratioAdjustedSize(size, parent: parent);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = _drawPath(width, height);
    final outlineColor = otherColors?.firstOrNull;
    final color = parent?.child?.mainColor ?? property.mainColor;
    final isSameAsOutline = outlineColor == color || outlineColor == null;
    final mainColor = Paint()
      ..color = isSameAsOutline ? color : color.withOpacity(1 / 3);

    canvas
      ..translate(center.dx - width / 2, center.dy - height / 2)
      ..drawPath(path, mainColor);

    if (!isSameAsOutline) {
      canvas.drawPath(
        path,
        Paint()
          ..color = outlineColor
          ..strokeWidth = height / 20
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke,
      );
    }

    final topColor = otherColors?.elementAtOrNull(1);
    final bottomColor = otherColors?.elementAtOrNull(2);
    if (topColor == null || bottomColor == null) return parent;

    final birdSize = path.getBounds();
    final squareSize = birdSize.height / 3;
    final squareTopLeft =
        Offset((width - squareSize) / 2, (height - squareSize) / 2);

    canvas
      ..drawRect(
        Rect.fromLTWH(
          squareTopLeft.dx,
          squareTopLeft.dy,
          squareSize,
          squareSize / 3,
        ),
        paintCreator(topColor),
      )
      ..drawRect(
        Rect.fromLTWH(
          squareTopLeft.dx,
          squareTopLeft.dy + squareSize / 3,
          squareSize,
          squareSize / 3,
        ),
        paintCreator(bottomColor),
      );

    return (canvas: canvas, bounds: birdSize, child: property.child);
  }

  // ignore: long-method, expected for CustomElementsPainters.
  Path _drawPath(double width, double height) => Path()
    ..moveTo(width, height * 0.2)
    ..lineTo(width * 0.68, height * 0.2)
    ..cubicTo(
      width * 0.74,
      height * 0.14,
      width * 0.72,
      height * 0.03,
      width * 0.63,
      0,
    )
    ..cubicTo(width * 0.6, 0, width * 0.58, 0, width * 0.54, height * 0.02)
    ..cubicTo(
      width * 0.52,
      height * 0.02,
      width * 0.51,
      height * 0.04,
      width * 0.5,
      height * 0.06,
    )
    ..cubicTo(
      width * 0.45,
      height * -0.01,
      width * 0.34,
      0,
      width * 0.3,
      height * 0.08,
    )
    ..cubicTo(
      width * 0.29,
      height * 0.12,
      width * 0.3,
      height * 0.16,
      width * 0.32,
      height * 0.2,
    )
    ..lineTo(0, height * 0.2)
    ..cubicTo(
      0,
      height * 0.28,
      width * 0.07,
      height * 0.35,
      width * 0.16,
      height * 0.35,
    )
    ..lineTo(width * 0.16, height * 0.35)
    ..cubicTo(
      width * 0.16,
      height * 0.43,
      width * 0.22,
      height * 0.5,
      width * 0.31,
      height * 0.5,
    )
    ..cubicTo(
      width * 0.31,
      height * 0.53,
      width * 0.31,
      height * 0.56,
      width * 0.33,
      height * 0.58,
    )
    ..lineTo(width * 0.2, height * 0.71)
    ..lineTo(width * 0.3, height * 0.8)
    ..lineTo(width * 0.44, height * 0.67)
    ..lineTo(width * 0.46, height * 0.67)
    ..lineTo(width * 0.37, height * 0.86)
    ..lineTo(width * 0.5, height)
    ..lineTo(width * 0.63, height * 0.86)
    ..lineTo(width * 0.54, height * 0.67)
    ..lineTo(width * 0.56, height * 0.67)
    ..lineTo(width * 0.7, height * 0.8)
    ..lineTo(width * 0.8, height * 0.71)
    ..lineTo(width * 0.67, height * 0.58)
    ..cubicTo(
      width * 0.69,
      height * 0.56,
      width * 0.69,
      height * 0.53,
      width * 0.69,
      height * 0.5,
    )
    ..cubicTo(
      width * 0.78,
      height * 0.5,
      width * 0.84,
      height * 0.43,
      width * 0.84,
      height * 0.35,
    )
    ..lineTo(width * 0.84, height * 0.35)
    ..cubicTo(
      width * 0.92,
      height * 0.35,
      width,
      height * 0.28,
      width,
      height * 0.2,
    )
    ..lineTo(width, height * 0.2);
}
