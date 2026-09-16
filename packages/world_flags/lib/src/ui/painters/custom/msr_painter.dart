// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Montserrat.
///
/// Draws Erin embracing a cross beside her harp.
final class MsrPainter extends UnionJackPainter {
  /// Creates a new instance of [MsrPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7948;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width, 0)
      ..lineTo(0, 0)
      ..lineTo(0, height * 0.6015)
      ..lineTo(width * 0.5, height * 0.7615)
      ..lineTo(width, height * 0.6015)
      ..close()
      ..moveTo(0, height * 0.6015)
      ..cubicTo(
        width * 0.0006,
        height * 0.6081,
        width * 0.0004,
        height * 0.6151,
        width * 0.0013,
        height * 0.6215,
      )
      ..cubicTo(
        width * 0.0156,
        height * 0.7195,
        width * 0.0667,
        height * 0.792,
        width * 0.15,
        height * 0.851,
      )
      ..cubicTo(
        width * 0.294,
        height * 0.9532,
        width * 0.5,
        height * 0.9757,
        width * 0.5,
        height,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.9756,
        width * 0.706,
        height * 0.9532,
        width * 0.8499,
        height * 0.851,
      )
      ..cubicTo(
        width * 0.9332,
        height * 0.792,
        width * 0.9845,
        height * 0.7194,
        width * 0.9986,
        height * 0.6215,
      )
      ..cubicTo(
        width * 0.9995,
        height * 0.6151,
        width * 0.9994,
        height * 0.6081,
        width * 0.9999,
        height * 0.6015,
      )
      ..lineTo(0, height * 0.6015)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.9673, height * 0.0327)
      ..lineTo(width * 0.0327, height * 0.0327)
      ..lineTo(width * 0.0327, height * 0.5949)
      ..lineTo(width * 0.5, height * 0.7444)
      ..lineTo(width * 0.9673, height * 0.5949)
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.0327, height * 0.5949)
      ..cubicTo(
        width * 0.0333,
        height * 0.601,
        width * 0.0331,
        height * 0.6076,
        width * 0.0339,
        height * 0.6136,
      )
      ..cubicTo(
        width * 0.0473,
        height * 0.7051,
        width * 0.0951,
        height * 0.7729,
        width * 0.1729,
        height * 0.828,
      )
      ..cubicTo(
        width * 0.3075,
        height * 0.9236,
        width * 0.5,
        height * 0.9446,
        width * 0.5,
        height * 0.9673,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.9445,
        width * 0.6925,
        height * 0.9236,
        width * 0.827,
        height * 0.828,
      )
      ..cubicTo(
        width * 0.9048,
        height * 0.7729,
        width * 0.9528,
        height * 0.7051,
        width * 0.966,
        height * 0.6136,
      )
      ..cubicTo(
        width * 0.9668,
        height * 0.6076,
        width * 0.9667,
        height * 0.601,
        width * 0.9672,
        height * 0.5949,
      )
      ..lineTo(width * 0.0327, height * 0.5949)
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.5327, height * 0.2013)
      ..lineTo(width * 0.7108, height * 0.2013)
      ..lineTo(width * 0.7108, height * 0.1543)
      ..lineTo(width * 0.5327, height * 0.1543)
      ..lineTo(width * 0.5327, height * 0.0913)
      ..lineTo(width * 0.4704, height * 0.0913)
      ..lineTo(width * 0.4704, height * 0.1543)
      ..lineTo(width * 0.2891, height * 0.1543)
      ..lineTo(width * 0.2891, height * 0.2013)
      ..lineTo(width * 0.4704, height * 0.2013)
      ..lineTo(width * 0.4704, height * 0.7959)
      ..lineTo(width * 0.5327, height * 0.7959)
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.5327, height * 0.2713)
      ..cubicTo(
        width * 0.5435,
        height * 0.2639,
        width * 0.5492,
        height * 0.2594,
        width * 0.5557,
        height * 0.2602,
      )
      ..cubicTo(
        width * 0.5624,
        height * 0.261,
        width * 0.5713,
        height * 0.2606,
        width * 0.5779,
        height * 0.259,
      )
      ..cubicTo(
        width * 0.5845,
        height * 0.2573,
        width * 0.6175,
        height * 0.2541,
        width * 0.6309,
        height * 0.2577,
      )
      ..cubicTo(
        width * 0.6354,
        height * 0.2582,
        width * 0.6416,
        height * 0.2601,
        width * 0.651,
        height * 0.2665,
      )
      ..cubicTo(
        width * 0.6606,
        height * 0.2727,
        width * 0.6743,
        height * 0.2837,
        width * 0.6696,
        height * 0.3141,
      )
      ..cubicTo(
        width * 0.6649,
        height * 0.3444,
        width * 0.6665,
        height * 0.3574,
        width * 0.6645,
        height * 0.3744,
      )
      ..cubicTo(
        width * 0.661,
        height * 0.4043,
        width * 0.6525,
        height * 0.4291,
        width * 0.6375,
        height * 0.4271,
      )
      ..cubicTo(
        width * 0.6579,
        height * 0.4554,
        width * 0.6598,
        height * 0.4797,
        width * 0.6731,
        height * 0.4992,
      )
      ..cubicTo(
        width * 0.6863,
        height * 0.5185,
        width * 0.6947,
        height * 0.5583,
        width * 0.6894,
        height * 0.6012,
      )
      ..cubicTo(
        width * 0.6843,
        height * 0.6441,
        width * 0.6701,
        height * 0.7405,
        width * 0.7129,
        height * 0.8053,
      )
      ..cubicTo(
        width * 0.7057,
        height * 0.8093,
        width * 0.6884,
        height * 0.8053,
        width * 0.6731,
        height * 0.7923,
      )
      ..cubicTo(
        width * 0.6579,
        height * 0.7793,
        width * 0.6512,
        height * 0.7798,
        width * 0.6385,
        height * 0.7874,
      )
      ..cubicTo(
        width * 0.5999,
        height * 0.8108,
        width * 0.5636,
        height * 0.8392,
        width * 0.5101,
        height * 0.8108,
      )
      ..cubicTo(
        width * 0.4978,
        height * 0.8043,
        width * 0.4941,
        height * 0.7966,
        width * 0.5029,
        height * 0.7768,
      )
      ..cubicTo(
        width * 0.5254,
        height * 0.7274,
        width * 0.5362,
        height * 0.6598,
        width * 0.5326,
        height * 0.6279,
      )
      ..lineTo(width * 0.5326, height * 0.2713)
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.3145, height * 0.6379)
      ..cubicTo(
        width * 0.3472,
        height * 0.6646,
        width * 0.449,
        height * 0.7503,
        width * 0.4621,
        height * 0.76,
      )
      ..cubicTo(
        width * 0.4754,
        height * 0.7697,
        width * 0.4816,
        height * 0.769,
        width * 0.4867,
        height * 0.7592,
      )
      ..cubicTo(
        width * 0.5236,
        height * 0.6888,
        width * 0.5143,
        height * 0.5989,
        width * 0.423,
        height * 0.5105,
      )
      ..cubicTo(
        width * 0.4082,
        height * 0.554,
        width * 0.3701,
        height * 0.5822,
        width * 0.3105,
        height * 0.5923,
      )
      ..cubicTo(
        width * 0.2801,
        height * 0.5975,
        width * 0.2748,
        height * 0.613,
        width * 0.2804,
        height * 0.619,
      )
      ..cubicTo(
        width * 0.2886,
        height * 0.6073,
        width * 0.3069,
        height * 0.6069,
        width * 0.3156,
        height * 0.6203,
      )
      ..cubicTo(
        width * 0.3226,
        height * 0.6313,
        width * 0.3134,
        height * 0.645,
        width * 0.2981,
        height * 0.6487,
      )
      ..cubicTo(
        width * 0.2829,
        height * 0.6523,
        width * 0.2604,
        height * 0.6519,
        width * 0.2513,
        height * 0.6393,
      )
      ..cubicTo(
        width * 0.2421,
        height * 0.6268,
        width * 0.2346,
        height * 0.5976,
        width * 0.2768,
        height * 0.5831,
      )
      ..cubicTo(
        width * 0.3191,
        height * 0.5685,
        width * 0.3646,
        height * 0.5535,
        width * 0.373,
        height * 0.5235,
      )
      ..cubicTo(
        width * 0.3818,
        height * 0.4936,
        width * 0.3934,
        height * 0.479,
        width * 0.4189,
        height * 0.477,
      )
      ..cubicTo(
        width * 0.56,
        height * 0.5802,
        width * 0.5779,
        height * 0.6957,
        width * 0.5192,
        height * 0.7989,
      )
      ..cubicTo(
        width * 0.505,
        height * 0.8239,
        width * 0.4825,
        height * 0.8305,
        width * 0.4672,
        height * 0.8152,
      )
      ..cubicTo(
        width * 0.4519,
        height * 0.7997,
        width * 0.3452,
        height * 0.6994,
        width * 0.2902,
        height * 0.65,
      )
      ..cubicTo(
        width * 0.3029,
        height * 0.6493,
        width * 0.3112,
        height * 0.6437,
        width * 0.3145,
        height * 0.6379,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.5695, height * 0.2408)
      ..cubicTo(
        width * 0.5723,
        height * 0.2478,
        width * 0.5738,
        height * 0.2567,
        width * 0.5692,
        height * 0.2647,
      )
      ..cubicTo(
        width * 0.5645,
        height * 0.2728,
        width * 0.5636,
        height * 0.2825,
        width * 0.5713,
        height * 0.2943,
      )
      ..cubicTo(
        width * 0.5836,
        height * 0.2805,
        width * 0.6008,
        height * 0.2833,
        width * 0.611,
        height * 0.2752,
      )
      ..cubicTo(
        width * 0.6212,
        height * 0.2671,
        width * 0.6233,
        height * 0.2594,
        width * 0.631,
        height * 0.2578,
      )
      ..cubicTo(
        width * 0.6233,
        height * 0.2526,
        width * 0.6116,
        height * 0.2469,
        width * 0.6141,
        height * 0.2315,
      )
      ..cubicTo(
        width * 0.6166,
        height * 0.2161,
        width * 0.6436,
        height * 0.2035,
        width * 0.6192,
        height * 0.1801,
      )
      ..cubicTo(
        width * 0.6035,
        height * 0.1649,
        width * 0.5805,
        height * 0.1691,
        width * 0.5705,
        height * 0.175,
      )
      ..cubicTo(
        width * 0.5658,
        height * 0.1777,
        width * 0.5619,
        height * 0.1816,
        width * 0.5603,
        height * 0.1843,
      )
      ..cubicTo(
        width * 0.5589,
        height * 0.1869,
        width * 0.5608,
        height * 0.1929,
        width * 0.557,
        height * 0.1965,
      )
      ..cubicTo(
        width * 0.5546,
        height * 0.199,
        width * 0.5515,
        height * 0.2014,
        width * 0.5479,
        height * 0.2034,
      )
      ..cubicTo(
        width * 0.5456,
        height * 0.2046,
        width * 0.5441,
        height * 0.2066,
        width * 0.5466,
        height * 0.2088,
      )
      ..cubicTo(
        width * 0.5475,
        height * 0.2097,
        width * 0.5493,
        height * 0.21,
        width * 0.5513,
        height * 0.2105,
      )
      ..cubicTo(
        width * 0.5502,
        height * 0.2123,
        width * 0.5489,
        height * 0.2141,
        width * 0.5476,
        height * 0.2155,
      )
      ..cubicTo(
        width * 0.5464,
        height * 0.2167,
        width * 0.5468,
        height * 0.2179,
        width * 0.5484,
        height * 0.2188,
      )
      ..cubicTo(
        width * 0.5465,
        height * 0.2237,
        width * 0.5502,
        height * 0.2243,
        width * 0.5476,
        height * 0.2279,
      )
      ..cubicTo(
        width * 0.5455,
        height * 0.231,
        width * 0.5424,
        height * 0.2348,
        width * 0.5506,
        height * 0.2384,
      )
      ..cubicTo(
        width * 0.553,
        height * 0.2395,
        width * 0.5639,
        height * 0.2414,
        width * 0.5695,
        height * 0.2408,
      )
      ..close()
      ..moveTo(width * 0.4704, height * 0.3215)
      ..cubicTo(
        width * 0.4563,
        height * 0.3243,
        width * 0.4334,
        height * 0.3195,
        width * 0.4158,
        height * 0.3211,
      )
      ..cubicTo(
        width * 0.4083,
        height * 0.3218,
        width * 0.4022,
        height * 0.3186,
        width * 0.4031,
        height * 0.3127,
      )
      ..cubicTo(
        width * 0.4042,
        height * 0.3065,
        width * 0.4052,
        height * 0.2972,
        width * 0.4037,
        height * 0.2887,
      )
      ..cubicTo(
        width * 0.4014,
        height * 0.2754,
        width * 0.4093,
        height * 0.2571,
        width * 0.4205,
        height * 0.2369,
      )
      ..cubicTo(
        width * 0.4318,
        height * 0.2166,
        width * 0.4375,
        height * 0.2053,
        width * 0.4375,
        height * 0.1958,
      )
      ..cubicTo(
        width * 0.4375,
        height * 0.1895,
        width * 0.4381,
        height * 0.1824,
        width * 0.4453,
        height * 0.1788,
      )
      ..cubicTo(
        width * 0.4506,
        height * 0.1761,
        width * 0.4516,
        height * 0.1735,
        width * 0.4535,
        height * 0.1713,
      )
      ..cubicTo(
        width * 0.4578,
        height * 0.1662,
        width * 0.4619,
        height * 0.165,
        width * 0.4623,
        height * 0.168,
      )
      ..cubicTo(
        width * 0.4628,
        height * 0.1699,
        width * 0.4619,
        height * 0.1715,
        width * 0.4599,
        height * 0.174,
      )
      ..cubicTo(
        width * 0.4645,
        height * 0.171,
        width * 0.4722,
        height * 0.1674,
        width * 0.4741,
        height * 0.1664,
      )
      ..cubicTo(
        width * 0.4758,
        height * 0.1654,
        width * 0.4848,
        height * 0.1603,
        width * 0.4852,
        height * 0.1651,
      )
      ..cubicTo(
        width * 0.4889,
        height * 0.1637,
        width * 0.4914,
        height * 0.1638,
        width * 0.4921,
        height * 0.1652,
      )
      ..cubicTo(
        width * 0.4931,
        height * 0.167,
        width * 0.4925,
        height * 0.1676,
        width * 0.4908,
        height * 0.1688,
      )
      ..cubicTo(
        width * 0.4932,
        height * 0.1684,
        width * 0.4963,
        height * 0.172,
        width * 0.4913,
        height * 0.1751,
      )
      ..cubicTo(
        width * 0.4938,
        height * 0.1744,
        width * 0.4965,
        height * 0.1779,
        width * 0.4918,
        height * 0.1812,
      )
      ..cubicTo(
        width * 0.4869,
        height * 0.1845,
        width * 0.4813,
        height * 0.1869,
        width * 0.4794,
        height * 0.1895,
      )
      ..cubicTo(
        width * 0.4777,
        height * 0.1922,
        width * 0.4656,
        height * 0.1995,
        width * 0.4608,
        height * 0.2011,
      )
      ..cubicTo(
        width * 0.4561,
        height * 0.2028,
        width * 0.4558,
        height * 0.2049,
        width * 0.4558,
        height * 0.2106,
      )
      ..cubicTo(
        width * 0.4558,
        height * 0.273,
        width * 0.4463,
        height * 0.268,
        width * 0.4463,
        height * 0.2829,
      )
      ..cubicTo(
        width * 0.4463,
        height * 0.2869,
        width * 0.4453,
        height * 0.2906,
        width * 0.4503,
        height * 0.2893,
      )
      ..cubicTo(
        width * 0.4556,
        height * 0.2881,
        width * 0.4629,
        height * 0.2863,
        width * 0.4705,
        height * 0.2863,
      )
      ..lineTo(width * 0.4705, height * 0.3215)
      ..close()
      ..moveTo(width * 0.4736, height * 0.4559)
      ..cubicTo(
        width * 0.4966,
        height * 0.4466,
        width * 0.5229,
        height * 0.4433,
        width * 0.5367,
        height * 0.4404,
      )
      ..cubicTo(
        width * 0.5504,
        height * 0.4377,
        width * 0.5724,
        height * 0.4291,
        width * 0.5831,
        height * 0.4246,
      )
      ..cubicTo(
        width * 0.5937,
        height * 0.4202,
        width * 0.6023,
        height * 0.4142,
        width * 0.6085,
        height * 0.4125,
      )
      ..cubicTo(
        width * 0.6146,
        height * 0.411,
        width * 0.6215,
        height * 0.4076,
        width * 0.6253,
        height * 0.4015,
      )
      ..cubicTo(
        width * 0.6452,
        height * 0.3708,
        width * 0.6559,
        height * 0.3461,
        width * 0.6559,
        height * 0.3247,
      )
      ..cubicTo(
        width * 0.6559,
        height * 0.3105,
        width * 0.6512,
        height * 0.2948,
        width * 0.6339,
        height * 0.306,
      )
      ..cubicTo(
        width * 0.6178,
        height * 0.3167,
        width * 0.6001,
        height * 0.3373,
        width * 0.5953,
        height * 0.3522,
      )
      ..cubicTo(
        width * 0.588,
        height * 0.3749,
        width * 0.5821,
        height * 0.3797,
        width * 0.5805,
        height * 0.3843,
      )
      ..cubicTo(
        width * 0.579,
        height * 0.3887,
        width * 0.5733,
        height * 0.3887,
        width * 0.5662,
        height * 0.3899,
      )
      ..cubicTo(
        width * 0.5363,
        height * 0.3952,
        width * 0.5291,
        height * 0.3989,
        width * 0.5067,
        height * 0.4122,
      )
      ..cubicTo(
        width * 0.4842,
        height * 0.4255,
        width * 0.4598,
        height * 0.4373,
        width * 0.4434,
        height * 0.4445,
      )
      ..cubicTo(
        width * 0.4271,
        height * 0.4518,
        width * 0.4242,
        height * 0.4526,
        width * 0.4205,
        height * 0.4585,
      )
      ..cubicTo(
        width * 0.4169,
        height * 0.4644,
        width * 0.4137,
        height * 0.4688,
        width * 0.4106,
        height * 0.4715,
      )
      ..cubicTo(
        width * 0.4075,
        height * 0.4741,
        width * 0.4066,
        height * 0.4772,
        width * 0.4074,
        height * 0.4804,
      )
      ..cubicTo(
        width * 0.4079,
        height * 0.483,
        width * 0.4064,
        height * 0.4951,
        width * 0.406,
        height * 0.4993,
      )
      ..cubicTo(
        width * 0.4058,
        height * 0.5033,
        width * 0.4071,
        height * 0.5043,
        width * 0.4091,
        height * 0.5045,
      )
      ..cubicTo(
        width * 0.4111,
        height * 0.5046,
        width * 0.4139,
        height * 0.5039,
        width * 0.415,
        height * 0.499,
      )
      ..cubicTo(
        width * 0.4138,
        height * 0.504,
        width * 0.4224,
        height * 0.5022,
        width * 0.4229,
        height * 0.4987,
      )
      ..cubicTo(
        width * 0.4226,
        height * 0.5039,
        width * 0.4315,
        height * 0.5008,
        width * 0.4321,
        height * 0.496,
      )
      ..cubicTo(
        width * 0.4321,
        height * 0.4993,
        width * 0.4388,
        height * 0.497,
        width * 0.4393,
        height * 0.4954,
      )
      ..cubicTo(
        width * 0.4409,
        height * 0.4913,
        width * 0.4422,
        height * 0.4868,
        width * 0.4442,
        height * 0.4836,
      )
      ..cubicTo(
        width * 0.4471,
        height * 0.4789,
        width * 0.4504,
        height * 0.4728,
        width * 0.4563,
        height * 0.4694,
      )
      ..cubicTo(
        width * 0.4628,
        height * 0.4656,
        width * 0.4597,
        height * 0.4614,
        width * 0.4736,
        height * 0.4559,
      )
      ..close()
      ..moveTo(width * 0.6386, height * 0.7876)
      ..cubicTo(
        width * 0.6402,
        height * 0.792,
        width * 0.6429,
        height * 0.7971,
        width * 0.644,
        height * 0.8,
      )
      ..cubicTo(
        width * 0.6451,
        height * 0.8031,
        width * 0.6432,
        height * 0.804,
        width * 0.6421,
        height * 0.8058,
      )
      ..cubicTo(
        width * 0.6368,
        height * 0.8146,
        width * 0.6311,
        height * 0.8288,
        width * 0.6303,
        height * 0.8365,
      )
      ..cubicTo(
        width * 0.6296,
        height * 0.841,
        width * 0.6259,
        height * 0.8453,
        width * 0.6241,
        height * 0.8478,
      )
      ..cubicTo(
        width * 0.6221,
        height * 0.8506,
        width * 0.6227,
        height * 0.853,
        width * 0.6274,
        height * 0.8558,
      )
      ..cubicTo(
        width * 0.6295,
        height * 0.857,
        width * 0.6366,
        height * 0.8553,
        width * 0.6372,
        height * 0.8525,
      )
      ..cubicTo(
        width * 0.6399,
        height * 0.8545,
        width * 0.6445,
        height * 0.8537,
        width * 0.6465,
        height * 0.8506,
      )
      ..cubicTo(
        width * 0.6487,
        height * 0.8525,
        width * 0.6526,
        height * 0.8512,
        width * 0.6551,
        height * 0.8482,
      )
      ..cubicTo(
        width * 0.6575,
        height * 0.8495,
        width * 0.6608,
        height * 0.8471,
        width * 0.6621,
        height * 0.8454,
      )
      ..cubicTo(
        width * 0.6655,
        height * 0.8469,
        width * 0.6694,
        height * 0.8451,
        width * 0.6695,
        height * 0.8395,
      )
      ..cubicTo(
        width * 0.6695,
        height * 0.8385,
        width * 0.6704,
        height * 0.8365,
        width * 0.6715,
        height * 0.8353,
      )
      ..cubicTo(
        width * 0.6723,
        height * 0.8339,
        width * 0.6728,
        height * 0.8313,
        width * 0.6727,
        height * 0.8291,
      )
      ..cubicTo(
        width * 0.6726,
        height * 0.8268,
        width * 0.6744,
        height * 0.8224,
        width * 0.6768,
        height * 0.8192,
      )
      ..cubicTo(
        width * 0.6792,
        height * 0.8161,
        width * 0.6834,
        height * 0.8106,
        width * 0.6815,
        height * 0.8053,
      )
      ..cubicTo(
        width * 0.68,
        height * 0.8004,
        width * 0.6772,
        height * 0.8007,
        width * 0.675,
        height * 0.7937,
      )
      ..cubicTo(
        width * 0.6694,
        height * 0.789,
        width * 0.6618,
        height * 0.7826,
        width * 0.6539,
        height * 0.7823,
      )
      ..cubicTo(
        width * 0.6459,
        height * 0.7819,
        width * 0.6413,
        height * 0.786,
        width * 0.6386,
        height * 0.7876,
      )
      ..close()
      ..moveTo(width * 0.4937, height * 0.8223)
      ..cubicTo(
        width * 0.5008,
        height * 0.8279,
        width * 0.5167,
        height * 0.8282,
        width * 0.5281,
        height * 0.8186,
      )
      ..cubicTo(
        width * 0.524,
        height * 0.8172,
        width * 0.515,
        height * 0.814,
        width * 0.5109,
        height * 0.8113,
      )
      ..cubicTo(
        width * 0.5054,
        height * 0.8158,
        width * 0.4989,
        height * 0.8209,
        width * 0.4937,
        height * 0.8223,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.5657, height * 0.1786)
      ..cubicTo(
        width * 0.5685,
        height * 0.1641,
        width * 0.5813,
        height * 0.1645,
        width * 0.5895,
        height * 0.166,
      )
      ..cubicTo(
        width * 0.5927,
        height * 0.1666,
        width * 0.6008,
        height * 0.1672,
        width * 0.6085,
        height * 0.1655,
      )
      ..cubicTo(
        width * 0.6235,
        height * 0.1623,
        width * 0.635,
        height * 0.1666,
        width * 0.6336,
        height * 0.1781,
      )
      ..cubicTo(
        width * 0.6376,
        height * 0.1805,
        width * 0.6418,
        height * 0.1862,
        width * 0.6411,
        height * 0.191,
      )
      ..cubicTo(
        width * 0.6404,
        height * 0.1959,
        width * 0.6417,
        height * 0.1979,
        width * 0.6471,
        height * 0.1986,
      )
      ..cubicTo(
        width * 0.6528,
        height * 0.1992,
        width * 0.6648,
        height * 0.2046,
        width * 0.6569,
        height * 0.2123,
      )
      ..cubicTo(
        width * 0.6646,
        height * 0.216,
        width * 0.6704,
        height * 0.2253,
        width * 0.6664,
        height * 0.2316,
      )
      ..cubicTo(
        width * 0.6623,
        height * 0.2378,
        width * 0.6499,
        height * 0.2388,
        width * 0.645,
        height * 0.2331,
      )
      ..cubicTo(
        width * 0.6393,
        height * 0.2351,
        width * 0.6303,
        height * 0.2355,
        width * 0.6245,
        height * 0.2309,
      )
      ..cubicTo(
        width * 0.6207,
        height * 0.2345,
        width * 0.6109,
        height * 0.2341,
        width * 0.6091,
        height * 0.2309,
      )
      ..cubicTo(
        width * 0.6074,
        height * 0.2276,
        width * 0.6045,
        height * 0.226,
        width * 0.6008,
        height * 0.225,
      )
      ..cubicTo(
        width * 0.5968,
        height * 0.2239,
        width * 0.5964,
        height * 0.215,
        width * 0.6026,
        height * 0.2141,
      )
      ..cubicTo(
        width * 0.6017,
        height * 0.2114,
        width * 0.6021,
        height * 0.2084,
        width * 0.6037,
        height * 0.207,
      )
      ..cubicTo(
        width * 0.6051,
        height * 0.2055,
        width * 0.6039,
        height * 0.2029,
        width * 0.6003,
        height * 0.2008,
      )
      ..cubicTo(
        width * 0.5968,
        height * 0.1985,
        width * 0.5937,
        height * 0.19,
        width * 0.5972,
        height * 0.1854,
      )
      ..cubicTo(
        width * 0.5912,
        height * 0.187,
        width * 0.5776,
        height * 0.1824,
        width * 0.5748,
        height * 0.1791,
      )
      ..cubicTo(
        width * 0.5722,
        height * 0.1759,
        width * 0.5684,
        height * 0.1757,
        width * 0.5657,
        height * 0.1786,
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
      ..drawPath(path7, paintCreator(customColors[5]))
      ..drawPath(path8, paintCreator(customColors[6]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
