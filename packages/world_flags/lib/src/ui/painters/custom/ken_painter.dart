import "dart:ui";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class KenPainter extends CustomElementsPainter {
  const KenPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagKenProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(Canvas canvas, Size size) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 1.25);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final spear = Path()
      ..moveTo(width * 0.06, height)
      ..lineTo(width * 0.09, height)
      ..lineTo(width * 0.81, height * 0.23)
      ..cubicTo(
        width * 0.85,
        height * 0.22,
        width * 0.87,
        height * 0.19,
        width * 0.89,
        height * 0.17,
      )
      ..cubicTo(
        width * 0.91,
        height * 0.15,
        width * 0.97,
        height * 0.09,
        width,
        0,
      )
      ..cubicTo(
        width * 0.92,
        height * 0.04,
        width * 0.86,
        height * 0.09,
        width * 0.82,
        height * 0.14,
      )
      ..cubicTo(
        width * 0.79,
        height * 0.17,
        width * 0.77,
        height * 0.19,
        width * 0.78,
        height * 0.22,
      )
      ..lineTo(width * 0.06, height)
      ..lineTo(width * 0.06, height);

    final shield = Path()
      ..moveTo(width * 0.8, height * 0.5)
      ..cubicTo(
        width * 0.7,
        height * 0.85,
        width * 0.5,
        height * 1,
        width * 0.5,
        height * 1,
      )
      ..cubicTo(
        width * 0.5,
        height * 1,
        width * 0.2,
        height * 0.77,
        width * 0.2,
        height * 0.5,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.3,
        width * 0.5,
        0,
        width * 0.5,
        height * 0.05,
      )
      ..cubicTo(
        width * 0.5,
        0,
        width * 0.8,
        height * 0.3,
        width * 0.8,
        height * 0.5,
      );

    final path4 = Path()
      ..moveTo(width * 0.28, height * 0.71)
      ..cubicTo(
        width * 0.34,
        height * 0.67,
        width * 0.39,
        height * 0.6,
        width * 0.39,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.39,
        height * 0.44,
        width * 0.35,
        height * 0.37,
        width * 0.28,
        height * 0.33,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.39,
        width * 0.24,
        height * 0.46,
        width * 0.24,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.24,
        height * 0.59,
        width * 0.25,
        height * 0.65,
        width * 0.28,
        height * 0.71,
      )
      ..lineTo(width * 0.28, height * 0.71)
      ..moveTo(width * 0.72, height * 0.33)
      ..cubicTo(
        width * 0.66,
        height * 0.37,
        width * 0.61,
        height * 0.44,
        width * 0.61,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.61,
        height * 0.6,
        width * 0.65,
        height * 0.67,
        width * 0.72,
        height * 0.71,
      )
      ..cubicTo(
        width * 0.75,
        height * 0.64,
        width * 0.76,
        height * 0.58,
        width * 0.76,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.76,
        height * 0.45,
        width * 0.75,
        height * 0.39,
        width * 0.72,
        height * 0.33,
      )
      ..lineTo(width * 0.72, height * 0.33);

    final path5 = Path()
      ..moveTo(width * 0.5, height * 0.58)
      ..cubicTo(
        width * 0.53,
        height * 0.58,
        width * 0.56,
        height * 0.55,
        width * 0.56,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.49,
        width * 0.53,
        height * 0.46,
        width * 0.5,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.47,
        height * 0.46,
        width * 0.44,
        height * 0.49,
        width * 0.44,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.55,
        width * 0.47,
        height * 0.58,
        width * 0.5,
        height * 0.58,
      )
      ..lineTo(width * 0.5, height * 0.58)
      ..moveTo(width * 0.48, height * 0.07)
      ..cubicTo(
        width * 0.46,
        height * 0.11,
        width * 0.44,
        height * 0.19,
        width * 0.44,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.35,
        width * 0.46,
        height * 0.42,
        width * 0.48,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.4,
        width * 0.49,
        height * 0.34,
        width * 0.49,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.2,
        width * 0.49,
        height * 0.14,
        width * 0.48,
        height * 0.07,
      )
      ..lineTo(width * 0.48, height * 0.07)
      ..moveTo(width * 0.52, height * 0.07)
      ..cubicTo(
        width * 0.54,
        height * 0.11,
        width * 0.56,
        height * 0.19,
        width * 0.56,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.35,
        width * 0.54,
        height * 0.42,
        width * 0.52,
        height * 0.46,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.4,
        width * 0.51,
        height * 0.34,
        width * 0.51,
        height * 0.27,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.2,
        width * 0.51,
        height * 0.14,
        width * 0.52,
        height * 0.07,
      )
      ..lineTo(width * 0.52, height * 0.07)
      ..moveTo(width * 0.48, height * 0.58)
      ..cubicTo(
        width * 0.46,
        height * 0.61,
        width * 0.44,
        height * 0.69,
        width * 0.44,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.44,
        height * 0.85,
        width * 0.46,
        height * 0.93,
        width * 0.48,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.91,
        width * 0.49,
        height * 0.84,
        width * 0.49,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.49,
        height * 0.71,
        width * 0.49,
        height * 0.64,
        width * 0.48,
        height * 0.58,
      )
      ..lineTo(width * 0.48, height * 0.58)
      ..moveTo(width * 0.52, height * 0.58)
      ..cubicTo(
        width * 0.54,
        height * 0.61,
        width * 0.56,
        height * 0.69,
        width * 0.56,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.85,
        width * 0.54,
        height * 0.93,
        width * 0.52,
        height * 0.97,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.91,
        width * 0.51,
        height * 0.84,
        width * 0.51,
        height * 0.77,
      )
      ..cubicTo(
        width * 0.51,
        height * 0.71,
        width * 0.51,
        height * 0.64,
        width * 0.52,
        height * 0.58,
      )
      ..lineTo(width * 0.52, height * 0.58);

    final bounds = shield.getBounds();
    final mainPaint = paintCreator();

    canvas
      ..translate(center.dx - bounds.center.dx, center.dy - bounds.center.dy)
      ..drawPath(spear, mainPaint)
      ..scale(-1, 1)
      ..translate(-bounds.width * 1.66, 0)
      ..drawPath(spear, mainPaint)
      ..scale(1.333, 1)
      ..translate(-bounds.width / 5, 0)
      ..drawPath(shield, paintCreator(customColors.first)) // Red.
      ..drawPath(path4, paintCreator(customColors.last)) // Black.
      ..drawPath(path5, mainPaint);

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
