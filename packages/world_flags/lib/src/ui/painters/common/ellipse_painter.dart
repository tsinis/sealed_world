import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering elliptical elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// ellipses based on the specified properties.
final class EllipsePainter extends ElementsPainter {
  /// Creates an [EllipsePainter] with the given properties and aspect ratio.
  const EllipsePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final center = calculateCenter(size);
    final radius = size.height * property.heightFactor / 2;
    final rect = Rect.fromCircle(center: center, radius: radius);
    canvas.drawOval(rect, paintCreator());

    return (canvas: canvas, bounds: rect, child: property.child);
  }
}
