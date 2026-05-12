// The SVG reference path contains unavoidable long segments; splitting further would
// reduce readability and introduce accidental geometry errors, so we ignore line length.
// ignore_for_file: lines_longer_than_80_chars, avoid-similar-names
import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the Guernsey flag (GGY).
///
/// Draws:
/// 1. Red broad cross reaching the edges (proportions from 36x24 construction).
/// 2. Yellow flared cross with triangular ends centered within the red cross.
final class GgyPainter extends CustomElementsPainter {
  /// Creates a painter for the Guernsey flag.
  const GgyPainter(super.properties, super.aspectRatio);

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final width = size.width;
    final height = size.height;
    final redThickness = height * (1 - property.heightFactor);
    final squareSide = height * property.heightFactor; // 0.75 * height.
    final left = (width - squareSide) / 2;
    final top = (height - squareSide) / 2;

    // ignore: avoid-local-functions, for simplicity and clarity.
    Offset points(double x, double y) => Offset(
      left + (x - 9) / 18 * squareSide,
      top + (y - 3) / 18 * squareSide,
    );

    // Precompute transformed points to satisfy lint about repeated calls.
    final p9_14 = points(9, 14);
    final p10_13 = points(10, 13);
    final p17_13 = points(17, 13);
    final p17_20 = points(17, 20);
    final p16_21 = points(16, 21);
    final p20_21 = points(20, 21);
    final p19_20 = points(19, 20);
    final p19_13 = points(19, 13);
    final p26_13 = points(26, 13);
    final p27_14 = points(27, 14);
    final p27_10 = points(27, 10);
    final p26_11 = points(26, 11);
    final p19_11 = points(19, 11);
    final p19_4 = points(19, 4);
    final p20_3 = points(20, 3);
    final p16_3 = points(16, 3);
    final p17_4 = points(17, 4);
    final p17_11 = points(17, 11);
    final p10_11 = points(10, 11);
    final p9_10 = points(9, 10);

    final yellowPath = Path()
      ..moveTo(p9_14.dx, p9_14.dy)
      ..lineTo(p10_13.dx, p10_13.dy)
      ..lineTo(p17_13.dx, p17_13.dy)
      ..lineTo(p17_20.dx, p17_20.dy)
      ..lineTo(p16_21.dx, p16_21.dy)
      ..lineTo(p20_21.dx, p20_21.dy)
      ..lineTo(p19_20.dx, p19_20.dy)
      ..lineTo(p19_13.dx, p19_13.dy)
      ..lineTo(p26_13.dx, p26_13.dy)
      ..lineTo(p27_14.dx, p27_14.dy)
      ..lineTo(p27_10.dx, p27_10.dy)
      ..lineTo(p26_11.dx, p26_11.dy)
      ..lineTo(p19_11.dx, p19_11.dy)
      ..lineTo(p19_4.dx, p19_4.dy)
      ..lineTo(p20_3.dx, p20_3.dy)
      ..lineTo(p16_3.dx, p16_3.dy)
      ..lineTo(p17_4.dx, p17_4.dy)
      ..lineTo(p17_11.dx, p17_11.dy)
      ..lineTo(p10_11.dx, p10_11.dy)
      ..lineTo(p9_10.dx, p9_10.dy)
      ..close();

    canvas
      ..drawRect(
        Rect.fromLTWH((width - redThickness) / 2, 0, redThickness, height),
        paintCreator()..isAntiAlias = false,
      )
      ..drawPath(yellowPath, paintCreator(customColors.first));

    return (
      canvas: canvas,
      bounds: Rect.fromLTWH(0, 0, width, height),
      child: property.child,
    );
  }
}
