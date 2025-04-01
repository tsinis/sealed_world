// ignore_for_file: specify_nonobvious_property_types, those are doubles.

import "dart:math";
import "dart:ui";

import "../../../model/shape.dart";
import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering star elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// stars with a specified number of points and radius factor based on the given
/// properties.
final class StarPainter extends ElementsPainter {
  /// Creates a [StarPainter] with the given properties and aspect ratio.
  const StarPainter(super.properties, super.aspectRatio);
  static const _startRadians = pi / 2;
  static const _radiansMultiplier = pi / 180;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final star = shapeType<Star>() ?? const Star();
    final radiansPerPoint = pi * 2 / (star.points * 2);
    final center = calculateCenter(size);
    final radius = calculateSize(size);
    final path = Path();

    for (int i = 0; i <= star.points * 2; i += 1) {
      final radiusFactor = i.isEven ? star.radiusFactor : 1;
      final x =
          center.dx +
          radius * radiusFactor * cos(i * radiansPerPoint + _startRadians);
      final y =
          center.dy +
          radius * radiusFactor * sin(i * radiansPerPoint + _startRadians);
      i == 0 ? path.moveTo(x, y) : path.lineTo(x, y);
    }
    final paint = paintCreator();
    if (!star.isFilled) {
      paint
        ..style = PaintingStyle.stroke
        ..strokeWidth = radius / 8;
    }
    if (property.angle == null) {
      canvas.drawPath(path..close(), paint);
    } else {
      final angleInRadians = (property.angle ?? 0) * _radiansMultiplier;
      canvas
        ..save()
        ..translate(center.dx, center.dy)
        ..rotate(angleInRadians)
        ..translate(-center.dx, -center.dy)
        ..drawPath(path..close(), paint)
        ..restore();
    }

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
