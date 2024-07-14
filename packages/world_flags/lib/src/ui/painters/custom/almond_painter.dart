import 'dart:math';

import 'package:flutter/rendering.dart';
import 'package:world_flags/world_flags.dart';

final class AlmondPainter extends CustomElementsPainter {
  const AlmondPainter.gum(super.properties, super.aspectRatio)
      : _isVertical = true;
  const AlmondPainter.swz(super.properties, super.aspectRatio)
      : _isVertical = false;

  final bool _isVertical;

  @override
  double get originalAspectRatio => _isVertical
      ? flagGumProperties.aspectRatio
      : flagSwzProperties.aspectRatio;

  @override
  // ignore: long-method, CustomElementsPainter have long paintFlagElements :-/.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
    List<Color>? otherColors,
  ]) {
    MultiElementPainter(List.unmodifiable(properties.skip(1)), aspectRatio)
        .paint(canvas, size);

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
      canvas.translate(
        center.dx - bounds.center.dx,
        center.dy - bounds.center.dy,
      );
      canvas.drawPath(path, paint);
      canvas.drawPath(
        path,
        paintCreator()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = height / 25,
      );
    } else {
      canvas
        ..save()
        ..translate(center.dx - bounds.center.dy, center.dy - bounds.center.dx)
        ..rotate(90 * (pi / 180))
        ..drawPath(path, paint)
        ..translate(
          -center.dx - bounds.center.dy,
          -center.dy - bounds.center.dx,
        )
        ..restore();
    }

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
