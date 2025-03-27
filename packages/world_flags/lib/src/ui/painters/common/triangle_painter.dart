import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

/// A painter for rendering triangular elements on flags.
///
/// This class extends [ElementsPainter] and provides methods to paint
/// triangles in various orientations based on the specified properties.
final class TrianglePainter extends ElementsPainter {
  /// Creates a [TrianglePainter] with the given properties and aspect ratio.
  const TrianglePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) =>
      switch (property.angle ?? 0) {
        0 => _leftToRightTriangle(canvas, size),
        270 => _bottomToTopTriangle(canvas, size),
        180 => _rightToLeftTriangle(canvas, size),
        _ => _topToBottomTriangle(canvas, size),
      };

  /// Czechia like triangle on the flag.
  FlagParentBounds _leftToRightTriangle(Canvas canvas, Size size) {
    final compensation = (aspectRatio / calculateAspectRatio(size) + 1) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final height = size.height * property.heightFactor;
    final horizontal = (size.width / 2) * (property.offset.dx + 1);
    final vertical = (size.height / 2) * (property.offset.dy + 1);

    final path =
        Path()
          ..moveTo(horizontal, vertical)
          ..lineTo(horizontal + width, vertical + height / 2)
          ..lineTo(horizontal, vertical + height)
          ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  /// American Samoa like triangle on the flag.
  FlagParentBounds _rightToLeftTriangle(Canvas canvas, Size size) {
    final compensation = (aspectRatio / calculateAspectRatio(size) + 1) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final height = size.height * property.heightFactor;
    final horizontal =
        size.width - ((size.width / 2) * (1 - property.offset.dx));
    final vertical = (size.height / 2) * (property.offset.dy + 1);

    final path =
        Path()
          ..moveTo(horizontal, vertical)
          ..lineTo(horizontal - width, vertical + height / 2)
          ..lineTo(horizontal, vertical + height)
          ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  FlagParentBounds _topToBottomTriangle(Canvas canvas, Size size) {
    final width = size.width * (property.widthFactor ?? 1);
    final height = size.height * property.heightFactor;
    final horizontal = size.width * property.offset.dx;
    final vertical =
        (size.height / 2) * (property.offset.dy + 1) - (height / 2);

    final path =
        Path()
          ..moveTo(horizontal, vertical)
          ..lineTo(horizontal + width, vertical)
          ..lineTo(horizontal + width / 2, vertical + height)
          ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  FlagParentBounds _bottomToTopTriangle(Canvas canvas, Size size) {
    final width = size.width * (property.widthFactor ?? 1);
    final height = size.height * property.heightFactor;
    final horizontal = size.width * property.offset.dx;
    final vertical = size.height * (property.offset.dy + 1) / 2 - height;

    final path =
        Path()
          ..moveTo(horizontal, vertical + height)
          ..lineTo(horizontal + width, vertical + height)
          ..lineTo(horizontal + width / 2, vertical)
          ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
