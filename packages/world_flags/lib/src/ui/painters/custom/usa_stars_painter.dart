part of "../multi_element_painter.dart";

final class UsaStarsPainter extends MultiElementPainter {
  UsaStarsPainter(super.properties, super.aspectRatio);

  /// Count of star points.
  static const _points = 5;

  /// Total rows.
  static const _rows = 9;

  /// Max stars in any row.
  static const _starsInRow = 6;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    final child = parent?.child;
    final color = child?.mainColor;
    if (parent == null || color == null) return parent;
    final paint = Paint()..color = color;
    final parentSize = parent.bounds.size;
    final rectSize = Size(parentSize.width, parentSize.height);
    final horizontalSpacing = rectSize.width / _starsInRow;
    final verticalSpacing = (rectSize.height / _rows) * 0.9;
    final outerRadius = rectSize.height * (child?.heightFactor ?? 1);

    for (var row = 0; row < _rows; row++) {
      final isEven = row.isEven;
      final yOffset = verticalSpacing * row + verticalSpacing / 2;
      for (var star = 0; star < (isEven ? _starsInRow : 5); star++) {
        final xOffset = horizontalSpacing * (star + (isEven ? 1 / 2 : 1));
        final starPath = _drawStar(Offset(xOffset, yOffset), outerRadius);
        canvas.drawPath(starPath, paint);
      }
    }

    return parent;
  }

  Path _drawStar(Offset offset, double outerRadius) {
    final path = Path();
    final innerRadius = outerRadius * 0.4;
    for (var i = 0; i < _points * 2; i++) {
      final radius = i.isEven ? outerRadius : innerRadius;
      final angle = (pi / _points) * i - pi / 2;
      final offsetX = offset.dx + cos(angle) * radius;
      final offsetY = offset.dy + outerRadius + sin(angle) * radius;
      i == 0 ? path.moveTo(offsetX, offsetY) : path.lineTo(offsetX, offsetY);
    }

    return path..close();
  }
}
