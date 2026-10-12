import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Nepal flag.
final class NplPainter extends CustomElementsPainter {
  /// Creates a new instance of [NplPainter].
  const new(super._properties, super.aspectRatio);

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final height = size.height;
    final width = size.width;
    final path = Path()
      ..moveTo(width * 0.03, height * 0.05)
      ..lineTo(width * 0.87, height * 0.48)
      ..lineTo(width * 0.28, height * 0.48)
      ..lineTo(width * 0.87, height * 0.97)
      ..lineTo(width * 0.03, height * 0.97)
      ..close();

    canvas
      ..drawPath(
        path,
        paintCreator(customColor(0))
          ..style = PaintingStyle.stroke
          ..strokeWidth = height / 15
          ..strokeMiterLimit = 10, // Sharp triangle apexes at any aspect ratio.
      )
      ..drawPath(path, paintCreator());

    paintShapes(canvas, size);

    return null;
  }
}
