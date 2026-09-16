// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the flag badge of Ecuador.
///
/// Draws the condor above the oval shield of Ecuador.
final class EcuPainter extends CustomElementsPainter {
  /// Creates a new instance of [EcuPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.755;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width, height * 0.6225)
      ..cubicTo(
        width,
        height * 0.7059,
        width * 0.9104,
        height * 0.7735,
        width * 0.8,
        height * 0.7735,
      )
      ..lineTo(width * 0.2, height * 0.7735)
      ..cubicTo(
        width * 0.0896,
        height * 0.7735,
        0,
        height * 0.7059,
        0,
        height * 0.6225,
      )
      ..lineTo(0, height * 0.396)
      ..cubicTo(
        0,
        height * 0.3127,
        width * 0.0896,
        height * 0.245,
        width * 0.2,
        height * 0.245,
      )
      ..lineTo(width * 0.8, height * 0.245)
      ..cubicTo(
        width * 0.9104,
        height * 0.245,
        width,
        height * 0.3127,
        width,
        height * 0.396,
      )
      ..lineTo(width, height * 0.6225)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.9, height * 0.547)
      ..cubicTo(
        width * 0.9,
        height * 0.6304,
        width * 0.8104,
        height * 0.7735,
        width * 0.7,
        height * 0.7735,
      )
      ..lineTo(width * 0.3, height * 0.7735)
      ..cubicTo(
        width * 0.1896,
        height * 0.7735,
        width * 0.1,
        height * 0.6304,
        width * 0.1,
        height * 0.547,
      )
      ..lineTo(width * 0.1, height * 0.4715)
      ..cubicTo(
        width * 0.1,
        height * 0.3882,
        width * 0.1896,
        height * 0.3205,
        width * 0.3,
        height * 0.3205,
      )
      ..lineTo(width * 0.7, height * 0.3205)
      ..cubicTo(
        width * 0.8104,
        height * 0.3205,
        width * 0.9,
        height * 0.3882,
        width * 0.9,
        height * 0.4715,
      )
      ..lineTo(width * 0.9, height * 0.547)
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.8, height * 0.547)
      ..cubicTo(
        width * 0.8,
        height * 0.6304,
        width * 0.7104,
        height * 0.7735,
        width * 0.6,
        height * 0.7735,
      )
      ..lineTo(width * 0.4, height * 0.7735)
      ..cubicTo(
        width * 0.2896,
        height * 0.7735,
        width * 0.2,
        height * 0.6304,
        width * 0.2,
        height * 0.547,
      )
      ..lineTo(width * 0.2, height * 0.4715)
      ..cubicTo(
        width * 0.2,
        height * 0.3882,
        width * 0.2896,
        height * 0.3205,
        width * 0.4,
        height * 0.3205,
      )
      ..lineTo(width * 0.6, height * 0.3205)
      ..cubicTo(
        width * 0.7104,
        height * 0.3205,
        width * 0.8,
        height * 0.3882,
        width * 0.8,
        height * 0.4715,
      )
      ..lineTo(width * 0.8, height * 0.547)
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.6973, height * 0.2552)
      ..cubicTo(
        width * 0.684,
        height * 0.2921,
        width * 0.6012,
        height * 0.3205,
        width * 0.5,
        height * 0.3205,
      )
      ..cubicTo(
        width * 0.3988,
        height * 0.3205,
        width * 0.316,
        height * 0.2921,
        width * 0.3027,
        height * 0.2552,
      )
      ..cubicTo(
        width * 0.1822,
        height * 0.2682,
        width * 0.2,
        height * 0.2924,
        width * 0.2,
        height * 0.3205,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.3622,
        width * 0.2791,
        height * 0.396,
        width * 0.5,
        height * 0.396,
      )
      ..cubicTo(
        width * 0.7209,
        height * 0.396,
        width * 0.8,
        height * 0.3622,
        width * 0.8,
        height * 0.3205,
      )
      ..cubicTo(
        width * 0.8,
        height * 0.2924,
        width * 0.8178,
        height * 0.2682,
        width * 0.6973,
        height * 0.2552,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.85, height * 0.094)
      ..cubicTo(
        width * 0.894,
        height * 0.094,
        width * 0.9358,
        height * 0.0979,
        width * 0.9746,
        height * 0.1044,
      )
      ..cubicTo(
        width * 0.9123,
        height * 0.0231,
        width * 0.7,
        height * -0.057,
        width * 0.5,
        height * 0.094,
      )
      ..cubicTo(
        width * 0.3,
        height * -0.057,
        width * 0.0877,
        height * 0.0231,
        width * 0.0254,
        height * 0.1044,
      )
      ..cubicTo(
        width * 0.0642,
        height * 0.0979,
        width * 0.106,
        height * 0.094,
        width * 0.15,
        height * 0.094,
      )
      ..cubicTo(
        width * 0.3433,
        height * 0.094,
        width * 0.5,
        height * 0.1617,
        width * 0.5,
        height * 0.245,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.1617,
        width * 0.6566,
        height * 0.094,
        width * 0.85,
        height * 0.094,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.7, height * 0.5093)
      ..cubicTo(
        width * 0.7,
        height * 0.6552,
        width * 0.6105,
        height * 0.7735,
        width * 0.5,
        height * 0.7735,
      )
      ..cubicTo(
        width * 0.3895,
        height * 0.7735,
        width * 0.3,
        height * 0.6552,
        width * 0.3,
        height * 0.5093,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.3633,
        width * 0.3895,
        height * 0.245,
        width * 0.5,
        height * 0.245,
      )
      ..cubicTo(
        width * 0.6105,
        height * 0.245,
        width * 0.7,
        height * 0.3633,
        width * 0.7,
        height * 0.5093,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.45, height * 0.4715)
      ..cubicTo(
        width * 0.3964,
        height * 0.4715,
        width * 0.3463,
        height * 0.4813,
        width * 0.3009,
        height * 0.4976,
      )
      ..cubicTo(
        width * 0.3008,
        height * 0.5015,
        width * 0.3,
        height * 0.5053,
        width * 0.3,
        height * 0.5093,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.6552,
        width * 0.3896,
        height * 0.7735,
        width * 0.5,
        height * 0.7735,
      )
      ..cubicTo(
        width * 0.6003,
        height * 0.7735,
        width * 0.6825,
        height * 0.6757,
        width * 0.697,
        height * 0.5486,
      )
      ..cubicTo(
        width * 0.6337,
        height * 0.501,
        width * 0.5464,
        height * 0.4715,
        width * 0.45,
        height * 0.4715,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.8, height * 0.849)
      ..cubicTo(
        width * 0.8,
        height * 0.8907,
        width * 0.6657,
        height * 0.9245,
        width * 0.5,
        height * 0.9245,
      )
      ..cubicTo(
        width * 0.3343,
        height * 0.9245,
        width * 0.2,
        height * 0.8907,
        width * 0.2,
        height * 0.849,
      )
      ..cubicTo(
        width * 0.2,
        height * 0.8073,
        width * 0.3343,
        height * 0.7735,
        width * 0.5,
        height * 0.7735,
      )
      ..cubicTo(
        width * 0.6657,
        height * 0.7735,
        width * 0.8,
        height * 0.8073,
        width * 0.8,
        height * 0.849,
      )
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.7, height * 0.9245)
      ..cubicTo(
        width * 0.7,
        height * 0.987,
        width * 0.6104,
        height,
        width * 0.5,
        height,
      )
      ..cubicTo(
        width * 0.3896,
        height,
        width * 0.3,
        height * 0.987,
        width * 0.3,
        height * 0.9245,
      )
      ..cubicTo(
        width * 0.3,
        height * 0.862,
        width * 0.3896,
        height * 0.7735,
        width * 0.5,
        height * 0.7735,
      )
      ..cubicTo(
        width * 0.6104,
        height * 0.7735,
        width * 0.7,
        height * 0.862,
        width * 0.7,
        height * 0.9245,
      )
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.4, height * 0.9245)
      ..cubicTo(
        width * 0.4,
        height * 0.862,
        width * 0.4448,
        height * 0.7735,
        width * 0.5,
        height * 0.7735,
      )
      ..cubicTo(
        width * 0.5552,
        height * 0.7735,
        width * 0.6,
        height * 0.862,
        width * 0.6,
        height * 0.9245,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.987,
        width * 0.5552,
        height,
        width * 0.5,
        height,
      )
      ..cubicTo(
        width * 0.4448,
        height,
        width * 0.4,
        height * 0.987,
        width * 0.4,
        height * 0.9245,
      )
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.4, height * 0.0185)
      ..cubicTo(
        width * 0.4,
        height * -0.0232,
        width * 0.4448,
        height * 0.0185,
        width * 0.5,
        height * 0.0185,
      )
      ..cubicTo(
        width * 0.5552,
        height * 0.0185,
        width * 0.6,
        height * -0.0232,
        width * 0.6,
        height * 0.0185,
      )
      ..cubicTo(
        width * 0.6,
        height * 0.0602,
        width * 0.5552,
        height * 0.094,
        width * 0.5,
        height * 0.094,
      )
      ..cubicTo(
        width * 0.4448,
        height * 0.094,
        width * 0.4,
        height * 0.0602,
        width * 0.4,
        height * 0.0185,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors[2]))
      ..drawPath(path5, paintCreator(customColors[3]))
      ..drawPath(path6, paintCreator(customColors[4]))
      ..drawPath(path7, paintCreator(customColors[2]))
      ..drawPath(path8, paintCreator(customColors[5]))
      ..drawPath(path9, paintCreator(customColors.first))
      ..drawPath(path10, paintCreator(customColors[1]))
      ..drawPath(path11, paintCreator(customColors[6]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
