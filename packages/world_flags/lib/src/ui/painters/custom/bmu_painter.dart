// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Bermuda.
///
/// Draws a red lion holding the shield of the wrecked Sea Venture.
final class BmuPainter extends UnionJackPainter {
  /// Creates a new instance of [BmuPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.814;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height * 0.6879)
      ..cubicTo(
        0,
        height * 0.7364,
        width * 0.0136,
        height * 0.8028,
        width * 0.1223,
        height * 0.8439,
      )
      ..cubicTo(
        width * 0.2148,
        height * 0.879,
        width * 0.3528,
        height * 0.9193,
        width * 0.4155,
        height * 0.9516,
      )
      ..cubicTo(
        width * 0.4506,
        height * 0.9695,
        width * 0.5049,
        height,
        width * 0.5049,
        height,
      )
      ..cubicTo(
        width * 0.5049,
        height,
        width * 0.5591,
        height * 0.9696,
        width * 0.5942,
        height * 0.9516,
      )
      ..cubicTo(
        width * 0.657,
        height * 0.9193,
        width * 0.7852,
        height * 0.879,
        width * 0.8777,
        height * 0.8439,
      )
      ..cubicTo(
        width * 0.9865,
        height * 0.8028,
        width,
        height * 0.7364,
        width,
        height * 0.6879,
      )
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.0489, height * 0.6728)
      ..cubicTo(
        width * 0.0496,
        height * 0.7179,
        width * 0.0638,
        height * 0.7854,
        width * 0.1633,
        height * 0.823,
      )
      ..cubicTo(
        width * 0.25,
        height * 0.8558,
        width * 0.3625,
        height * 0.8935,
        width * 0.4213,
        height * 0.9238,
      )
      ..cubicTo(
        width * 0.4541,
        height * 0.9406,
        width * 0.5049,
        height * 0.969,
        width * 0.5049,
        height * 0.969,
      )
      ..cubicTo(
        width * 0.5049,
        height * 0.969,
        width * 0.5557,
        height * 0.9406,
        width * 0.5884,
        height * 0.9238,
      )
      ..cubicTo(
        width * 0.6472,
        height * 0.8935,
        width * 0.7601,
        height * 0.8558,
        width * 0.8467,
        height * 0.823,
      )
      ..cubicTo(
        width * 0.9461,
        height * 0.7854,
        width * 0.9605,
        height * 0.7178,
        width * 0.9611,
        height * 0.6728,
      )
      ..lineTo(width * 0.0489, height * 0.6728)
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.0489, height * 0.0395)
      ..lineTo(width * 0.9611, height * 0.0395)
      ..lineTo(width * 0.9611, height * 0.6798)
      ..lineTo(width * 0.0489, height * 0.6798)
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.8649, height * 0.5911)
      ..cubicTo(
        width * 0.8583,
        height * 0.5615,
        width * 0.8649,
        height * 0.5157,
        width * 0.855,
        height * 0.5022,
      )
      ..cubicTo(
        width * 0.8451,
        height * 0.4888,
        width * 0.7525,
        height * 0.462,
        width * 0.6864,
        height * 0.4673,
      )
      ..cubicTo(
        width * 0.6204,
        height * 0.4727,
        width * 0.6665,
        height * 0.4,
        width * 0.7128,
        height * 0.3812,
      )
      ..cubicTo(
        width * 0.7592,
        height * 0.3623,
        width * 0.8021,
        height * 0.3462,
        width * 0.8086,
        height * 0.3247,
      )
      ..cubicTo(
        width * 0.8153,
        height * 0.3032,
        width * 0.7921,
        height * 0.287,
        width * 0.7524,
        height * 0.2924,
      )
      ..cubicTo(
        width * 0.7127,
        height * 0.2978,
        width * 0.6896,
        height * 0.2978,
        width * 0.6664,
        height * 0.3166,
      )
      ..cubicTo(
        width * 0.6433,
        height * 0.3354,
        width * 0.64,
        height * 0.3139,
        width * 0.6301,
        height * 0.2924,
      )
      ..cubicTo(
        width * 0.6203,
        height * 0.2709,
        width * 0.6366,
        height * 0.2628,
        width * 0.64,
        height * 0.2413,
      )
      ..cubicTo(
        width * 0.6433,
        height * 0.2198,
        width * 0.6367,
        height * 0.1605,
        width * 0.6168,
        height * 0.1363,
      )
      ..cubicTo(
        width * 0.5971,
        height * 0.1121,
        width * 0.6072,
        height * 0.096,
        width * 0.5742,
        height * 0.0825,
      )
      ..cubicTo(
        width * 0.5412,
        height * 0.069,
        width * 0.5051,
        height * 0.0583,
        width * 0.5051,
        height * 0.0583,
      )
      ..cubicTo(
        width * 0.5051,
        height * 0.0583,
        width * 0.4687,
        height * 0.0691,
        width * 0.4356,
        height * 0.0825,
      )
      ..cubicTo(
        width * 0.4026,
        height * 0.096,
        width * 0.4125,
        height * 0.1121,
        width * 0.3928,
        height * 0.1363,
      )
      ..cubicTo(
        width * 0.3729,
        height * 0.1605,
        width * 0.3663,
        height * 0.2198,
        width * 0.3696,
        height * 0.2413,
      )
      ..cubicTo(
        width * 0.3729,
        height * 0.2628,
        width * 0.3893,
        height * 0.2709,
        width * 0.3795,
        height * 0.2924,
      )
      ..cubicTo(
        width * 0.3696,
        height * 0.3139,
        width * 0.3663,
        height * 0.3354,
        width * 0.3432,
        height * 0.3166,
      )
      ..cubicTo(
        width * 0.32,
        height * 0.2978,
        width * 0.2969,
        height * 0.2978,
        width * 0.2572,
        height * 0.2924,
      )
      ..cubicTo(
        width * 0.2175,
        height * 0.287,
        width * 0.1943,
        height * 0.3032,
        width * 0.201,
        height * 0.3247,
      )
      ..cubicTo(
        width * 0.2075,
        height * 0.3462,
        width * 0.2504,
        height * 0.3623,
        width * 0.2968,
        height * 0.3812,
      )
      ..cubicTo(
        width * 0.3431,
        height * 0.4,
        width * 0.3892,
        height * 0.4727,
        width * 0.3232,
        height * 0.4673,
      )
      ..cubicTo(
        width * 0.2571,
        height * 0.462,
        width * 0.1646,
        height * 0.4888,
        width * 0.1546,
        height * 0.5022,
      )
      ..cubicTo(
        width * 0.1447,
        height * 0.5157,
        width * 0.1513,
        height * 0.5615,
        width * 0.1447,
        height * 0.5911,
      )
      ..cubicTo(
        width * 0.1381,
        height * 0.6207,
        width * 0.1216,
        height * 0.6449,
        width * 0.1381,
        height * 0.6395,
      )
      ..cubicTo(
        width * 0.1547,
        height * 0.6342,
        width * 0.2307,
        height * 0.6126,
        width * 0.2671,
        height * 0.5911,
      )
      ..cubicTo(
        width * 0.3035,
        height * 0.5695,
        width * 0.3464,
        height * 0.6772,
        width * 0.3299,
        height * 0.704,
      )
      ..cubicTo(
        width * 0.3133,
        height * 0.7309,
        width * 0.3101,
        height * 0.7498,
        width * 0.2836,
        height * 0.739,
      )
      ..cubicTo(
        width * 0.2572,
        height * 0.7282,
        width * 0.2175,
        height * 0.7444,
        width * 0.2043,
        height * 0.766,
      )
      ..cubicTo(
        width * 0.1911,
        height * 0.7874,
        width * 0.2208,
        height * 0.8008,
        width * 0.2539,
        height * 0.8197,
      )
      ..cubicTo(
        width * 0.2869,
        height * 0.8386,
        width * 0.3265,
        height * 0.8008,
        width * 0.3431,
        height * 0.782,
      )
      ..cubicTo(
        width * 0.3596,
        height * 0.7631,
        width * 0.505,
        height * 0.704,
        width * 0.505,
        height * 0.704,
      )
      ..cubicTo(
        width * 0.505,
        height * 0.704,
        width * 0.6502,
        height * 0.7631,
        width * 0.6666,
        height * 0.782,
      )
      ..cubicTo(
        width * 0.6832,
        height * 0.8008,
        width * 0.7227,
        height * 0.8386,
        width * 0.7558,
        height * 0.8197,
      )
      ..cubicTo(
        width * 0.7888,
        height * 0.8008,
        width * 0.8185,
        height * 0.7874,
        width * 0.8052,
        height * 0.766,
      )
      ..cubicTo(
        width * 0.792,
        height * 0.7444,
        width * 0.7524,
        height * 0.7282,
        width * 0.7259,
        height * 0.739,
      )
      ..cubicTo(
        width * 0.6994,
        height * 0.7498,
        width * 0.6962,
        height * 0.7309,
        width * 0.6795,
        height * 0.704,
      )
      ..cubicTo(
        width * 0.6631,
        height * 0.6772,
        width * 0.7059,
        height * 0.5695,
        width * 0.7423,
        height * 0.5911,
      )
      ..cubicTo(
        width * 0.7787,
        height * 0.6126,
        width * 0.8547,
        height * 0.6341,
        width * 0.8713,
        height * 0.6395,
      )
      ..cubicTo(
        width * 0.888,
        height * 0.6449,
        width * 0.8716,
        height * 0.6207,
        width * 0.8649,
        height * 0.5911,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.772, height * 0.4404)
      ..cubicTo(
        width * 0.772,
        height * 0.4404,
        width * 0.782,
        height * 0.4592,
        width * 0.7951,
        height * 0.4592,
      )
      ..cubicTo(
        width * 0.8083,
        height * 0.4592,
        width * 0.8316,
        height * 0.4351,
        width * 0.8117,
        height * 0.4163,
      )
      ..cubicTo(
        width * 0.792,
        height * 0.3974,
        width * 0.7753,
        height * 0.3893,
        width * 0.7853,
        height * 0.3733,
      )
      ..cubicTo(
        width * 0.7951,
        height * 0.3571,
        width * 0.7688,
        height * 0.3302,
        width * 0.7688,
        height * 0.3302,
      )
      ..cubicTo(
        width * 0.7555,
        height * 0.3463,
        width * 0.7192,
        height * 0.3705,
        width * 0.6564,
        height * 0.3382,
      )
      ..cubicTo(
        width * 0.5935,
        height * 0.306,
        width * 0.5439,
        height * 0.3005,
        width * 0.5341,
        height * 0.3194,
      )
      ..lineTo(width * 0.4756, height * 0.3194)
      ..cubicTo(
        width * 0.4658,
        height * 0.3006,
        width * 0.4162,
        height * 0.306,
        width * 0.3533,
        height * 0.3382,
      )
      ..cubicTo(
        width * 0.2905,
        height * 0.3705,
        width * 0.2541,
        height * 0.3463,
        width * 0.2409,
        height * 0.3302,
      )
      ..cubicTo(
        width * 0.2409,
        height * 0.3302,
        width * 0.2146,
        height * 0.3571,
        width * 0.2243,
        height * 0.3733,
      )
      ..cubicTo(
        width * 0.2343,
        height * 0.3893,
        width * 0.2177,
        height * 0.3974,
        width * 0.198,
        height * 0.4163,
      )
      ..cubicTo(
        width * 0.1781,
        height * 0.4351,
        width * 0.2013,
        height * 0.4592,
        width * 0.2146,
        height * 0.4592,
      )
      ..cubicTo(
        width * 0.2278,
        height * 0.4592,
        width * 0.2377,
        height * 0.4404,
        width * 0.2377,
        height * 0.4404,
      )
      ..cubicTo(
        width * 0.2377,
        height * 0.4404,
        width * 0.2805,
        height * 0.47,
        width * 0.2774,
        height * 0.5104,
      )
      ..cubicTo(
        width * 0.274,
        height * 0.5506,
        width * 0.2079,
        height * 0.5883,
        width * 0.2079,
        height * 0.5883,
      )
      ..cubicTo(
        width * 0.2278,
        height * 0.6071,
        width * 0.2278,
        height * 0.6341,
        width * 0.2476,
        height * 0.6824,
      )
      ..cubicTo(
        width * 0.2674,
        height * 0.7309,
        width * 0.3368,
        height * 0.7174,
        width * 0.3368,
        height * 0.7174,
      )
      ..cubicTo(
        width * 0.3402,
        height * 0.7471,
        width * 0.403,
        height * 0.7766,
        width * 0.426,
        height * 0.7766,
      )
      ..cubicTo(
        width * 0.4492,
        height * 0.7766,
        width * 0.4558,
        height * 0.7927,
        width * 0.4558,
        height * 0.7927,
      )
      ..cubicTo(
        width * 0.4558,
        height * 0.7927,
        width * 0.4294,
        height * 0.8062,
        width * 0.4425,
        height * 0.817,
      )
      ..cubicTo(
        width * 0.4549,
        height * 0.827,
        width * 0.4993,
        height * 0.8134,
        width * 0.5048,
        height * 0.8118,
      )
      ..cubicTo(
        width * 0.5103,
        height * 0.8134,
        width * 0.5547,
        height * 0.827,
        width * 0.5671,
        height * 0.817,
      )
      ..cubicTo(
        width * 0.5803,
        height * 0.8062,
        width * 0.5538,
        height * 0.7927,
        width * 0.5538,
        height * 0.7927,
      )
      ..cubicTo(
        width * 0.5538,
        height * 0.7927,
        width * 0.5604,
        height * 0.7766,
        width * 0.5836,
        height * 0.7766,
      )
      ..cubicTo(
        width * 0.6066,
        height * 0.7766,
        width * 0.6694,
        height * 0.747,
        width * 0.6728,
        height * 0.7174,
      )
      ..cubicTo(
        width * 0.6728,
        height * 0.7174,
        width * 0.7422,
        height * 0.7309,
        width * 0.762,
        height * 0.6824,
      )
      ..cubicTo(
        width * 0.7818,
        height * 0.634,
        width * 0.7818,
        height * 0.6071,
        width * 0.8017,
        height * 0.5883,
      )
      ..cubicTo(
        width * 0.8017,
        height * 0.5883,
        width * 0.7356,
        height * 0.5506,
        width * 0.7322,
        height * 0.5104,
      )
      ..cubicTo(
        width * 0.7291,
        height * 0.47,
        width * 0.772,
        height * 0.4404,
        width * 0.772,
        height * 0.4404,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.8123, height * 0.4189)
      ..cubicTo(
        width * 0.7924,
        height * 0.4,
        width * 0.7759,
        height * 0.3919,
        width * 0.7858,
        height * 0.3758,
      )
      ..cubicTo(
        width * 0.7958,
        height * 0.3597,
        width * 0.7726,
        height * 0.349,
        width * 0.7726,
        height * 0.349,
      )
      ..cubicTo(
        width * 0.7593,
        height * 0.3651,
        width * 0.7042,
        height * 0.3881,
        width * 0.657,
        height * 0.3651,
      )
      ..cubicTo(
        width * 0.6074,
        height * 0.3409,
        width * 0.5942,
        height * 0.3463,
        width * 0.5809,
        height * 0.3409,
      )
      ..cubicTo(
        width * 0.5809,
        height * 0.3409,
        width * 0.5891,
        height * 0.3596,
        width * 0.5711,
        height * 0.3651,
      )
      ..cubicTo(
        width * 0.5447,
        height * 0.3732,
        width * 0.5346,
        height * 0.3543,
        width * 0.5346,
        height * 0.3543,
      )
      ..lineTo(width * 0.4753, height * 0.3543)
      ..cubicTo(
        width * 0.4753,
        height * 0.3543,
        width * 0.4653,
        height * 0.3732,
        width * 0.4388,
        height * 0.3651,
      )
      ..cubicTo(
        width * 0.4208,
        height * 0.3596,
        width * 0.4289,
        height * 0.3409,
        width * 0.4289,
        height * 0.3409,
      )
      ..cubicTo(
        width * 0.4156,
        height * 0.3463,
        width * 0.4025,
        height * 0.3409,
        width * 0.3529,
        height * 0.3651,
      )
      ..cubicTo(
        width * 0.3057,
        height * 0.3881,
        width * 0.2504,
        height * 0.3651,
        width * 0.2373,
        height * 0.349,
      )
      ..cubicTo(
        width * 0.2373,
        height * 0.349,
        width * 0.2141,
        height * 0.3598,
        width * 0.2241,
        height * 0.3758,
      )
      ..cubicTo(
        width * 0.2339,
        height * 0.3919,
        width * 0.2174,
        height * 0.4,
        width * 0.1976,
        height * 0.4189,
      )
      ..cubicTo(
        width * 0.1777,
        height * 0.4377,
        width * 0.2075,
        height * 0.4215,
        width * 0.2207,
        height * 0.4215,
      )
      ..cubicTo(
        width * 0.2339,
        height * 0.4215,
        width * 0.267,
        height * 0.4404,
        width * 0.267,
        height * 0.4404,
      )
      ..cubicTo(
        width * 0.267,
        height * 0.4404,
        width * 0.3034,
        height * 0.462,
        width * 0.3,
        height * 0.5131,
      )
      ..cubicTo(
        width * 0.2974,
        height * 0.5534,
        width * 0.224,
        height * 0.5937,
        width * 0.224,
        height * 0.5937,
      )
      ..cubicTo(
        width * 0.2437,
        height * 0.6126,
        width * 0.2636,
        height * 0.6798,
        width * 0.2636,
        height * 0.6798,
      )
      ..cubicTo(
        width * 0.2834,
        height * 0.7149,
        width * 0.7125,
        height * 0.5534,
        width * 0.7098,
        height * 0.5131,
      )
      ..cubicTo(
        width * 0.7065,
        height * 0.462,
        width * 0.7428,
        height * 0.4404,
        width * 0.7428,
        height * 0.4404,
      )
      ..cubicTo(
        width * 0.7428,
        height * 0.4404,
        width * 0.7758,
        height * 0.4215,
        width * 0.7891,
        height * 0.4215,
      )
      ..cubicTo(
        width * 0.8023,
        height * 0.4216,
        width * 0.8321,
        height * 0.4377,
        width * 0.8123,
        height * 0.4189,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.2868, height * 0.4028)
      ..lineTo(width * 0.3099, height * 0.6019)
      ..lineTo(width * 0.4156, height * 0.6664)
      ..lineTo(width * 0.5247, height * 0.5937)
      ..lineTo(width * 0.5016, height * 0.5373)
      ..lineTo(width * 0.4884, height * 0.4647)
      ..lineTo(width * 0.4487, height * 0.4431)
      ..lineTo(width * 0.4156, height * 0.3893)
      ..lineTo(width * 0.3727, height * 0.3866)
      ..lineTo(width * 0.3496, height * 0.4)
      ..cubicTo(
        width * 0.3496,
        height * 0.4,
        width * 0.3298,
        height * 0.3893,
        width * 0.3298,
        height * 0.392,
      )
      ..cubicTo(
        width * 0.3298,
        height * 0.3947,
        width * 0.3132,
        height * 0.4082,
        width * 0.3132,
        height * 0.4082,
      )
      ..lineTo(width * 0.2868, height * 0.4028)
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.4718, height * 0.4108)
      ..lineTo(width * 0.5115, height * 0.4028)
      ..lineTo(width * 0.5677, height * 0.4835)
      ..lineTo(width * 0.6238, height * 0.4781)
      ..lineTo(width * 0.6338, height * 0.4996)
      ..lineTo(width * 0.4818, height * 0.5399)
      ..lineTo(width * 0.4818, height * 0.5076)
      ..lineTo(width * 0.4884, height * 0.4969)
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.3661, height * 0.4377)
      ..lineTo(width * 0.3826, height * 0.6314)
      ..lineTo(width * 0.3992, height * 0.6233)
      ..cubicTo(
        width * 0.3992,
        height * 0.6233,
        width * 0.3761,
        height * 0.4646,
        width * 0.3793,
        height * 0.4673,
      )
      ..cubicTo(
        width * 0.3826,
        height * 0.47,
        width * 0.4289,
        height * 0.6045,
        width * 0.4289,
        height * 0.6045,
      )
      ..lineTo(width * 0.4488, height * 0.6099)
      ..lineTo(width * 0.3926, height * 0.4431)
      ..lineTo(width * 0.4818, height * 0.5695)
      ..lineTo(width * 0.4983, height * 0.5372)
      ..lineTo(width * 0.4058, height * 0.435)
      ..lineTo(width * 0.3793, height * 0.4082)
      ..lineTo(width * 0.3661, height * 0.4377)
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.4784, height * 0.5211)
      ..lineTo(width * 0.6273, height * 0.4942)
      ..lineTo(width * 0.6934, height * 0.5748)
      ..lineTo(width * 0.6669, height * 0.6367)
      ..cubicTo(
        width * 0.6669,
        height * 0.6367,
        width * 0.5545,
        height * 0.6824,
        width * 0.5513,
        height * 0.6852,
      )
      ..cubicTo(
        width * 0.548,
        height * 0.6878,
        width * 0.4422,
        height * 0.677,
        width * 0.4422,
        height * 0.677,
      )
      ..lineTo(width * 0.4784, height * 0.5211)
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.6503, height * 0.6933)
      ..cubicTo(
        width * 0.6503,
        height * 0.6933,
        width * 0.6569,
        height * 0.6772,
        width * 0.6768,
        height * 0.6798,
      )
      ..cubicTo(
        width * 0.6965,
        height * 0.6825,
        width * 0.69,
        height * 0.7013,
        width * 0.69,
        height * 0.7013,
      )
      ..cubicTo(
        width * 0.69,
        height * 0.7013,
        width * 0.7263,
        height * 0.7149,
        width * 0.7462,
        height * 0.6798,
      )
      ..cubicTo(
        width * 0.7476,
        height * 0.6782,
        width * 0.7486,
        height * 0.6765,
        width * 0.7495,
        height * 0.6745,
      )
      ..cubicTo(
        width * 0.7614,
        height * 0.6454,
        width * 0.7661,
        height * 0.6127,
        width * 0.7858,
        height * 0.5937,
      )
      ..cubicTo(
        width * 0.7858,
        height * 0.5937,
        width * 0.784,
        height * 0.5928,
        width * 0.7809,
        height * 0.5909,
      )
      ..cubicTo(
        width * 0.7634,
        height * 0.5967,
        width * 0.7495,
        height * 0.6046,
        width * 0.7495,
        height * 0.6046,
      )
      ..cubicTo(
        width * 0.7495,
        height * 0.6046,
        width * 0.7495,
        height * 0.5805,
        width * 0.7165,
        height * 0.575,
      )
      ..cubicTo(
        width * 0.6835,
        height * 0.5696,
        width * 0.6504,
        height * 0.61,
        width * 0.6504,
        height * 0.61,
      )
      ..cubicTo(
        width * 0.6372,
        height * 0.5777,
        width * 0.5842,
        height * 0.61,
        width * 0.5611,
        height * 0.6396,
      )
      ..cubicTo(
        width * 0.5381,
        height * 0.6692,
        width * 0.4818,
        height * 0.6611,
        width * 0.4818,
        height * 0.6611,
      )
      ..lineTo(width * 0.4717, height * 0.6449)
      ..cubicTo(
        width * 0.4717,
        height * 0.6449,
        width * 0.4752,
        height * 0.6181,
        width * 0.4487,
        height * 0.6046,
      )
      ..cubicTo(
        width * 0.4222,
        height * 0.5912,
        width * 0.3825,
        height * 0.6234,
        width * 0.3825,
        height * 0.6234,
      )
      ..cubicTo(
        width * 0.3925,
        height * 0.5884,
        width * 0.3462,
        height * 0.5937,
        width * 0.3364,
        height * 0.5993,
      )
      ..cubicTo(
        width * 0.3264,
        height * 0.6046,
        width * 0.3099,
        height * 0.5858,
        width * 0.2868,
        height * 0.5805,
      )
      ..cubicTo(
        width * 0.2695,
        height * 0.5764,
        width * 0.254,
        height * 0.607,
        width * 0.246,
        height * 0.6327,
      )
      ..cubicTo(
        width * 0.2507,
        height * 0.6462,
        width * 0.2547,
        height * 0.6608,
        width * 0.2603,
        height * 0.6746,
      )
      ..cubicTo(
        width * 0.2612,
        height * 0.6766,
        width * 0.2623,
        height * 0.6784,
        width * 0.2636,
        height * 0.6799,
      )
      ..cubicTo(
        width * 0.2834,
        height * 0.715,
        width * 0.3198,
        height * 0.7014,
        width * 0.3198,
        height * 0.7014,
      )
      ..cubicTo(
        width * 0.3198,
        height * 0.7014,
        width * 0.3133,
        height * 0.6826,
        width * 0.333,
        height * 0.6799,
      )
      ..cubicTo(
        width * 0.3529,
        height * 0.6773,
        width * 0.3595,
        height * 0.6934,
        width * 0.3595,
        height * 0.6934,
      )
      ..cubicTo(
        width * 0.3595,
        height * 0.6934,
        width * 0.3826,
        height * 0.688,
        width * 0.3892,
        height * 0.7042,
      )
      ..cubicTo(
        width * 0.3957,
        height * 0.7204,
        width * 0.3661,
        height * 0.7257,
        width * 0.3661,
        height * 0.7257,
      )
      ..cubicTo(
        width * 0.3628,
        height * 0.7311,
        width * 0.3826,
        height * 0.7553,
        width * 0.4514,
        height * 0.7678,
      )
      ..cubicTo(
        width * 0.4645,
        height * 0.7754,
        width * 0.4718,
        height * 0.7902,
        width * 0.4718,
        height * 0.7902,
      )
      ..lineTo(width * 0.4718, height * 0.8143)
      ..lineTo(width * 0.538, height * 0.8143)
      ..lineTo(width * 0.538, height * 0.7902)
      ..cubicTo(
        width * 0.538,
        height * 0.7902,
        width * 0.5452,
        height * 0.7754,
        width * 0.5584,
        height * 0.7677,
      )
      ..cubicTo(
        width * 0.6272,
        height * 0.7552,
        width * 0.6469,
        height * 0.731,
        width * 0.6437,
        height * 0.7256,
      )
      ..cubicTo(
        width * 0.6437,
        height * 0.7256,
        width * 0.614,
        height * 0.7202,
        width * 0.6206,
        height * 0.704,
      )
      ..cubicTo(
        width * 0.6272,
        height * 0.6879,
        width * 0.6503,
        height * 0.6933,
        width * 0.6503,
        height * 0.6933,
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
      ..drawPath(path8, paintCreator())
      ..drawPath(path9, paintCreator())
      ..drawPath(path10, paintCreator(customColors[6]))
      ..drawPath(path11, paintCreator(customColors[7]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
