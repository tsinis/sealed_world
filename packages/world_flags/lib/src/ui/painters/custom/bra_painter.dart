part of "../multi_element_painter.dart";

/// Painter for the Brazil flag.
final class BraPainter extends MultiElementPainter {
  /// Creates a new instance of [BraPainter].
  const BraPainter(super.properties, super.aspectRatio);

  @override
  double? get originalAspectRatio => flagBraProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final ovalRect = Rect.fromCircle(center: center, radius: height / 3);
    final controlPoint = Offset(center.dx * 1.1, center.dy * 0.8);
    final startPoint = Offset(
      ovalRect.left * 0.65 + ovalRect.width * 1 / 3,
      ovalRect.top + ovalRect.height * 1 / 3,
    );
    final endPoint = Offset(
      ovalRect.right * 1.13 - ovalRect.width * 1 / 4,
      ovalRect.bottom * 1.08 - ovalRect.height * 1 / 2,
    );

    final arc = Path()
      ..moveTo(startPoint.dx, startPoint.dy)
      ..quadraticBezierTo(
        controlPoint.dx,
        controlPoint.dy,
        endPoint.dx,
        endPoint.dy,
      );
    final path = Path()
      ..moveTo(width / 2, height / 2 - height / 2)
      ..lineTo(width / 2 + width / 2, height / 2)
      ..lineTo(width / 2, height / 2 + height / 2)
      ..lineTo(width / 2 - width / 2, height / 2)
      ..close();

    final arcPaint = Paint()
      ..color = customColors[1]
      ..style = PaintingStyle.stroke
      ..strokeWidth = height / 20;

    canvas
      ..save()
      ..translate(center.dx - width / 2, center.dy - height / 2)
      ..drawPath(path, paintCreator())
      ..restore()
      ..drawOval(ovalRect, paintCreator(customColors.first))
      ..drawPath(arc, arcPaint);

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
