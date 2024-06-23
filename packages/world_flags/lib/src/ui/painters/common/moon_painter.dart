import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class MoonPainter extends ElementsPainter {
  const MoonPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final moon = shapeType<Moon>() ?? const Moon();
    final center = calculateCenter(size);
    final widthFactor = property.widthFactor;
    final radius = widthFactor != null
        ? (size.width * widthFactor) / 2
        : calculateSize(size);

    final mainRect = Rect.fromCircle(center: center, radius: radius);
    final mainPath = Path()..addOval(mainRect);
    final x = moon.offset.dx;
    final y = moon.offset.dy;
    final secondCenter = widthFactor == null
        ? Offset(center.dx + x * radius, center.dy + y * radius)
        : Offset(
            center.dx + x * radius * widthFactor,
            center.dy + y * radius * property.heightFactor * aspectRatio,
          );

    final secondRect =
        Rect.fromCircle(center: secondCenter, radius: moon.radius * radius);
    final secondPath = Path()..addOval(secondRect);
    final path = Path.combine(PathOperation.difference, mainPath, secondPath);
    canvas.drawPath(path, colorPaint);

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
