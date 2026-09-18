// ignore_for_file: avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the USA flag.
final class UsaStarsPainter extends MultiElementPainter {
  /// Creates a new instance of [UsaStarsPainter].
  const new(super._properties, super.aspectRatio);

  /// Count of star points.
  static const _points = 5;

  /// Total rows.
  static const _rows = 9;

  /// Max stars in any row.
  static const _starsInRow = 6;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    // The canton itself is already painted from the flag data, so this only
    // needs its box: fifty stars then go into one path and one draw call.
    final canton = RectanglePainter(
      [properties.first], // Dart 3.8 format.
      aspectRatio,
    ).rectangleBounds(size);
    final horizontalSpacing = canton.width / _starsInRow;
    final verticalSpacing = (canton.height / _rows) * 0.9;
    final starPath = _drawStar(canton.height * customProperties.heightFactor);
    final stars = Path();

    for (int row = 0; row < _rows; row += 1) {
      final isEven = row.isEven;
      final yOffset = verticalSpacing * row + verticalSpacing / 2;
      for (int star = 0; star < (isEven ? _starsInRow : 5); star += 1) {
        final horizontal = horizontalSpacing * (star + (isEven ? 1 / 2 : 1));
        stars.addPath(starPath, Offset(horizontal, yOffset));
      }
    }
    canvas.drawPath(stars, paintCreator(customProperties.mainColor));

    return (canvas: canvas, bounds: canton, child: customProperties.child);
  }

  static Path _drawStar(double outerRadius) {
    final path = Path();
    final innerRadius = outerRadius * 0.4;
    for (int i = 0; i < _points * 2; i += 1) {
      final radius = i.isEven ? outerRadius : innerRadius;
      final angle = (pi / _points) * i - pi / 2;
      final offsetX = cos(angle) * radius;
      final offsetY = outerRadius + sin(angle) * radius;
      i == 0 ? path.moveTo(offsetX, offsetY) : path.lineTo(offsetX, offsetY);
    }
    path.close();

    return path;
  }
}
