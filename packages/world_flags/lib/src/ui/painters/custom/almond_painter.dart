import "dart:math";

import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the Guam and Eswatini flag.
final class AlmondPainter extends CustomElementsPainter {
  /// Creates a new instance of [AlmondPainter] for Guam flag.
  const AlmondPainter.gum(super.properties, super.aspectRatio)
    : _isVertical = true;

  /// Creates a new instance of [AlmondPainter] for Eswatini flag.
  const AlmondPainter.swz(super.properties, super.aspectRatio)
    : _isVertical = false;

  final bool _isVertical;

  @override
  double get originalAspectRatio => _isVertical
      ? flagGumProperties.aspectRatio
      : flagSwzProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    /// TODO? Refactor with .save() and .restore() methods.
    MultiElementPainter(
      List.unmodifiable(properties.skip(1)),
      aspectRatio, // ignore: require_trailing_commas, new dart format.
    ).paint(canvas, size);

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
        colors: [customColors.first, customColors.last],
        stops: _isVertical ? const [0.7, 0.8] : const [0.5, 0.5],
      ).createShader(bounds);

    if (_isVertical) {
      canvas
        ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
        ..drawPath(path, paint)
        ..drawPath(
          path,
          paintCreator()
            ..style = PaintingStyle.stroke
            ..strokeCap = StrokeCap.round
            ..strokeWidth = height / 25,
        );
    } else {
      final verticalCenter = bounds.center.dy;
      final horizontalCenter = bounds.center.dx;

      canvas
        ..save()
        ..translate(center.dx - verticalCenter, center.dy - horizontalCenter)
        ..rotate((pi / 180) * 90)
        ..drawPath(path, paint)
        ..translate(-center.dx - verticalCenter, -center.dy - horizontalCenter)
        ..restore();
    }

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
