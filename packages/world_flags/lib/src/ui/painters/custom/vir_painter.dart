import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../helpers/extensions/custom_elements_properties_copy_with.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the U.S. Virgin Islands flag.
///
/// Palette: the one of the eagle (see `SimpleBirdPainter`), whose third other
/// color (the sceptre) also colors the letters.
final class VirPainter extends CustomElementsPainter {
  /// Creates a new instance of [VirPainter].
  const new(super._properties, super.aspectRatio);

  /// The height of the eagle, relative to the box of the letters.
  static const _eagleScale = 0.8;

  @override
  double get originalAspectRatio => flagVirProperties.aspectRatio;

  static Path _createVPath(double height) {
    final path = Path();
    final letterHeight = height * 0.25;
    final letterWidth = letterHeight * 0.8;

    path
      ..moveTo(0, 0)
      ..lineTo(letterWidth / 2, letterHeight)
      ..lineTo(letterWidth, 0);

    return path;
  }

  static Path _createIPath(double height) {
    final path = Path();
    final letterHeight = height * 0.25;
    final letterWidth = letterHeight * 0.15;
    final midPoint = letterWidth / 2;

    path
      ..moveTo(0, 0)
      ..lineTo(letterWidth, 0)
      ..moveTo(midPoint, 0)
      ..lineTo(midPoint, letterHeight)
      ..moveTo(0, letterHeight)
      ..lineTo(letterWidth, letterHeight);

    return path;
  }

  @override
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final letterHeight = height / 8;
    final vPath = _createVPath(height);
    final iPath = _createIPath(height);
    final paint = paintCreator(customColor(2))
      ..style = PaintingStyle.stroke
      ..strokeWidth = letterHeight / 3
      ..strokeCap = StrokeCap.square
      ..strokeJoin = StrokeJoin.bevel;

    canvas
      ..save()
      ..translate(width * 0.1, center.dy - letterHeight)
      ..drawPath(vPath, paint)
      ..restore()
      ..save()
      ..translate(width * 1.5, center.dy - letterHeight)
      ..drawPath(iPath, paint)
      ..restore();

    // The eagle stands between the letters, smaller than their box.
    final eagle = customProperties.copyWith(
      heightFactor: customProperties.heightFactor * _eagleScale,
    );

    return SimpleBirdPainter.vir([eagle], aspectRatio).paint(canvas, size);
  }
}
