// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of South Georgia and the South Sandwich Islands.
///
/// Draws the lozenged shield between a fur seal and a macaroni penguin.
final class SgsPainter extends UnionJackPainter {
  /// Creates a new instance of [SgsPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.652;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.3885, height * 0.0639)
      ..cubicTo(
        width * 0.3969,
        height * 0.0429,
        width * 0.3866,
        height * 0.0226,
        width * 0.3616,
        height * 0.0288,
      )
      ..cubicTo(
        width * 0.3366,
        height * 0.0351,
        width * 0.3135,
        height * 0.0251,
        width * 0.3174,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.3213,
        height * 0.015,
        width * 0.3502,
        0,
        width * 0.3885,
        0,
      )
      ..cubicTo(
        width * 0.4269,
        0,
        width * 0.4768,
        height * 0.0138,
        width * 0.4731,
        height * 0.02,
      )
      ..cubicTo(
        width * 0.4693,
        height * 0.0263,
        width * 0.4269,
        height * 0.0319,
        width * 0.4269,
        height * 0.0319,
      )
      ..cubicTo(
        width * 0.4269,
        height * 0.0319,
        width * 0.4327,
        height * 0.0564,
        width * 0.5039,
        height * 0.0564,
      )
      ..cubicTo(
        width * 0.575,
        height * 0.0564,
        width * 0.6345,
        height * 0.0677,
        width * 0.6211,
        height * 0.124,
      )
      ..cubicTo(
        width * 0.6077,
        height * 0.1804,
        width * 0.6038,
        height * 0.1879,
        width * 0.5923,
        height * 0.1854,
      )
      ..cubicTo(
        width * 0.5809,
        height * 0.183,
        width * 0.5789,
        height * 0.1642,
        width * 0.5847,
        height * 0.1478,
      )
      ..cubicTo(
        width * 0.5905,
        height * 0.1315,
        width * 0.5751,
        height * 0.109,
        width * 0.5673,
        height * 0.1253,
      )
      ..cubicTo(
        width * 0.5596,
        height * 0.1416,
        width * 0.5442,
        height * 0.1729,
        width * 0.525,
        height * 0.1754,
      )
      ..cubicTo(
        width * 0.5058,
        height * 0.1779,
        width * 0.5326,
        height * 0.1278,
        width * 0.5307,
        height * 0.1165,
      )
      ..cubicTo(
        width * 0.5288,
        height * 0.1053,
        width * 0.4846,
        height * 0.1077,
        width * 0.4826,
        height * 0.1253,
      )
      ..cubicTo(
        width * 0.4807,
        height * 0.1429,
        width * 0.4861,
        height * 0.1717,
        width * 0.4699,
        height * 0.1792,
      )
      ..cubicTo(
        width * 0.4538,
        height * 0.1867,
        width * 0.4519,
        height * 0.1616,
        width * 0.4538,
        height * 0.1441,
      )
      ..cubicTo(
        width * 0.4556,
        height * 0.1266,
        width * 0.4365,
        height * 0.099,
        width * 0.4346,
        height * 0.1228,
      )
      ..cubicTo(
        width * 0.4326,
        height * 0.1466,
        width * 0.4307,
        height * 0.1767,
        width * 0.4135,
        height * 0.1805,
      )
      ..cubicTo(
        width * 0.3962,
        height * 0.1842,
        width * 0.4135,
        height * 0.1516,
        width * 0.4077,
        height * 0.1316,
      )
      ..cubicTo(
        width * 0.402,
        height * 0.1116,
        width * 0.379,
        height * 0.0877,
        width * 0.3885,
        height * 0.0639,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.4438, height * 0.3486)
      ..cubicTo(
        width * 0.4193,
        height * 0.3637,
        width * 0.327,
        height * 0.3975,
        width * 0.291,
        height * 0.3421,
      )
      ..cubicTo(
        width * 0.3776,
        height * 0.3646,
        width * 0.4286,
        height * 0.3157,
        width * 0.4286,
        height * 0.3157,
      )
      ..lineTo(width * 0.4438, height * 0.3486)
      ..close()
      ..moveTo(width * 0.317, height * 0.2152)
      ..cubicTo(
        width * 0.2787,
        height * 0.1381,
        width * 0.193,
        height * 0.1315,
        width * 0.193,
        height * 0.1315,
      )
      ..cubicTo(
        width * 0.193,
        height * 0.1315,
        width * 0.1886,
        height * 0.156,
        width * 0.2074,
        height * 0.1734,
      )
      ..cubicTo(
        width * 0.1455,
        height * 0.1696,
        width * 0.0848,
        height * 0.1513,
        width * 0.0848,
        height * 0.1513,
      )
      ..cubicTo(
        width * 0.0675,
        height * 0.1832,
        width * 0.1714,
        height * 0.2171,
        width * 0.2348,
        height * 0.2152,
      )
      ..cubicTo(
        width * 0.2045,
        height * 0.2349,
        width * 0.2333,
        height * 0.2518,
        width * 0.2622,
        height * 0.2552,
      )
      ..cubicTo(
        width * 0.2478,
        height * 0.2321,
        width * 0.2939,
        height * 0.2167,
        width * 0.3039,
        height * 0.2348,
      )
      ..cubicTo(
        width * 0.314,
        height * 0.2528,
        width * 0.317,
        height * 0.2152,
        width * 0.317,
        height * 0.2152,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.3327, height * 0.3479)
      ..cubicTo(
        width * 0.255,
        height * 0.3534,
        width * 0.1997,
        height * 0.2755,
        width * 0.2,
        height * 0.2525,
      )
      ..cubicTo(
        width * 0.2464,
        height * 0.2613,
        width * 0.2838,
        height * 0.282,
        width * 0.2838,
        height * 0.282,
      )
      ..cubicTo(
        width * 0.2838,
        height * 0.282,
        width * 0.2961,
        height * 0.2133,
        width * 0.3058,
        height * 0.1965,
      )
      ..cubicTo(
        width * 0.3444,
        height * 0.2153,
        width * 0.3544,
        height * 0.2679,
        width * 0.3415,
        height * 0.2923,
      )
      ..cubicTo(
        width * 0.3838,
        height * 0.2937,
        width * 0.392,
        height * 0.3168,
        width * 0.379,
        height * 0.3337,
      )
      ..cubicTo(
        width * 0.3587,
        height * 0.3148,
        width * 0.3373,
        height * 0.3327,
        width * 0.3327,
        height * 0.3479,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.5572, height * 0.3486)
      ..cubicTo(
        width * 0.5817,
        height * 0.3637,
        width * 0.674,
        height * 0.3975,
        width * 0.71,
        height * 0.3421,
      )
      ..cubicTo(
        width * 0.6234,
        height * 0.3646,
        width * 0.5724,
        height * 0.3157,
        width * 0.5724,
        height * 0.3157,
      )
      ..lineTo(width * 0.5572, height * 0.3486)
      ..close()
      ..moveTo(width * 0.684, height * 0.2152)
      ..cubicTo(
        width * 0.7223,
        height * 0.1381,
        width * 0.808,
        height * 0.1315,
        width * 0.808,
        height * 0.1315,
      )
      ..cubicTo(
        width * 0.808,
        height * 0.1315,
        width * 0.8124,
        height * 0.156,
        width * 0.7936,
        height * 0.1734,
      )
      ..cubicTo(
        width * 0.8555,
        height * 0.1696,
        width * 0.9162,
        height * 0.1513,
        width * 0.9162,
        height * 0.1513,
      )
      ..cubicTo(
        width * 0.9335,
        height * 0.1832,
        width * 0.8296,
        height * 0.2171,
        width * 0.7662,
        height * 0.2152,
      )
      ..cubicTo(
        width * 0.7965,
        height * 0.2349,
        width * 0.7677,
        height * 0.2518,
        width * 0.7388,
        height * 0.2552,
      )
      ..cubicTo(
        width * 0.7532,
        height * 0.2321,
        width * 0.7071,
        height * 0.2167,
        width * 0.697,
        height * 0.2348,
      )
      ..cubicTo(
        width * 0.6869,
        height * 0.2528,
        width * 0.684,
        height * 0.2152,
        width * 0.684,
        height * 0.2152,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.6683, height * 0.3479)
      ..cubicTo(
        width * 0.746,
        height * 0.3534,
        width * 0.8013,
        height * 0.2755,
        width * 0.8011,
        height * 0.2525,
      )
      ..cubicTo(
        width * 0.7547,
        height * 0.2613,
        width * 0.7173,
        height * 0.282,
        width * 0.7173,
        height * 0.282,
      )
      ..cubicTo(
        width * 0.7173,
        height * 0.282,
        width * 0.705,
        height * 0.2133,
        width * 0.6953,
        height * 0.1965,
      )
      ..cubicTo(
        width * 0.6567,
        height * 0.2153,
        width * 0.6467,
        height * 0.2679,
        width * 0.6596,
        height * 0.2923,
      )
      ..cubicTo(
        width * 0.6172,
        height * 0.2937,
        width * 0.6091,
        height * 0.3168,
        width * 0.6221,
        height * 0.3337,
      )
      ..cubicTo(
        width * 0.6422,
        height * 0.3148,
        width * 0.6636,
        height * 0.3327,
        width * 0.6683,
        height * 0.3479,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.5072, height * 0.4567)
      ..cubicTo(
        width * 0.3875,
        height * 0.4567,
        width * 0.3457,
        height * 0.421,
        width * 0.3573,
        height * 0.3966,
      )
      ..cubicTo(
        width * 0.3688,
        height * 0.3722,
        width * 0.4091,
        height * 0.3853,
        width * 0.4221,
        height * 0.3787,
      )
      ..cubicTo(
        width * 0.4351,
        height * 0.3722,
        width * 0.4351,
        height * 0.3289,
        width * 0.4048,
        height * 0.3092,
      )
      ..cubicTo(
        width * 0.3745,
        height * 0.2894,
        width * 0.3558,
        height * 0.2688,
        width * 0.3687,
        height * 0.2584,
      )
      ..cubicTo(
        width * 0.3514,
        height * 0.2396,
        width * 0.3786,
        height * 0.2312,
        width * 0.3866,
        height * 0.2096,
      )
      ..cubicTo(
        width * 0.3946,
        height * 0.188,
        width * 0.4032,
        height * 0.1678,
        width * 0.4158,
        height * 0.1654,
      )
      ..cubicTo(
        width * 0.4284,
        height * 0.163,
        width * 0.435,
        height * 0.1833,
        width * 0.4393,
        height * 0.1795,
      )
      ..cubicTo(
        width * 0.4436,
        height * 0.1758,
        width * 0.4485,
        height * 0.1588,
        width * 0.4698,
        height * 0.1579,
      )
      ..cubicTo(
        width * 0.4911,
        height * 0.1569,
        width * 0.4883,
        height * 0.172,
        width * 0.4955,
        height * 0.1758,
      )
      ..cubicTo(
        width * 0.5027,
        height * 0.1795,
        width * 0.5085,
        height * 0.1583,
        width * 0.5286,
        height * 0.1579,
      )
      ..cubicTo(
        width * 0.5488,
        height * 0.1574,
        width * 0.5545,
        height * 0.1758,
        width * 0.5632,
        height * 0.1767,
      )
      ..cubicTo(
        width * 0.5719,
        height * 0.1777,
        width * 0.5747,
        height * 0.1632,
        width * 0.592,
        height * 0.1654,
      )
      ..cubicTo(
        width * 0.6092,
        height * 0.1676,
        width * 0.6035,
        height * 0.1965,
        width * 0.615,
        height * 0.2087,
      )
      ..cubicTo(
        width * 0.6266,
        height * 0.2209,
        width * 0.6511,
        height * 0.2444,
        width * 0.6366,
        height * 0.2585,
      )
      ..cubicTo(
        width * 0.6568,
        height * 0.2678,
        width * 0.6351,
        height * 0.2848,
        width * 0.6107,
        height * 0.297,
      )
      ..cubicTo(
        width * 0.5862,
        height * 0.3092,
        width * 0.5574,
        height * 0.3393,
        width * 0.5746,
        height * 0.3732,
      )
      ..cubicTo(
        width * 0.5905,
        height * 0.3957,
        width * 0.651,
        height * 0.3722,
        width * 0.6654,
        height * 0.3863,
      )
      ..cubicTo(
        width * 0.6802,
        height * 0.4004,
        width * 0.6744,
        height * 0.4567,
        width * 0.5072,
        height * 0.4567,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.3674, height * 0.5188)
      ..cubicTo(
        width * 0.3039,
        height * 0.5583,
        width * 0.0502,
        height * 0.7011,
        width * 0.0359,
        height * 0.7312,
      )
      ..cubicTo(
        width * 0.0215,
        height * 0.7613,
        width * 0.0517,
        height * 0.7688,
        width * 0.0964,
        height * 0.7491,
      )
      ..cubicTo(
        width * 0.0805,
        height * 0.7726,
        width * 0.1007,
        height * 0.782,
        width * 0.1108,
        height * 0.7829,
      )
      ..cubicTo(
        width * 0.1208,
        height * 0.7838,
        width * 0.1626,
        height * 0.7744,
        width * 0.18,
        height * 0.75,
      )
      ..cubicTo(
        width * 0.1987,
        height * 0.7697,
        width * 0.2463,
        height * 0.7725,
        width * 0.2549,
        height * 0.7687,
      )
      ..cubicTo(
        width * 0.2635,
        height * 0.765,
        width * 0.2679,
        height * 0.7584,
        width * 0.2679,
        height * 0.7584,
      )
      ..cubicTo(
        width * 0.2679,
        height * 0.7584,
        width * 0.2762,
        height * 0.7867,
        width * 0.2922,
        height * 0.7829,
      )
      ..cubicTo(
        width * 0.3083,
        height * 0.7791,
        width * 0.3225,
        height * 0.764,
        width * 0.3327,
        height * 0.7649,
      )
      ..cubicTo(
        width * 0.3429,
        height * 0.7659,
        width * 0.3321,
        height * 0.779,
        width * 0.3555,
        height * 0.7781,
      )
      ..cubicTo(
        width * 0.379,
        height * 0.7771,
        width * 0.3885,
        height * 0.7706,
        width * 0.401,
        height * 0.7621,
      )
      ..cubicTo(
        width * 0.4135,
        height * 0.7536,
        width * 0.4337,
        height * 0.7658,
        width * 0.4438,
        height * 0.764,
      )
      ..cubicTo(
        width * 0.4539,
        height * 0.7621,
        width * 0.464,
        height * 0.7217,
        width * 0.4799,
        height * 0.6925,
      )
      ..cubicTo(
        width * 0.4957,
        height * 0.6635,
        width * 0.3674,
        height * 0.5188,
        width * 0.3674,
        height * 0.5188,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.679, height * 0.4313)
      ..lineTo(width * 0.6525, height * 0.4312)
      ..lineTo(width * 0.5131, height * 0.4925)
      ..lineTo(width * 0.3736, height * 0.4312)
      ..lineTo(width * 0.3505, height * 0.4313)
      ..lineTo(width * 0.3385, height * 0.4313)
      ..lineTo(width * 0.3385, height * 0.5648)
      ..cubicTo(
        width * 0.3385,
        height * 0.5764,
        width * 0.3417,
        height * 0.5947,
        width * 0.352,
        height * 0.6149,
      )
      ..cubicTo(
        width * 0.3601,
        height * 0.6309,
        width * 0.3729,
        height * 0.6479,
        width * 0.3927,
        height * 0.6642,
      )
      ..cubicTo(
        width * 0.4024,
        height * 0.6722,
        width * 0.4141,
        height * 0.6799,
        width * 0.4273,
        height * 0.6872,
      )
      ..cubicTo(
        width * 0.4456,
        height * 0.6973,
        width * 0.4682,
        height * 0.7063,
        width * 0.4945,
        height * 0.714,
      )
      ..cubicTo(
        width * 0.5009,
        height * 0.7159,
        width * 0.5063,
        height * 0.7182,
        width * 0.5132,
        height * 0.7199,
      )
      ..cubicTo(
        width * 0.5204,
        height * 0.7181,
        width * 0.5259,
        height * 0.7158,
        width * 0.5325,
        height * 0.7138,
      )
      ..cubicTo(
        width * 0.5588,
        height * 0.706,
        width * 0.5814,
        height * 0.697,
        width * 0.5996,
        height * 0.6869,
      )
      ..cubicTo(
        width * 0.6134,
        height * 0.6793,
        width * 0.6255,
        height * 0.6713,
        width * 0.6354,
        height * 0.663,
      )
      ..cubicTo(
        width * 0.6553,
        height * 0.6463,
        width * 0.6662,
        height * 0.6286,
        width * 0.6752,
        height * 0.6129,
      )
      ..cubicTo(
        width * 0.6861,
        height * 0.5938,
        width * 0.6877,
        height * 0.576,
        width * 0.6877,
        height * 0.5648,
      )
      ..lineTo(width * 0.6877, height * 0.4313)
      ..lineTo(width * 0.679, height * 0.4313)
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.6878, height * 0.4877)
      ..lineTo(width * 0.6502, height * 0.4558)
      ..lineTo(width * 0.6791, height * 0.4313)
      ..lineTo(width * 0.6526, height * 0.4312)
      ..lineTo(width * 0.5131, height * 0.4925)
      ..lineTo(width * 0.3736, height * 0.4312)
      ..lineTo(width * 0.3505, height * 0.4313)
      ..lineTo(width * 0.3794, height * 0.4558)
      ..lineTo(width * 0.3385, height * 0.4904)
      ..lineTo(width * 0.3385, height * 0.4926)
      ..lineTo(width * 0.3781, height * 0.5261)
      ..lineTo(width * 0.3385, height * 0.5596)
      ..lineTo(width * 0.3385, height * 0.5617)
      ..lineTo(width * 0.3766, height * 0.594)
      ..lineTo(width * 0.352, height * 0.6149)
      ..cubicTo(
        width * 0.3601,
        height * 0.6309,
        width * 0.3729,
        height * 0.6479,
        width * 0.3927,
        height * 0.6642,
      )
      ..lineTo(width * 0.4284, height * 0.634)
      ..lineTo(width * 0.4593, height * 0.6601)
      ..lineTo(width * 0.4273, height * 0.6872)
      ..cubicTo(
        width * 0.4456,
        height * 0.6973,
        width * 0.4682,
        height * 0.7062,
        width * 0.4945,
        height * 0.714,
      )
      ..lineTo(width * 0.5136, height * 0.6978)
      ..lineTo(width * 0.5325, height * 0.7137)
      ..cubicTo(
        width * 0.5588,
        height * 0.7059,
        width * 0.5814,
        height * 0.697,
        width * 0.5996,
        height * 0.6869,
      )
      ..lineTo(width * 0.568, height * 0.6601)
      ..lineTo(width * 0.6, height * 0.633)
      ..lineTo(width * 0.6354, height * 0.663)
      ..cubicTo(
        width * 0.6553,
        height * 0.6463,
        width * 0.6673,
        height * 0.6289,
        width * 0.6752,
        height * 0.6129,
      )
      ..lineTo(width * 0.6529, height * 0.594)
      ..lineTo(width * 0.6877, height * 0.5645)
      ..lineTo(width * 0.6877, height * 0.5568)
      ..lineTo(width * 0.6514, height * 0.5261)
      ..lineTo(width * 0.6877, height * 0.4953)
      ..lineTo(width * 0.6878, height * 0.4877)
      ..close()
      ..moveTo(width * 0.6341, height * 0.5261)
      ..lineTo(width * 0.6, height * 0.555)
      ..lineTo(width * 0.5659, height * 0.5261)
      ..lineTo(width * 0.6, height * 0.4971)
      ..lineTo(width * 0.6341, height * 0.5261)
      ..close()
      ..moveTo(width * 0.5673, height * 0.594)
      ..lineTo(width * 0.6, height * 0.5663)
      ..lineTo(width * 0.6327, height * 0.594)
      ..lineTo(width * 0.6, height * 0.6217)
      ..lineTo(width * 0.5673, height * 0.594)
      ..close()
      ..moveTo(width * 0.4613, height * 0.5261)
      ..lineTo(width * 0.4284, height * 0.554)
      ..lineTo(width * 0.3955, height * 0.5261)
      ..lineTo(width * 0.4284, height * 0.4982)
      ..lineTo(width * 0.4613, height * 0.5261)
      ..close()
      ..moveTo(width * 0.3968, height * 0.594)
      ..lineTo(width * 0.4284, height * 0.5673)
      ..lineTo(width * 0.46, height * 0.594)
      ..lineTo(width * 0.4284, height * 0.6207)
      ..lineTo(width * 0.3968, height * 0.594)
      ..close()
      ..moveTo(width * 0.4807, height * 0.6602)
      ..lineTo(width * 0.5136, height * 0.6323)
      ..lineTo(width * 0.5464, height * 0.6602)
      ..lineTo(width * 0.5136, height * 0.688)
      ..lineTo(width * 0.4807, height * 0.6602)
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.5132, height * 0.4473)
      ..cubicTo(
        width * 0.476,
        height * 0.4325,
        width * 0.4199,
        height * 0.4312,
        width * 0.3736,
        height * 0.4312,
      )
      ..lineTo(width * 0.5125, height * 0.6859)
      ..cubicTo(
        width * 0.5125,
        height * 0.687,
        width * 0.5136,
        height * 0.687,
        width * 0.5136,
        height * 0.6859,
      )
      ..lineTo(width * 0.6526, height * 0.4312)
      ..cubicTo(
        width * 0.6063,
        height * 0.4312,
        width * 0.5502,
        height * 0.4325,
        width * 0.5132,
        height * 0.4473,
      )
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.1122, height * 0.4709)
      ..cubicTo(
        width * 0.1156,
        height * 0.4107,
        width * 0.131,
        height * 0.3806,
        width * 0.1296,
        height * 0.3571,
      )
      ..cubicTo(
        width * 0.1282,
        height * 0.3336,
        width * 0.1598,
        height * 0.3336,
        width * 0.1844,
        height * 0.3289,
      )
      ..cubicTo(
        width * 0.2089,
        height * 0.3242,
        width * 0.2205,
        height * 0.3374,
        width * 0.2406,
        height * 0.3383,
      )
      ..cubicTo(
        width * 0.2608,
        height * 0.3392,
        width * 0.2723,
        height * 0.3411,
        width * 0.2665,
        height * 0.3571,
      )
      ..cubicTo(
        width * 0.2607,
        height * 0.373,
        width * 0.242,
        height * 0.3936,
        width * 0.2377,
        height * 0.3993,
      )
      ..cubicTo(
        width * 0.2334,
        height * 0.405,
        width * 0.2622,
        height * 0.4407,
        width * 0.2853,
        height * 0.4708,
      )
      ..cubicTo(
        width * 0.3084,
        height * 0.5009,
        width * 0.3415,
        height * 0.5394,
        width * 0.317,
        height * 0.5996,
      )
      ..cubicTo(
        width * 0.2925,
        height * 0.6597,
        width * 0.2781,
        height * 0.6813,
        width * 0.2681,
        height * 0.6861,
      )
      ..cubicTo(
        width * 0.258,
        height * 0.6908,
        width * 0.2658,
        height * 0.6466,
        width * 0.2568,
        height * 0.6259,
      )
      ..cubicTo(
        width * 0.2479,
        height * 0.6052,
        width * 0.2363,
        height * 0.6005,
        width * 0.2363,
        height * 0.6005,
      )
      ..cubicTo(
        width * 0.2363,
        height * 0.6005,
        width * 0.1974,
        height * 0.6245,
        width * 0.183,
        height * 0.6548,
      )
      ..cubicTo(
        width * 0.1686,
        height * 0.6851,
        width * 0.1801,
        height * 0.7072,
        width * 0.2075,
        height * 0.7196,
      )
      ..cubicTo(
        width * 0.2349,
        height * 0.7321,
        width * 0.2969,
        height * 0.7396,
        width * 0.307,
        height * 0.7434,
      )
      ..cubicTo(
        width * 0.317,
        height * 0.7471,
        width * 0.2868,
        height * 0.7556,
        width * 0.245,
        height * 0.7537,
      )
      ..cubicTo(
        width * 0.2032,
        height * 0.7519,
        width * 0.1043,
        height * 0.729,
        width * 0.0672,
        height * 0.7033,
      )
      ..cubicTo(
        width * 0.0302,
        height * 0.6776,
        width * -0.0203,
        height * 0.6356,
        width * 0.0085,
        height * 0.5892,
      )
      ..cubicTo(
        width * 0.0244,
        height * 0.5638,
        width * 0.0547,
        height * 0.5554,
        width * 0.0647,
        height * 0.5469,
      )
      ..cubicTo(
        width * 0.0748,
        height * 0.5385,
        width * 0.1112,
        height * 0.4888,
        width * 0.1122,
        height * 0.4709,
      )
      ..close();

    final path12 = Path()
      ..moveTo(width * 0.8142, height * 0.3482)
      ..cubicTo(
        width * 0.8457,
        height * 0.3453,
        width * 0.9238,
        height * 0.4765,
        width * 0.9324,
        height * 0.5329,
      )
      ..cubicTo(
        width * 0.9411,
        height * 0.5893,
        width * 0.9396,
        height * 0.6908,
        width * 0.8877,
        height * 0.6946,
      )
      ..cubicTo(
        width * 0.8359,
        height * 0.6983,
        width * 0.7892,
        height * 0.6852,
        width * 0.7729,
        height * 0.6288,
      )
      ..cubicTo(
        width * 0.7566,
        height * 0.5723,
        width * 0.769,
        height * 0.5291,
        width * 0.7729,
        height * 0.4925,
      )
      ..cubicTo(
        width * 0.7768,
        height * 0.4558,
        width * 0.7681,
        height * 0.3524,
        width * 0.8142,
        height * 0.3482,
      )
      ..close();

    final path13 = Path()
      ..moveTo(width * 0.8011, height * 0.3482)
      ..cubicTo(
        width * 0.8033,
        height * 0.3241,
        width * 0.8388,
        height * 0.3157,
        width * 0.8805,
        height * 0.3205,
      )
      ..cubicTo(
        width * 0.9223,
        height * 0.3252,
        width * 0.9195,
        height * 0.3675,
        width * 0.918,
        height * 0.3872,
      )
      ..cubicTo(
        width * 0.9165,
        height * 0.4069,
        width * 0.9836,
        height * 0.4022,
        width * 0.984,
        height * 0.5085,
      )
      ..cubicTo(
        width * 0.9843,
        height * 0.6147,
        width * 0.9382,
        height * 0.6748,
        width * 0.9511,
        height * 0.6899,
      )
      ..cubicTo(
        width * 0.9641,
        height * 0.7049,
        width * 1.0232,
        height * 0.7246,
        width * 0.9901,
        height * 0.7284,
      )
      ..cubicTo(
        width * 0.9569,
        height * 0.7322,
        width * 0.9151,
        height * 0.7097,
        width * 0.8863,
        height * 0.703,
      )
      ..cubicTo(
        width * 0.8574,
        height * 0.6964,
        width * 0.8888,
        height * 0.6701,
        width * 0.9005,
        height * 0.6382,
      )
      ..cubicTo(
        width * 0.9122,
        height * 0.6063,
        width * 0.9064,
        height * 0.5714,
        width * 0.8819,
        height * 0.5756,
      )
      ..cubicTo(
        width * 0.8574,
        height * 0.5799,
        width * 0.892,
        height * 0.6574,
        width * 0.8517,
        height * 0.6549,
      )
      ..cubicTo(
        width * 0.8113,
        height * 0.6523,
        width * 0.7897,
        height * 0.5942,
        width * 0.794,
        height * 0.541,
      )
      ..cubicTo(
        width * 0.7983,
        height * 0.4878,
        width * 0.8142,
        height * 0.484,
        width * 0.8373,
        height * 0.4671,
      )
      ..cubicTo(
        width * 0.8603,
        height * 0.4502,
        width * 0.8459,
        height * 0.4427,
        width * 0.8214,
        height * 0.4248,
      )
      ..cubicTo(
        width * 0.7969,
        height * 0.407,
        width * 0.8055,
        height * 0.3929,
        width * 0.8315,
        height * 0.3835,
      )
      ..cubicTo(
        width * 0.8575,
        height * 0.374,
        width * 0.798,
        height * 0.3806,
        width * 0.8011,
        height * 0.3482,
      )
      ..close();

    final path14 = Path()
      ..moveTo(width * 0.2167, height * 0.9182)
      ..cubicTo(
        width * 0.2685,
        height * 0.9248,
        width * 0.3363,
        height * 0.9389,
        width * 0.3363,
        height * 0.9389,
      )
      ..lineTo(width * 0.3277, height)
      ..cubicTo(
        width * 0.3277,
        height,
        width * 0.3061,
        height * 0.9793,
        width * 0.1921,
        height * 0.9662,
      )
      ..cubicTo(
        width * 0.1791,
        height * 0.9417,
        width * 0.2167,
        height * 0.9182,
        width * 0.2167,
        height * 0.9182,
      )
      ..close()
      ..moveTo(width * 0.2339, height * 0.8158)
      ..cubicTo(
        width * 0.2339,
        height * 0.8158,
        width * 0.2354,
        height * 0.8355,
        width * 0.195,
        height * 0.858,
      )
      ..cubicTo(
        width * 0.1546,
        height * 0.8806,
        width * 0.1086,
        height * 0.8787,
        width * 0.1114,
        height * 0.8534,
      )
      ..cubicTo(
        width * 0.1503,
        height * 0.8468,
        width * 0.1402,
        height * 0.7965,
        width * 0.1726,
        height * 0.79,
      )
      ..cubicTo(
        width * 0.1691,
        height * 0.8111,
        width * 0.1821,
        height * 0.8251,
        width * 0.2339,
        height * 0.8158,
      )
      ..close()
      ..moveTo(width * 0.8311, height * 0.9182)
      ..cubicTo(
        width * 0.7792,
        height * 0.9248,
        width * 0.7114,
        height * 0.9389,
        width * 0.7114,
        height * 0.9389,
      )
      ..lineTo(width * 0.7201, height)
      ..cubicTo(
        width * 0.7201,
        height,
        width * 0.7417,
        height * 0.9793,
        width * 0.8556,
        height * 0.9662,
      )
      ..cubicTo(
        width * 0.8686,
        height * 0.9417,
        width * 0.8311,
        height * 0.9182,
        width * 0.8311,
        height * 0.9182,
      )
      ..close();

    final path15 = Path()
      ..moveTo(width * 0.808, height * 0.8647)
      ..cubicTo(
        width * 0.8412,
        height * 0.8411,
        width * 0.8642,
        height * 0.8421,
        width * 0.8816,
        height * 0.8195,
      )
      ..cubicTo(
        width * 0.8989,
        height * 0.797,
        width * 0.8729,
        height * 0.7791,
        width * 0.8282,
        height * 0.7845,
      )
      ..cubicTo(
        width * 0.7836,
        height * 0.7898,
        width * 0.7375,
        height * 0.8365,
        width * 0.7375,
        height * 0.8365,
      )
      ..cubicTo(
        width * 0.7375,
        height * 0.8365,
        width * 0.6525,
        height * 0.8035,
        width * 0.524,
        height * 0.8035,
      )
      ..cubicTo(
        width * 0.3954,
        height * 0.8035,
        width * 0.3104,
        height * 0.8365,
        width * 0.3104,
        height * 0.8365,
      )
      ..cubicTo(
        width * 0.3104,
        height * 0.8365,
        width * 0.2643,
        height * 0.7898,
        width * 0.2196,
        height * 0.7845,
      )
      ..cubicTo(
        width * 0.175,
        height * 0.7791,
        width * 0.149,
        height * 0.797,
        width * 0.1663,
        height * 0.8195,
      )
      ..cubicTo(
        width * 0.1836,
        height * 0.8421,
        width * 0.2067,
        height * 0.8411,
        width * 0.2398,
        height * 0.8647,
      )
      ..cubicTo(
        width * 0.1865,
        height * 0.8882,
        width * 0.1432,
        height * 0.9352,
        width * 0.1432,
        height * 0.9352,
      )
      ..lineTo(width * 0.1922, height * 0.9662)
      ..cubicTo(
        width * 0.1922,
        height * 0.9662,
        width * 0.2196,
        height * 0.9361,
        width * 0.2773,
        height * 0.9051,
      )
      ..cubicTo(
        width * 0.3277,
        height * 0.9427,
        width * 0.3277,
        height,
        width * 0.3277,
        height,
      )
      ..cubicTo(
        width * 0.3277,
        height,
        width * 0.3429,
        height * 0.9596,
        width * 0.3663,
        height * 0.9464,
      )
      ..cubicTo(
        width * 0.3652,
        height * 0.9098,
        width * 0.3493,
        height * 0.8825,
        width * 0.3493,
        height * 0.8825,
      )
      ..cubicTo(
        width * 0.3493,
        height * 0.8825,
        width * 0.4246,
        height * 0.8525,
        width * 0.524,
        height * 0.8525,
      )
      ..cubicTo(
        width * 0.6232,
        height * 0.8525,
        width * 0.6986,
        height * 0.8825,
        width * 0.6986,
        height * 0.8825,
      )
      ..cubicTo(
        width * 0.6986,
        height * 0.8825,
        width * 0.6827,
        height * 0.9098,
        width * 0.6816,
        height * 0.9464,
      )
      ..cubicTo(
        width * 0.7051,
        height * 0.9596,
        width * 0.7202,
        height,
        width * 0.7202,
        height,
      )
      ..cubicTo(
        width * 0.7202,
        height,
        width * 0.7202,
        height * 0.9427,
        width * 0.7707,
        height * 0.9051,
      )
      ..cubicTo(
        width * 0.8283,
        height * 0.9361,
        width * 0.8557,
        height * 0.9662,
        width * 0.8557,
        height * 0.9662,
      )
      ..lineTo(width * 0.9047, height * 0.9352)
      ..cubicTo(
        width * 0.9046,
        height * 0.9351,
        width * 0.8614,
        height * 0.8881,
        width * 0.808,
        height * 0.8647,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors.first))
      ..drawPath(path5, paintCreator(customColors[1]))
      ..drawPath(path6, paintCreator(customColors[2]))
      ..drawPath(path7, paintCreator(customColors[3]))
      ..drawPath(path8, paintCreator(customColors.first))
      ..drawPath(path9, paintCreator(customColors[4]))
      ..drawPath(path10, paintCreator(customColors[5]))
      ..drawPath(path11, paintCreator(customColors[6]))
      ..drawPath(path12, paintCreator(customColors.first))
      ..drawPath(path13, paintCreator(customColors[7]))
      ..drawPath(path14, paintCreator(customColors[8]))
      ..drawPath(path15, paintCreator(customColors[9]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
