import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/elements_painter.dart";

final class TrianglePainter extends ElementsPainter {
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
    final compensation = (1 + aspectRatio / calculateAspectRatio(size)) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final height = size.height * property.heightFactor;
    final xOffset = (size.width / 2) * (property.offset.dx + 1);
    final yOffset = (size.height / 2) * (property.offset.dy + 1);

    final path = Path()
      ..moveTo(xOffset, yOffset)
      ..lineTo(xOffset + width, yOffset + height / 2)
      ..lineTo(xOffset, yOffset + height)
      ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  /// American Samoa like triangle on the flag.
  FlagParentBounds _rightToLeftTriangle(Canvas canvas, Size size) {
    final compensation = (1 + aspectRatio / calculateAspectRatio(size)) / 2;
    final width = size.width * (property.widthFactor ?? 1) * compensation;
    final height = size.height * property.heightFactor;
    final xOffset = size.width - ((size.width / 2) * (1 - property.offset.dx));
    final yOffset = (size.height / 2) * (property.offset.dy + 1);

    final path = Path()
      ..moveTo(xOffset, yOffset)
      ..lineTo(xOffset - width, yOffset + height / 2)
      ..lineTo(xOffset, yOffset + height)
      ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  FlagParentBounds _topToBottomTriangle(Canvas canvas, Size size) {
    final width = size.width * (property.widthFactor ?? 1);
    final height = size.height * property.heightFactor;
    final xOffset = size.width * property.offset.dx;
    final yOffset = (size.height / 2) * (property.offset.dy + 1) - (height / 2);

    final path = Path()
      ..moveTo(xOffset, yOffset)
      ..lineTo(xOffset + width, yOffset)
      ..lineTo(xOffset + width / 2, yOffset + height)
      ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }

  FlagParentBounds _bottomToTopTriangle(Canvas canvas, Size size) {
    final width = size.width * (property.widthFactor ?? 1);
    final height = size.height * property.heightFactor;
    final xOffset = size.width * property.offset.dx;
    final yOffset = size.height * (property.offset.dy + 1) / 2 - height;

    final path = Path()
      ..moveTo(xOffset, yOffset + height)
      ..lineTo(xOffset + width, yOffset + height)
      ..lineTo(xOffset + width / 2, yOffset)
      ..close();
    canvas.drawPath(path, paintCreator());

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
