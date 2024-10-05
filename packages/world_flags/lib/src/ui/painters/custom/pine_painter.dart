import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Norfolk Island flag.
final class PinePainter extends CustomElementsPainter {
  /// Creates a new instance of [PinePainter].
  const PinePainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagNfkProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.5, height * 0.07)
      ..lineTo(width * 0.27, height * 0.24)
      ..lineTo(width * 0.5, height * 0.21)
      ..lineTo(width * 0.74, height * 0.24)
      ..lineTo(width * 0.5, height * 0.06)
      ..lineTo(width * 0.5, height * 0.07)
      ..lineTo(width * 0.5, height * 0.07)
      ..moveTo(width * 0.5, height * 0.24)
      ..lineTo(width * 0.21, height * 0.42)
      ..lineTo(width * 0.5, height * 0.39)
      ..lineTo(width * 0.8, height * 0.42)
      ..lineTo(width * 0.5, height * 0.24)
      ..lineTo(width * 0.5, height * 0.24)
      ..moveTo(width * 0.5, height * 0.42)
      ..lineTo(width * 0.14, height * 0.6)
      ..lineTo(width * 0.5, height * 0.56)
      ..lineTo(width * 0.86, height * 0.6)
      ..lineTo(width * 0.5, height * 0.42)
      ..lineTo(width * 0.5, height * 0.42)
      ..lineTo(width * 0.5, height * 0.42)
      ..moveTo(width * 0.5, height * 0.6)
      ..lineTo(width * 0.09, height * 0.78)
      ..lineTo(width * 0.5, height * 0.74)
      ..lineTo(width * 0.92, height * 0.78)
      ..lineTo(width * 0.5, height * 0.6)
      ..lineTo(width * 0.5, height * 0.6);

    final bounds = path.getBounds();
    final paint = paintCreator();
    final rectangle = Rect.fromCenter(
      center: bounds.center + Offset(0, bounds.height * 0.1),
      width: width / 10,
      height: bounds.height,
    );

    canvas
      ..translate(
        center.dx - bounds.center.dx,
        center.dy - bounds.center.dy * 1.1,
      )
      ..drawRect(rectangle, paint)
      ..drawPath(path, paint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
