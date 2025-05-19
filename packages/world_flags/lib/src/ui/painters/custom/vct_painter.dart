import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Saint Vincent and the Grenadines flag.
final class VctPainter extends CustomElementsPainter {
  /// Creates a new instance of [VctPainter].
  const VctPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagVctProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size);
    final height = adjustedSize.height / 2;
    final width = adjustedSize.width / 2;

    final path = Path()
      ..moveTo(width, 0)
      ..lineTo(width * 2, height)
      ..lineTo(width, height * 2)
      ..lineTo(0, height)
      ..close();

    for (final prop in properties) {
      final horizontal = size.width / 2 - width + prop.offset.dx * width * 2;
      final vertical = size.height / 2 - height + prop.offset.dy * height * 2;

      canvas
        ..save()
        ..translate(horizontal, vertical)
        ..drawPath(path, paintCreator())
        ..restore();
    }

    return (canvas: canvas, bounds: path.getBounds(), child: property.child);
  }
}
