import "dart:ui";

import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../multi_element_painter.dart";

/// Painter for the simple eagle.
final class EaglePainter extends CustomElementsPainter {
  /// Creates a new instance of [EaglePainter].
  const EaglePainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagAsmProperties.aspectRatio;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    MultiElementPainter(
      List.unmodifiable(properties.skip(1)),
      aspectRatio, // ignore: unnecessary-trailing-comma, new dart format.
    ).paint(canvas, size);

    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = size.height * property.heightFactor;
    final width = adjustedSize.width;

    final eagle = Path()
      ..moveTo(width * 0.22, height * 0.71)
      ..cubicTo(
        width * 0.22,
        height * 0.71,
        width * 0.14,
        height * 0.81,
        width * 0.15,
        height * 0.82,
      )
      ..cubicTo(
        width * 0.18,
        height * 0.85,
        width * 0.1,
        height * 0.78,
        width * 0.1,
        height * 0.73,
      )
      ..lineTo(width * 0.2, height * 0.56)
      ..cubicTo(
        width * 0.2,
        height * 0.56,
        width * 0.35,
        height * 0.47,
        width * 0.32,
        height * 0.38,
      )
      ..cubicTo(
        width * 0.29,
        height * 0.29,
        width * 0.32,
        height * 0.21,
        width * 0.45,
        height * 0.17,
      )
      ..lineTo(width * 0.95, 0)
      ..cubicTo(
        width * 0.95,
        0,
        width * 0.83,
        height * 0.32,
        width * 0.78,
        height * 0.37,
      )
      ..cubicTo(
        width * 0.72,
        height * 0.41,
        width * 0.95,
        height * 0.41,
        width * 0.98,
        height * 0.4,
      )
      ..cubicTo(
        width * 1.01,
        height * 0.39,
        width,
        height * 0.61,
        width * 0.97,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.93,
        height * 0.63,
        width * 0.75,
        height * 0.58,
        width * 0.75,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.65,
        width * 0.7,
        height * 0.79,
        width * 0.62,
        height * 0.9,
      )
      ..cubicTo(
        width * 0.53,
        height,
        width * 0.55,
        height * 1.01,
        width * 0.51,
        height * 0.99,
      )
      ..lineTo(width * 0.47, height * 0.99)
      ..lineTo(width * 0.45, height * 0.99)
      ..cubicTo(
        width * 0.47,
        height * 0.97,
        width * 0.52,
        height * 0.93,
        width * 0.53,
        height * 0.86,
      )
      ..cubicTo(
        width * 0.54,
        height * 0.79,
        width * 0.56,
        height * 0.61,
        width * 0.46,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.35,
        height * 0.62,
        width * 0.27,
        height * 0.65,
        width * 0.22,
        height * 0.71,
      )
      ..lineTo(width * 0.22, height * 0.71);

    final path = Path()
      ..moveTo(width * 0.01, height * 0.89)
      ..lineTo(width * 0.45, height * 0.99)
      ..lineTo(width * 0.47, height * 0.99)
      ..lineTo(width * 0.8, height * 1.07)
      ..lineTo(width * 0.22, height * 1.13);

    final bounds = eagle.getBounds();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(eagle, paintCreator(customColors.first))
      ..drawPath(
        path,
        paintCreator()
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeWidth = height / 10,
      );

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
