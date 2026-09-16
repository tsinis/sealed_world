// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Anguilla.
///
/// Draws three orange dolphins on a white shield with a pale blue base.
final class AiaPainter extends UnionJackPainter {
  /// Creates a new instance of [AiaPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7927;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.9961, height * 0.0245)
      ..cubicTo(
        width * 0.9961,
        height * 0.0245,
        width * 0.8894,
        height * 0.0561,
        width * 0.748,
        height * 0.0561,
      )
      ..cubicTo(
        width * 0.6062,
        height * 0.0561,
        width * 0.4998,
        0,
        width * 0.4998,
        0,
      )
      ..cubicTo(
        width * 0.4998,
        0,
        width * 0.3935,
        height * 0.0561,
        width * 0.2519,
        height * 0.0561,
      )
      ..cubicTo(
        width * 0.1101,
        height * 0.0561,
        width * 0.004,
        height * 0.0245,
        width * 0.004,
        height * 0.0245,
      )
      ..cubicTo(
        width * -0.0094,
        height * 0.3052,
        width * 0.004,
        height * 0.5929,
        width * 0.1412,
        height * 0.7438,
      )
      ..cubicTo(
        width * 0.2785,
        height * 0.8948,
        width * 0.4998,
        height * 0.9999,
        width * 0.4998,
        height * 0.9999,
      )
      ..cubicTo(
        width * 0.4998,
        height * 0.9999,
        width * 0.7215,
        height * 0.8947,
        width * 0.8588,
        height * 0.7438,
      )
      ..cubicTo(
        width * 0.9958,
        height * 0.593,
        width * 1.0093,
        height * 0.3052,
        width * 0.9961,
        height * 0.0245,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.3757, height * 0.0667)
      ..cubicTo(
        width * 0.3757,
        height * 0.0667,
        width * 0.3802,
        height * 0.1158,
        width * 0.4067,
        height * 0.1333,
      )
      ..cubicTo(
        width * 0.4067,
        height * 0.1333,
        width * 0.4731,
        height * 0.1228,
        width * 0.5262,
        height * 0.1403,
      )
      ..cubicTo(
        width * 0.5682,
        height * 0.1542,
        width * 0.6457,
        height * 0.1789,
        width * 0.6855,
        height * 0.1684,
      )
      ..cubicTo(
        width * 0.7253,
        height * 0.1579,
        width * 0.7608,
        height * 0.1474,
        width * 0.7697,
        height * 0.1544,
      )
      ..cubicTo(
        width * 0.7785,
        height * 0.1614,
        width * 0.7254,
        height * 0.1719,
        width * 0.7165,
        height * 0.1789,
      )
      ..cubicTo(
        width * 0.7076,
        height * 0.186,
        width * 0.6767,
        height * 0.193,
        width * 0.6944,
        height * 0.214,
      )
      ..cubicTo(
        width * 0.7122,
        height * 0.2351,
        width * 0.7431,
        height * 0.2526,
        width * 0.7343,
        height * 0.2737,
      )
      ..cubicTo(
        width * 0.7343,
        height * 0.2737,
        width * 0.6944,
        height * 0.2492,
        width * 0.6767,
        height * 0.2281,
      )
      ..cubicTo(
        width * 0.6589,
        height * 0.207,
        width * 0.6191,
        height * 0.1895,
        width * 0.5527,
        height * 0.1965,
      )
      ..cubicTo(
        width * 0.4862,
        height * 0.2036,
        width * 0.4333,
        height * 0.2316,
        width * 0.4245,
        height * 0.2632,
      )
      ..cubicTo(
        width * 0.4156,
        height * 0.2947,
        width * 0.4642,
        height * 0.2913,
        width * 0.504,
        height * 0.2983,
      )
      ..cubicTo(
        width * 0.504,
        height * 0.2983,
        width * 0.4465,
        height * 0.3158,
        width * 0.4156,
        height * 0.3158,
      )
      ..cubicTo(
        width * 0.4156,
        height * 0.3158,
        width * 0.389,
        height * 0.3544,
        width * 0.3624,
        height * 0.3895,
      )
      ..cubicTo(
        width * 0.3359,
        height * 0.4246,
        width * 0.3313,
        height * 0.4457,
        width * 0.3182,
        height * 0.4421,
      )
      ..cubicTo(
        width * 0.3049,
        height * 0.4386,
        width * 0.3004,
        height * 0.3895,
        width * 0.3093,
        height * 0.3614,
      )
      ..cubicTo(
        width * 0.3093,
        height * 0.3614,
        width * 0.2784,
        height * 0.3474,
        width * 0.2827,
        height * 0.2772,
      )
      ..cubicTo(
        width * 0.2865,
        height * 0.2173,
        width * 0.3402,
        height * 0.1614,
        width * 0.3402,
        height * 0.1614,
      )
      ..cubicTo(
        width * 0.3402,
        height * 0.1614,
        width * 0.3359,
        height * 0.1404,
        width * 0.3402,
        height * 0.1158,
      )
      ..cubicTo(
        width * 0.3448,
        height * 0.0912,
        width * 0.3757,
        height * 0.0667,
        width * 0.3757,
        height * 0.0667,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.2345, height * 0.666)
      ..cubicTo(
        width * 0.2345,
        height * 0.666,
        width * 0.2798,
        height * 0.6322,
        width * 0.2801,
        height * 0.6048,
      )
      ..cubicTo(
        width * 0.2801,
        height * 0.6048,
        width * 0.2279,
        height * 0.5707,
        width * 0.2114,
        height * 0.5269,
      )
      ..cubicTo(
        width * 0.1983,
        height * 0.4924,
        width * 0.1735,
        height * 0.4292,
        width * 0.1381,
        height * 0.4113,
      )
      ..cubicTo(
        width * 0.1025,
        height * 0.3935,
        width * 0.0699,
        height * 0.3784,
        width * 0.0711,
        height * 0.3685,
      )
      ..cubicTo(
        width * 0.0724,
        height * 0.3587,
        width * 0.1163,
        height * 0.3846,
        width * 0.1288,
        height * 0.3857,
      )
      ..cubicTo(
        width * 0.1412,
        height * 0.3867,
        width * 0.1676,
        height * 0.4013,
        width * 0.1771,
        height * 0.3771,
      )
      ..cubicTo(
        width * 0.1865,
        height * 0.3529,
        width * 0.184,
        height * 0.3228,
        width * 0.2101,
        height * 0.3149,
      )
      ..cubicTo(
        width * 0.2101,
        height * 0.3149,
        width * 0.2114,
        height * 0.3549,
        width * 0.2019,
        height * 0.379,
      )
      ..cubicTo(
        width * 0.1925,
        height * 0.4031,
        width * 0.2006,
        height * 0.4387,
        width * 0.2493,
        height * 0.4751,
      )
      ..cubicTo(
        width * 0.2982,
        height * 0.5114,
        width * 0.3592,
        height * 0.5263,
        width * 0.3957,
        height * 0.5117,
      )
      ..cubicTo(
        width * 0.4322,
        height * 0.4972,
        width * 0.398,
        height * 0.4696,
        width * 0.3795,
        height * 0.4406,
      )
      ..cubicTo(
        width * 0.3795,
        height * 0.4406,
        width * 0.4332,
        height * 0.4649,
        width * 0.4528,
        height * 0.484,
      )
      ..cubicTo(
        width * 0.4528,
        height * 0.484,
        width * 0.5073,
        height * 0.4759,
        width * 0.5583,
        height * 0.47,
      )
      ..cubicTo(
        width * 0.6094,
        height * 0.4641,
        width * 0.6327,
        height * 0.4535,
        width * 0.6377,
        height * 0.4639,
      )
      ..cubicTo(
        width * 0.6427,
        height * 0.4743,
        width * 0.5975,
        height * 0.508,
        width * 0.5643,
        height * 0.5204,
      )
      ..cubicTo(
        width * 0.5643,
        height * 0.5204,
        width * 0.5703,
        height * 0.5482,
        width * 0.4989,
        height * 0.5899,
      )
      ..cubicTo(
        width * 0.4378,
        height * 0.6255,
        width * 0.3492,
        height * 0.6278,
        width * 0.3492,
        height * 0.6278,
      )
      ..cubicTo(
        width * 0.3492,
        height * 0.6278,
        width * 0.3316,
        height * 0.6438,
        width * 0.3047,
        height * 0.6566,
      )
      ..cubicTo(
        width * 0.2782,
        height * 0.6694,
        width * 0.2345,
        height * 0.666,
        width * 0.2345,
        height * 0.666,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.9384, height * 0.4575)
      ..cubicTo(
        width * 0.9384,
        height * 0.4575,
        width * 0.8806,
        height * 0.4391,
        width * 0.8492,
        height * 0.4503,
      )
      ..cubicTo(
        width * 0.8492,
        height * 0.4503,
        width * 0.8322,
        height * 0.5022,
        width * 0.789,
        height * 0.5324,
      )
      ..cubicTo(
        width * 0.7548,
        height * 0.5564,
        width * 0.6929,
        height * 0.6007,
        width * 0.6873,
        height * 0.6337,
      )
      ..cubicTo(
        width * 0.6819,
        height * 0.6667,
        width * 0.6783,
        height * 0.6966,
        width * 0.6666,
        height * 0.6998,
      )
      ..cubicTo(
        width * 0.6548,
        height * 0.703,
        width * 0.666,
        height * 0.6606,
        width * 0.6619,
        height * 0.6512,
      )
      ..cubicTo(
        width * 0.6578,
        height * 0.6418,
        width * 0.6635,
        height * 0.6166,
        width * 0.6318,
        height * 0.62,
      )
      ..cubicTo(
        width * 0.6002,
        height * 0.6234,
        width * 0.5666,
        height * 0.6378,
        width * 0.5467,
        height * 0.6223,
      )
      ..cubicTo(
        width * 0.5467,
        height * 0.6223,
        width * 0.5921,
        height * 0.6046,
        width * 0.6236,
        height * 0.6012,
      )
      ..cubicTo(
        width * 0.6552,
        height * 0.5979,
        width * 0.6926,
        height * 0.5771,
        width * 0.7137,
        height * 0.5268,
      )
      ..cubicTo(
        width * 0.7348,
        height * 0.4763,
        width * 0.7263,
        height * 0.4262,
        width * 0.6942,
        height * 0.4061,
      )
      ..cubicTo(
        width * 0.6624,
        height * 0.3859,
        width * 0.645,
        height * 0.4222,
        width * 0.6196,
        height * 0.4476,
      )
      ..cubicTo(
        width * 0.6196,
        height * 0.4476,
        width * 0.6249,
        height * 0.3987,
        width * 0.6384,
        height * 0.3767,
      )
      ..cubicTo(
        width * 0.6384,
        height * 0.3767,
        width * 0.6063,
        height * 0.3409,
        width * 0.5782,
        height * 0.3066,
      )
      ..cubicTo(
        width * 0.55,
        height * 0.2723,
        width * 0.528,
        height * 0.26,
        width * 0.5379,
        height * 0.252,
      )
      ..cubicTo(
        width * 0.5476,
        height * 0.2442,
        width * 0.6054,
        height * 0.2624,
        width * 0.6333,
        height * 0.2811,
      )
      ..cubicTo(
        width * 0.6333,
        height * 0.2811,
        width * 0.6628,
        height * 0.2651,
        width * 0.7405,
        height * 0.299,
      )
      ..cubicTo(
        width * 0.8069,
        height * 0.328,
        width * 0.8465,
        height * 0.3907,
        width * 0.8465,
        height * 0.3907,
      )
      ..cubicTo(
        width * 0.8465,
        height * 0.3907,
        width * 0.8724,
        height * 0.3967,
        width * 0.8983,
        height * 0.4107,
      )
      ..cubicTo(
        width * 0.9241,
        height * 0.4246,
        width * 0.9384,
        height * 0.4575,
        width * 0.9384,
        height * 0.4575,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.1208, height * 0.7194)
      ..cubicTo(
        width * 0.1273,
        height * 0.7279,
        width * 0.1341,
        height * 0.7361,
        width * 0.1412,
        height * 0.7438,
      )
      ..cubicTo(
        width * 0.2785,
        height * 0.8948,
        width * 0.4998,
        height,
        width * 0.4998,
        height,
      )
      ..cubicTo(
        width * 0.4998,
        height,
        width * 0.7215,
        height * 0.8948,
        width * 0.8588,
        height * 0.7438,
      )
      ..cubicTo(
        width * 0.8658,
        height * 0.7361,
        width * 0.8726,
        height * 0.7279,
        width * 0.8791,
        height * 0.7194,
      )
      ..lineTo(width * 0.1208, height * 0.7194)
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors.first))
      ..drawPath(path4, paintCreator(customColors.first))
      ..drawPath(path5, paintCreator(customColors[1]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
