import "dart:ui";

import "../../../data/flags_map_part_3.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../common/star_painter.dart";

final class MacPainter extends CustomElementsPainter {
  const MacPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagMacProperties.aspectRatio;

  @override
  // ignore: long-method, expected for CustomElementsPainters.
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;

    final path = Path()
      ..moveTo(width * 0.59, height * 1.09)
      ..cubicTo(
        width * 0.58,
        height * 1.09,
        width * 0.56,
        height * 1.1,
        width * 0.55,
        height * 1.12,
      )
      ..lineTo(width * 0.56, height * 1.05)
      ..lineTo(width * 0.5, height * 0.79)
      ..cubicTo(
        width * 0.5,
        height * 0.79,
        width * 0.45,
        height * 0.92,
        width * 0.45,
        height * 1.05,
      )
      ..lineTo(width * 0.45, height * 1.12)
      ..cubicTo(
        width * 0.44,
        height * 1.1,
        width * 0.43,
        height * 1.09,
        width * 0.42,
        height * 1.08,
      )
      ..lineTo(width * 0.28, height * 1.13)
      ..cubicTo(
        width * 0.28,
        height * 1.13,
        width * 0.33,
        height * 1.31,
        width * 0.39,
        height * 1.35,
      )
      ..cubicTo(
        width * 0.45,
        height * 1.38,
        width * 0.48,
        height * 1.29,
        width * 0.5,
        height * 1.28,
      )
      ..lineTo(width * 0.5, height * 1.28)
      ..cubicTo(
        width * 0.52,
        height * 1.29,
        width * 0.56,
        height * 1.38,
        width * 0.61,
        height * 1.35,
      )
      ..lineTo(width * 0.72, height * 1.13)
      ..cubicTo(
        width * 0.72,
        height * 1.13,
        width * 0.65,
        height * 1.05,
        width * 0.59,
        height * 1.09,
      )
      ..moveTo(width * 0.39, height * 1.71)
      ..cubicTo(
        width * 0.42,
        height * 1.76,
        width * 0.46,
        height * 1.79,
        width * 0.5,
        height * 1.79,
      )
      ..cubicTo(
        width * 0.54,
        height * 1.79,
        width * 0.58,
        height * 1.76,
        width * 0.61,
        height * 1.71,
      )
      ..lineTo(width * 0.39, height * 1.71)
      ..moveTo(width * 0.32, height * 1.57)
      ..cubicTo(
        width * 0.32,
        height * 1.6,
        width * 0.33,
        height * 1.62,
        width * 0.35,
        height * 1.64,
      )
      ..lineTo(width * 0.65, height * 1.64)
      ..cubicTo(
        width * 0.67,
        height * 1.62,
        width * 0.67,
        height * 1.6,
        width * 0.68,
        height * 1.57,
      )
      ..lineTo(width * 0.32, height * 1.57);

    final path2 = Path()
      ..moveTo(width * 0.72, height * 1.43)
      ..lineTo(width * 0.56, height * 1.43)
      ..cubicTo(
        width * 0.52,
        height * 1.43,
        width * 0.52,
        height * 1.37,
        width * 0.52,
        height * 1.36,
      )
      ..lineTo(width * 0.48, height * 1.36)
      ..cubicTo(
        width * 0.48,
        height * 1.36,
        width * 0.48,
        height * 1.43,
        width * 0.44,
        height * 1.43,
      )
      ..lineTo(width * 0.28, height * 1.43)
      ..lineTo(width * 0.29, height * 1.5)
      ..lineTo(width * 0.44, height * 1.5)
      ..cubicTo(
        width * 0.47,
        height * 1.5,
        width * 0.49,
        height * 1.48,
        width * 0.5,
        height * 1.45,
      )
      ..cubicTo(
        width * 0.51,
        height * 1.48,
        width * 0.53,
        height * 1.5,
        width * 0.56,
        height * 1.5,
      )
      ..lineTo(width * 0.71, height * 1.5)
      ..lineTo(width * 0.72, height * 1.43);

    final bounds = path.getBounds();
    canvas
      ..translate(
        center.dx - bounds.width,
        center.dy - bounds.height * 1.2,
      )
      ..drawPath(path2, paintCreator())
      ..drawPath(path, paintCreator());

    return StarPainter([properties.last], aspectRatio)
        .paintFlagElements(canvas, adjustedSize);
  }
}
