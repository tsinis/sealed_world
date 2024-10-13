import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Trinidad and Tobago flag.
final class TtoLinePainter extends CustomElementsPainter {
  /// Creates a new instance of [TtoLinePainter].
  const TtoLinePainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final heightFactor = property.heightFactor;
    final widthFactor = property.widthFactor ?? 1;
    final blackPaint = Paint()
      ..color = customColors.firstOrNull ?? const Color(0xff000000);

    final whitePath = Path()
      ..moveTo(0, 0)
      ..lineTo(width * heightFactor, 0)
      ..lineTo(width, height)
      ..lineTo(width - (width * heightFactor), height)
      ..close();

    final blackPath = Path()
      ..moveTo(width * widthFactor, 0)
      ..lineTo(width * heightFactor - (width * widthFactor), 0)
      ..lineTo(width - (width * widthFactor), height)
      ..lineTo(width - (width * heightFactor) + (width * widthFactor), height)
      ..close();

    canvas
      ..drawPath(whitePath, paintCreator())
      ..drawPath(blackPath, blackPaint);

    return (canvas: canvas, bounds: whitePath.getBounds(), child: null);
  }
}
