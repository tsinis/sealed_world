part of "../multi_element_painter.dart";

final class MkdPainter extends MultiElementPainter {
  const MkdPainter(super.properties, super.aspectRatio);

  static const offsetFactor = 0.5;
  static const rotationOffset = pi / -31;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final center = Offset(size.width / 2, size.height / 2);
    final rayLength = max(size.width, size.height) * sqrt2;

    for (int i = 0; i < 8; i++) {
      final startAngle = ((pi / 4) * i - (pi / 8) / 2) + rotationOffset;
      final endAngle = startAngle + (pi / 8);

      final startOffset = Offset(
        center.dx + (rayLength * offsetFactor) * cos(startAngle + (pi / 8) / 2),
        center.dy + (rayLength * offsetFactor) * sin(startAngle + (pi / 8) / 2),
      );

      final startWidePoint = Offset(
        center.dx + rayLength * cos(startAngle),
        center.dy + rayLength * sin(startAngle),
      );
      final endWidePoint = Offset(
        center.dx + rayLength * cos(endAngle),
        center.dy + rayLength * sin(endAngle),
      );

      final rayPath = Path()
        ..moveTo(center.dx, center.dy)
        ..lineTo(startOffset.dx, startOffset.dy)
        ..lineTo(startWidePoint.dx, startWidePoint.dy)
        ..lineTo(endWidePoint.dx, endWidePoint.dy)
        ..close();

      canvas.drawPath(rayPath, paintCreator());
    }

    return parent;
  }
}
