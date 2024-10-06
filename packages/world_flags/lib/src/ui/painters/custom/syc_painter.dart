import "package:flutter/painting.dart";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Seychelles flag.
final class SycPainter extends CustomElementsPainter {
  /// Creates a new instance of [SycPainter].
  const SycPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final white = paintCreator(customColors.last);
    final yellow = paintCreator(customColors.first);

    final bottomLeft = Offset(0, size.height);
    final oneThirdRight = Offset(size.width, size.height / 3);
    final oneThirdTop = Offset(size.width / 3, 0);
    final topRight = Offset(size.width, 0);
    final twoThirdsRight = Offset(size.width, size.height * 2 / 3);
    final twoThirdsTop = Offset(size.width * 2 / 3, 0);

    final yellowPath = Path()
      ..moveTo(bottomLeft.dx, bottomLeft.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..lineTo(oneThirdTop.dx, oneThirdTop.dy)
      ..close();

    final whitePath = Path()
      ..moveTo(bottomLeft.dx, bottomLeft.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..lineTo(twoThirdsRight.dx, twoThirdsRight.dy)
      ..close();

    final redPath = Path()
      ..moveTo(bottomLeft.dx, bottomLeft.dy)
      ..lineTo(twoThirdsTop.dx, twoThirdsTop.dy)
      ..lineTo(topRight.dx, topRight.dy)
      ..lineTo(oneThirdRight.dx, oneThirdRight.dy)
      ..close();

    canvas
      ..drawPath(yellowPath, yellow)
      ..drawPath(whitePath, white)
      ..drawPath(redPath, paintCreator());

    return (canvas: canvas, bounds: redPath.getBounds(), child: property.child);
  }
}
