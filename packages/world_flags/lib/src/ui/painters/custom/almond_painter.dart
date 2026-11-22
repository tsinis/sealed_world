import "dart:math";

import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Guam and Eswatini flag.
///
/// Palette of Guam: the border of the seal is the main color, the first four
/// `otherColors` fill it with the sky, the palm crown, the sea and the sand.
final class AlmondPainter extends CustomElementsPainter {
  /// Creates a new instance of [AlmondPainter] for Guam flag.
  const new gum(super._properties, super.aspectRatio) : _isVertical = true;

  /// Creates a new instance of [AlmondPainter] for Eswatini flag.
  const new swz(super._properties, super.aspectRatio) : _isVertical = false;

  final bool _isVertical;

  @override
  Record get variant => (super.variant, _isVertical);

  /// Palette indices of the bands of the Guam seal, from its top: the sky, the
  /// palm crown, the sky again, the sea and the sand of the beach.
  static const _gumBands = [0, 1, 1, 0, 0, 2, 2, 3];

  /// Where each of the [_gumBands] is (fully) painted, from the top.
  static const _gumStops = [0.14, 0.19, 0.22, 0.27, 0.6, 0.66, 0.76, 0.84];

  @override
  double get originalAspectRatio => _isVertical
      ? flagGumProperties.aspectRatio
      : flagSwzProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    paintShapes(canvas, size);

    final center = calculateCenter(size);
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final topCenter = Offset(width / 2, 0);
    final bottomCenter = Offset(width / 2, height);

    final path = Path()
      ..moveTo(topCenter.dx, topCenter.dy)
      ..quadraticBezierTo(0, height / 4, 0, height / 2)
      ..quadraticBezierTo(0, height * 3 / 4, bottomCenter.dx, bottomCenter.dy)
      ..quadraticBezierTo(width, height * 3 / 4, width, height / 2)
      ..quadraticBezierTo(width, height / 4, topCenter.dx, topCenter.dy);

    final bounds = path.getBounds();

    final paint = Paint()
      ..shader = LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: _isVertical
            ? [for (final band in _gumBands) customColor(band)]
            : [customColor(0), lastCustomColor],
        stops: _isVertical ? _gumStops : const [0.5, 0.5],
      ).createShader(bounds);

    if (_isVertical) {
      canvas
        ..save()
        ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
        ..drawPath(path, paint)
        ..drawPath(
          path,
          paintCreator()
            ..style = PaintingStyle.stroke
            ..strokeCap = StrokeCap.round
            ..strokeWidth = height / 25,
        )
        ..restore();
    } else {
      canvas
        ..save()
        // A quarter turn maps the center of the bounds to (-dy, dx), so this
        // moves the turned almond's center onto the element's center.
        ..translate(center.dx + bounds.center.dy, center.dy - bounds.center.dx)
        ..rotate(pi / 2)
        ..drawPath(path, paint)
        ..restore();
    }

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
