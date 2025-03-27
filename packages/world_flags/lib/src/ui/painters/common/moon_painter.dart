import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering moon elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// moon shapes based on the specified properties.
final class MoonPainter extends ElementsPainter {
  /// Creates a [MoonPainter] with the given properties and aspect ratio.
  const MoonPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final moon = shapeType<Moon>() ?? const Moon();
    final center = calculateCenter(size);
    final widthFactor = property.widthFactor;
    final radius =
        widthFactor == null
            ? calculateSize(size)
            : (size.width * widthFactor) / 2;

    final mainRect = Rect.fromCircle(center: center, radius: radius);
    final mainPath = Path()..addOval(mainRect);
    final x = moon.offset.dx;
    final y = moon.offset.dy;
    final secondCenter =
        widthFactor == null
            ? Offset(center.dx + x * radius, center.dy + y * radius)
            : Offset(
              center.dx + x * radius * widthFactor,
              center.dy + y * radius * property.heightFactor * aspectRatio,
            );

    final secondRect = Rect.fromCircle(
      center: secondCenter,
      radius: moon.radius * radius,
    );
    final secondPath = Path()..addOval(secondRect);
    final path = Path.combine(PathOperation.difference, mainPath, secondPath);
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
