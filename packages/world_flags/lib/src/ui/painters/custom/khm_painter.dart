import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Cambodia flag.
final class KhmPainter extends CustomElementsPainter {
  /// Creates a new instance of [KhmPainter].
  const KhmPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKhmProperties.aspectRatio;

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.9, height * 0.81)
      ..lineTo(width * 0.9, height * 0.63)
      ..lineTo(width * 0.8, height * 0.63)
      ..lineTo(width * 0.8, height * 0.38)
      ..lineTo(width * 0.7, height * 0.25)
      ..lineTo(width * 0.6, height * 0.38)
      ..lineTo(width * 0.6, height * 0.13)
      ..lineTo(width * 0.5, height * 0.01)
      ..lineTo(width * 0.4, height * 0.13)
      ..lineTo(width * 0.4, height * 0.38)
      ..lineTo(width * 0.3, height * 0.25)
      ..lineTo(width * 0.2, height * 0.38)
      ..lineTo(width * 0.2, height * 0.63)
      ..lineTo(width * 0.1, height * 0.63)
      ..lineTo(width * 0.1, height * 0.81)
      ..lineTo(0, height * 0.81)
      ..lineTo(0, height * 1.01)
      ..lineTo(width, height * 1.01)
      ..lineTo(width, height * 0.81)
      ..lineTo(width * 0.9, height * 0.81)
      ..lineTo(width * 0.9, height * 0.81);

    final bounds = path.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(path, paintCreator())
      ..drawPath(
        path,
        paintCreator(customColors.first)
          ..style = PaintingStyle.stroke
          ..strokeWidth = height * 0.02,
      );

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
