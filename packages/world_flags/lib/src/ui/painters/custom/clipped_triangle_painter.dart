import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// Painter that clips Bahrain's serrated seam so shader overflow cannot expose
/// triangles outside the white band while reusing the stock triangle logic.
final class ClippedTrianglePainter extends ElementsPainter {
  /// Creates a [ClippedTrianglePainter] with the given [properties]
  /// and [aspectRatio].
  const ClippedTrianglePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    canvas.clipRect(Offset.zero & size); // Clip to flag bounds/parent stripes.

    return _leftToRightTriangle(canvas, size);
  }

  /// Czechia like triangle on the flag.
  FlagParentBounds _leftToRightTriangle(Canvas canvas, Size size) {
    final compensation = (aspectRatio / calculateAspectRatio(size) + 1) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final height = size.height * property.heightFactor;
    final horizontal = (size.width / 2) * (property.offset.dx + 1);
    final vertical = (size.height / 2) * (property.offset.dy + 1);

    final path = Path()
      ..moveTo(horizontal, vertical)
      ..lineTo(horizontal + width, vertical + height / 2)
      ..lineTo(horizontal, vertical + height)
      ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
