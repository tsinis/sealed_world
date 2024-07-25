part of "../multi_element_painter.dart";

final class MkdPainter extends MultiElementPainter {
  const MkdPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final width = size.width;
    final height = size.height;
    final center = Offset(width / 2, height / 2);

    final firstRay = Path()
      ..lineTo(width * 0.15, 0)
      ..lineTo(center.dx, center.dy)
      ..close();

    final secondRay = Path()
      ..moveTo(center.dx, center.dy - height * 0.1)
      ..lineTo(center.dx - width * 0.05, 0)
      ..lineTo(center.dx + width * 0.05, 0)
      ..close();

    final thirdRay = Path()
      ..moveTo(width * 0.85, 0)
      ..lineTo(width, 0)
      ..lineTo(center.dx, center.dy)
      ..close();

    final fourthRay = Path()
      ..moveTo(center.dx, center.dy)
      ..lineTo(width, center.dy - height * 0.1)
      ..lineTo(width, center.dy + height * 0.1)
      ..close();

    final paint = paintCreator();

    canvas
      ..save()
      ..drawPath(firstRay, paint)
      ..drawPath(secondRay, paint)
      ..drawPath(thirdRay, paint)
      ..drawPath(fourthRay, paint)
      ..scale(-1, -1)
      ..translate(-width, -height)
      ..drawPath(firstRay, paint)
      ..drawPath(secondRay, paint)
      ..drawPath(thirdRay, paint)
      ..drawPath(fourthRay, paint)
      ..restore();

    return parent;
  }
}
