import "package:flags/flags.dart";
import "package:flutter/rendering.dart";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class MoonPainter extends ElementsPainter {
  const MoonPainter(super.properties, super.aspectRatio);

  @override
  FlagParentPath paintFlagElements(Canvas canvas, Size size) {
    final moon = shapeType<Moon>() ?? const Moon();
    final center = calculateCenter(size);
    final widthFactor = property.widthFactor;
    final radius = widthFactor != null
        ? (size.width * widthFactor) / 2
        : calculateSize(size);

    final mainRect = Rect.fromCircle(center: center, radius: radius);
    final mainPath = Path()..addOval(mainRect);
    final secondCenter = widthFactor == null
        ? Offset(center.dx + moon.x * radius, center.dy + moon.y * radius)
        : Offset(
            center.dx + moon.x * radius * widthFactor,
            center.dy + moon.y * radius * property.heightFactor * aspectRatio,
          );

    final secondRect =
        Rect.fromCircle(center: secondCenter, radius: moon.radius * radius);
    final secondPath = Path()..addOval(secondRect);
    final crescentPath =
        Path.combine(PathOperation.difference, mainPath, secondPath);
    canvas.drawPath(crescentPath, createPaintWithColor());

    return (
      canvas: canvas,
      bounds: crescentPath.getBounds(),
      children: property.children
    );
  }
}
