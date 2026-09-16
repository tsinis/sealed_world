// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Jersey.
///
/// Draws the crowned shield with the three leopards of Normandy.
final class JeyPainter extends MultiElementPainter {
  /// Creates a new instance of [JeyPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.6352;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.9401, height * 0.1367)
      ..cubicTo(
        width * 0.9106,
        height * 0.144,
        width * 0.8955,
        height * 0.1774,
        width * 0.8955,
        height * 0.1774,
      )
      ..cubicTo(
        width * 0.8955,
        height * 0.1774,
        width * 0.8691,
        height * 0.1396,
        width * 0.7892,
        height * 0.1643,
      )
      ..cubicTo(
        width * 0.7892,
        height * 0.1643,
        width * 0.8327,
        height * 0.1919,
        width * 0.8234,
        height * 0.2152,
      )
      ..cubicTo(
        width * 0.8141,
        height * 0.2385,
        width * 0.7888,
        height * 0.2487,
        width * 0.7456,
        height * 0.245,
      )
      ..cubicTo(
        width * 0.6952,
        height * 0.2406,
        width * 0.6859,
        height * 0.2035,
        width * 0.6859,
        height * 0.2035,
      )
      ..cubicTo(
        width * 0.6859,
        height * 0.2035,
        width * 0.7171,
        height * 0.1999,
        width * 0.7205,
        height * 0.1831,
      )
      ..cubicTo(
        width * 0.7226,
        height * 0.173,
        width * 0.7147,
        height * 0.1584,
        width * 0.6873,
        height * 0.157,
      )
      ..cubicTo(
        width * 0.6664,
        height * 0.1559,
        width * 0.646,
        height * 0.1643,
        width * 0.646,
        height * 0.1802,
      )
      ..cubicTo(
        width * 0.646,
        height * 0.1919,
        width * 0.669,
        height * 0.202,
        width * 0.669,
        height * 0.202,
      )
      ..cubicTo(
        width * 0.669,
        height * 0.202,
        width * 0.6507,
        height * 0.227,
        width * 0.6093,
        height * 0.2282,
      )
      ..cubicTo(
        width * 0.5567,
        height * 0.2297,
        width * 0.5334,
        height * 0.2108,
        width * 0.5327,
        height * 0.1788,
      )
      ..cubicTo(
        width * 0.5314,
        height * 0.1329,
        width * 0.6242,
        height * 0.1322,
        width * 0.6242,
        height * 0.1322,
      )
      ..cubicTo(
        width * 0.6242,
        height * 0.1322,
        width * 0.6161,
        height * 0.1097,
        width * 0.5842,
        height * 0.0981,
      )
      ..cubicTo(
        width * 0.5522,
        height * 0.0865,
        width * 0.5223,
        height * 0.1024,
        width * 0.5223,
        height * 0.1024,
      )
      ..cubicTo(
        width * 0.5223,
        height * 0.1024,
        width * 0.5452,
        height * 0.0697,
        width * 0.5383,
        height * 0.0471,
      )
      ..cubicTo(
        width * 0.5323,
        height * 0.0278,
        width * 0.5095,
        height * 0.0085,
        width * 0.5012,
        height * 0.0021,
      )
      ..lineTo(width * 0.5012, 0)
      ..lineTo(width * 0.4998, height * 0.0011)
      ..lineTo(width * 0.4984, 0)
      ..lineTo(width * 0.4984, height * 0.0023)
      ..cubicTo(
        width * 0.4902,
        height * 0.0087,
        width * 0.4671,
        height * 0.0279,
        width * 0.4613,
        height * 0.0473,
      )
      ..cubicTo(
        width * 0.4545,
        height * 0.0699,
        width * 0.4773,
        height * 0.1027,
        width * 0.4773,
        height * 0.1027,
      )
      ..cubicTo(
        width * 0.4773,
        height * 0.1027,
        width * 0.4476,
        height * 0.0866,
        width * 0.4155,
        height * 0.0983,
      )
      ..cubicTo(
        width * 0.3833,
        height * 0.1099,
        width * 0.3753,
        height * 0.1325,
        width * 0.3753,
        height * 0.1325,
      )
      ..cubicTo(
        width * 0.3753,
        height * 0.1325,
        width * 0.468,
        height * 0.1331,
        width * 0.4668,
        height * 0.179,
      )
      ..cubicTo(
        width * 0.4661,
        height * 0.211,
        width * 0.4427,
        height * 0.2299,
        width * 0.39,
        height * 0.2284,
      )
      ..cubicTo(
        width * 0.3487,
        height * 0.2272,
        width * 0.3305,
        height * 0.2022,
        width * 0.3305,
        height * 0.2022,
      )
      ..cubicTo(
        width * 0.3305,
        height * 0.2022,
        width * 0.3533,
        height * 0.1922,
        width * 0.3533,
        height * 0.1804,
      )
      ..cubicTo(
        width * 0.3533,
        height * 0.1644,
        width * 0.3329,
        height * 0.1561,
        width * 0.3122,
        height * 0.1572,
      )
      ..cubicTo(
        width * 0.2848,
        height * 0.1587,
        width * 0.2769,
        height * 0.1732,
        width * 0.279,
        height * 0.1834,
      )
      ..cubicTo(
        width * 0.2825,
        height * 0.2001,
        width * 0.3134,
        height * 0.2038,
        width * 0.3134,
        height * 0.2038,
      )
      ..cubicTo(
        width * 0.3134,
        height * 0.2038,
        width * 0.3043,
        height * 0.2409,
        width * 0.2539,
        height * 0.2452,
      )
      ..cubicTo(
        width * 0.2105,
        height * 0.249,
        width * 0.1852,
        height * 0.2387,
        width * 0.176,
        height * 0.2154,
      )
      ..cubicTo(
        width * 0.1669,
        height * 0.1922,
        width * 0.2103,
        height * 0.1645,
        width * 0.2103,
        height * 0.1645,
      )
      ..cubicTo(
        width * 0.1302,
        height * 0.1397,
        width * 0.104,
        height * 0.1777,
        width * 0.104,
        height * 0.1777,
      )
      ..cubicTo(
        width * 0.104,
        height * 0.1777,
        width * 0.0891,
        height * 0.144,
        width * 0.0596,
        height * 0.1367,
      )
      ..cubicTo(
        width * 0.0297,
        height * 0.1294,
        0,
        height * 0.1324,
        0,
        height * 0.1324,
      )
      ..cubicTo(
        0,
        height * 0.1324,
        width * 0.055,
        height * 0.1877,
        width * 0.0915,
        height * 0.2414,
      )
      ..cubicTo(
        width * 0.1283,
        height * 0.2952,
        width * 0.142,
        height * 0.3505,
        width * 0.142,
        height * 0.3505,
      )
      ..cubicTo(
        width * 0.142,
        height * 0.3505,
        width * 0.2045,
        height * 0.3226,
        width * 0.3067,
        height * 0.3069,
      )
      ..cubicTo(
        width * 0.3858,
        height * 0.2947,
        width * 0.4866,
        height * 0.2938,
        width * 0.5,
        height * 0.2937,
      )
      ..cubicTo(
        width * 0.5132,
        height * 0.2938,
        width * 0.614,
        height * 0.2946,
        width * 0.6929,
        height * 0.3069,
      )
      ..cubicTo(
        width * 0.7955,
        height * 0.3227,
        width * 0.858,
        height * 0.3505,
        width * 0.858,
        height * 0.3505,
      )
      ..cubicTo(
        width * 0.858,
        height * 0.3505,
        width * 0.8717,
        height * 0.2952,
        width * 0.9085,
        height * 0.2414,
      )
      ..cubicTo(
        width * 0.9452,
        height * 0.1877,
        width,
        height * 0.1324,
        width,
        height * 0.1324,
      )
      ..cubicTo(
        width,
        height * 0.1324,
        width * 0.97,
        height * 0.1294,
        width * 0.9401,
        height * 0.1367,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.8577, height * 0.3505)
      ..cubicTo(
        width * 0.8577,
        height * 0.3505,
        width * 0.7739,
        height * 0.3156,
        width * 0.6861,
        height * 0.3032,
      )
      ..cubicTo(
        width * 0.604,
        height * 0.2917,
        width * 0.5121,
        height * 0.2916,
        width * 0.4996,
        height * 0.2916,
      )
      ..cubicTo(
        width * 0.4872,
        height * 0.2916,
        width * 0.3953,
        height * 0.2917,
        width * 0.3134,
        height * 0.3032,
      )
      ..cubicTo(
        width * 0.2252,
        height * 0.3156,
        width * 0.1418,
        height * 0.3505,
        width * 0.1418,
        height * 0.3505,
      )
      ..cubicTo(
        width * 0.1418,
        height * 0.3505,
        width * 0.0699,
        height * 0.5201,
        width * 0.1121,
        height * 0.6436,
      )
      ..cubicTo(
        width * 0.1952,
        height * 0.8875,
        width * 0.4671,
        height * 0.9879,
        width * 0.4984,
        height * 0.9989,
      )
      ..lineTo(width * 0.4984, height)
      ..lineTo(width * 0.4998, height * 0.9996)
      ..lineTo(width * 0.5012, height)
      ..lineTo(width * 0.5012, height * 0.9989)
      ..cubicTo(
        width * 0.5325,
        height * 0.9881,
        width * 0.8046,
        height * 0.8875,
        width * 0.8876,
        height * 0.6436,
      )
      ..cubicTo(
        width * 0.9299,
        height * 0.5201,
        width * 0.8577,
        height * 0.3505,
        width * 0.8577,
        height * 0.3505,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.7424, height * 0.3512)
      ..cubicTo(
        width * 0.7424,
        height * 0.3512,
        width * 0.7263,
        height * 0.365,
        width * 0.6702,
        height * 0.365,
      )
      ..cubicTo(
        width * 0.6142,
        height * 0.365,
        width * 0.6391,
        height * 0.3603,
        width * 0.5947,
        height * 0.3603,
      )
      ..cubicTo(
        width * 0.5499,
        height * 0.3603,
        width * 0.5306,
        height * 0.3676,
        width * 0.5306,
        height * 0.3763,
      )
      ..cubicTo(
        width * 0.5306,
        height * 0.385,
        width * 0.5466,
        height * 0.3905,
        width * 0.6063,
        height * 0.3905,
      )
      ..cubicTo(
        width * 0.6657,
        height * 0.3905,
        width * 0.6876,
        height * 0.381,
        width * 0.7356,
        height * 0.381,
      )
      ..cubicTo(
        width * 0.7836,
        height * 0.381,
        width * 0.8018,
        height * 0.3919,
        width * 0.8018,
        height * 0.4058,
      )
      ..cubicTo(
        width * 0.8018,
        height * 0.4196,
        width * 0.7709,
        height * 0.445,
        width * 0.7215,
        height * 0.437,
      )
      ..cubicTo(
        width * 0.7215,
        height * 0.437,
        width * 0.7561,
        height * 0.4478,
        width * 0.7929,
        height * 0.4464,
      )
      ..cubicTo(
        width * 0.8292,
        height * 0.445,
        width * 0.8602,
        height * 0.4407,
        width * 0.8626,
        height * 0.4458,
      )
      ..cubicTo(
        width * 0.8651,
        height * 0.4508,
        width * 0.8798,
        height * 0.4777,
        width * 0.8777,
        height * 0.4924,
      )
      ..cubicTo(
        width * 0.8742,
        height * 0.5149,
        width * 0.8294,
        height * 0.5228,
        width * 0.8111,
        height * 0.5215,
      )
      ..cubicTo(
        width * 0.7929,
        height * 0.52,
        width * 0.769,
        height * 0.531,
        width * 0.7621,
        height * 0.536,
      )
      ..lineTo(width * 0.7665, height * 0.5207)
      ..lineTo(width * 0.7481, height * 0.5251)
      ..lineTo(width * 0.7584, height * 0.5062)
      ..lineTo(width * 0.7358, height * 0.5062)
      ..cubicTo(
        width * 0.7358,
        height * 0.5062,
        width * 0.747,
        height * 0.4916,
        width * 0.7653,
        height * 0.4916,
      )
      ..cubicTo(
        width * 0.7837,
        height * 0.4916,
        width * 0.825,
        height * 0.4945,
        width * 0.8275,
        height * 0.4866,
      )
      ..cubicTo(
        width * 0.8296,
        height * 0.4786,
        width * 0.8159,
        height * 0.4677,
        width * 0.7897,
        height * 0.4684,
      )
      ..cubicTo(
        width * 0.7634,
        height * 0.469,
        width * 0.7128,
        height * 0.4785,
        width * 0.682,
        height * 0.4734,
      )
      ..cubicTo(
        width * 0.682,
        height * 0.4734,
        width * 0.6718,
        height * 0.4828,
        width * 0.681,
        height * 0.4901,
      )
      ..cubicTo(
        width * 0.6899,
        height * 0.4974,
        width * 0.7036,
        height * 0.5062,
        width * 0.6968,
        height * 0.5112,
      )
      ..cubicTo(
        width * 0.6899,
        height * 0.5162,
        width * 0.6727,
        height * 0.5162,
        width * 0.6569,
        height * 0.5156,
      )
      ..cubicTo(
        width * 0.6407,
        height * 0.5149,
        width * 0.5857,
        height * 0.5177,
        width * 0.5664,
        height * 0.5222,
      )
      ..cubicTo(
        width * 0.5469,
        height * 0.5265,
        width * 0.5286,
        height * 0.5331,
        width * 0.5286,
        height * 0.5331,
      )
      ..lineTo(width * 0.5378, height * 0.5163)
      ..cubicTo(
        width * 0.5378,
        height * 0.5163,
        width * 0.5195,
        height * 0.5127,
        width * 0.5104,
        height * 0.5178,
      )
      ..cubicTo(
        width * 0.5104,
        height * 0.5178,
        width * 0.5139,
        height * 0.507,
        width * 0.5286,
        height * 0.5047,
      )
      ..lineTo(width * 0.5114, height * 0.5018)
      ..cubicTo(
        width * 0.5114,
        height * 0.5018,
        width * 0.5184,
        height * 0.4888,
        width * 0.5436,
        height * 0.4902,
      )
      ..cubicTo(
        width * 0.5687,
        height * 0.4917,
        width * 0.5801,
        height * 0.4953,
        width * 0.5882,
        height * 0.4895,
      )
      ..cubicTo(
        width * 0.5963,
        height * 0.4837,
        width * 0.5687,
        height * 0.472,
        width * 0.5687,
        height * 0.472,
      )
      ..cubicTo(
        width * 0.5687,
        height * 0.472,
        width * 0.5481,
        height * 0.4772,
        width * 0.5025,
        height * 0.4815,
      )
      ..cubicTo(
        width * 0.4566,
        height * 0.486,
        width * 0.4269,
        height * 0.4844,
        width * 0.4269,
        height * 0.4844,
      )
      ..cubicTo(
        width * 0.4269,
        height * 0.4844,
        width * 0.4211,
        height * 0.515,
        width * 0.3479,
        height * 0.52,
      )
      ..cubicTo(
        width * 0.2746,
        height * 0.5251,
        width * 0.2381,
        height * 0.5033,
        width * 0.2208,
        height * 0.4989,
      )
      ..cubicTo(
        width * 0.2036,
        height * 0.4946,
        width * 0.1796,
        height * 0.4983,
        width * 0.1796,
        height * 0.4983,
      )
      ..lineTo(width * 0.191, height * 0.4844)
      ..lineTo(width * 0.1634, height * 0.4881)
      ..cubicTo(
        width * 0.1634,
        height * 0.4881,
        width * 0.1616,
        height * 0.4714,
        width * 0.1806,
        height * 0.4707,
      )
      ..lineTo(width * 0.1555, height * 0.4664)
      ..cubicTo(
        width * 0.1555,
        height * 0.4664,
        width * 0.1738,
        height * 0.4525,
        width * 0.1989,
        height * 0.4562,
      )
      ..cubicTo(
        width * 0.2242,
        height * 0.4598,
        width * 0.237,
        height * 0.4734,
        width * 0.2607,
        height * 0.4809,
      )
      ..cubicTo(
        width * 0.2997,
        height * 0.4932,
        width * 0.3902,
        height * 0.4845,
        width * 0.3227,
        height * 0.4758,
      )
      ..cubicTo(
        width * 0.3069,
        height * 0.4738,
        width * 0.2959,
        height * 0.4642,
        width * 0.2959,
        height * 0.4642,
      )
      ..cubicTo(
        width * 0.2959,
        height * 0.4642,
        width * 0.2528,
        height * 0.47,
        width * 0.2196,
        height * 0.4373,
      )
      ..cubicTo(
        width * 0.1969,
        height * 0.4149,
        width * 0.1864,
        height * 0.3966,
        width * 0.1451,
        height * 0.4017,
      )
      ..cubicTo(
        width * 0.1451,
        height * 0.4017,
        width * 0.1646,
        height * 0.3858,
        width * 0.1864,
        height * 0.3908,
      )
      ..cubicTo(
        width * 0.1864,
        height * 0.3908,
        width * 0.1738,
        height * 0.3806,
        width * 0.1544,
        height * 0.3813,
      )
      ..cubicTo(
        width * 0.1544,
        height * 0.3813,
        width * 0.1636,
        height * 0.3668,
        width * 0.191,
        height * 0.3719,
      )
      ..cubicTo(
        width * 0.191,
        height * 0.3719,
        width * 0.176,
        height * 0.3632,
        width * 0.1623,
        height * 0.3639,
      )
      ..cubicTo(
        width * 0.1623,
        height * 0.3639,
        width * 0.1702,
        height * 0.3486,
        width * 0.207,
        height * 0.3617,
      )
      ..cubicTo(
        width * 0.2433,
        height * 0.3744,
        width * 0.2214,
        height * 0.3854,
        width * 0.2284,
        height * 0.3934,
      )
      ..cubicTo(
        width * 0.233,
        height * 0.3984,
        width * 0.243,
        height * 0.4073,
        width * 0.2674,
        height * 0.421,
      )
      ..cubicTo(
        width * 0.3087,
        height * 0.4443,
        width * 0.328,
        height * 0.4502,
        width * 0.3154,
        height * 0.4265,
      )
      ..cubicTo(
        width * 0.3017,
        height * 0.4207,
        width * 0.2936,
        height * 0.4058,
        width * 0.2902,
        height * 0.3985,
      )
      ..cubicTo(
        width * 0.2867,
        height * 0.3913,
        width * 0.2674,
        height * 0.3738,
        width * 0.273,
        height * 0.3694,
      )
      ..cubicTo(
        width * 0.2788,
        height * 0.365,
        width * 0.2959,
        height * 0.3731,
        width * 0.2959,
        height * 0.3731,
      )
      ..cubicTo(
        width * 0.2959,
        height * 0.3731,
        width * 0.3176,
        height * 0.3671,
        width * 0.3473,
        height * 0.3671,
      )
      ..cubicTo(
        width * 0.377,
        height * 0.3671,
        width * 0.3884,
        height * 0.3759,
        width * 0.3884,
        height * 0.3759,
      )
      ..cubicTo(
        width * 0.3884,
        height * 0.3759,
        width * 0.409,
        height * 0.3657,
        width * 0.4125,
        height * 0.3708,
      )
      ..cubicTo(
        width * 0.4158,
        height * 0.3759,
        width * 0.4011,
        height * 0.384,
        width * 0.3942,
        height * 0.3927,
      )
      ..cubicTo(
        width * 0.3874,
        height * 0.4014,
        width * 0.3953,
        height * 0.4116,
        width * 0.3953,
        height * 0.4116,
      )
      ..cubicTo(
        width * 0.3953,
        height * 0.4116,
        width * 0.4153,
        height * 0.4282,
        width * 0.4566,
        height * 0.429,
      )
      ..cubicTo(
        width * 0.4977,
        height * 0.4296,
        width * 0.559,
        height * 0.4253,
        width * 0.5808,
        height * 0.4224,
      )
      ..cubicTo(
        width * 0.6024,
        height * 0.4195,
        width * 0.6402,
        height * 0.4147,
        width * 0.6655,
        height * 0.4177,
      )
      ..cubicTo(
        width * 0.6908,
        height * 0.4206,
        width * 0.7618,
        height * 0.4195,
        width * 0.7595,
        height * 0.4079,
      )
      ..cubicTo(
        width * 0.757,
        height * 0.3963,
        width * 0.74,
        height * 0.3926,
        width * 0.7047,
        height * 0.3955,
      )
      ..cubicTo(
        width * 0.669,
        height * 0.3984,
        width * 0.6383,
        height * 0.4056,
        width * 0.5729,
        height * 0.4027,
      )
      ..cubicTo(
        width * 0.5076,
        height * 0.3998,
        width * 0.5011,
        height * 0.3788,
        width * 0.5053,
        height * 0.3685,
      )
      ..cubicTo(
        width * 0.5111,
        height * 0.3546,
        width * 0.5478,
        height * 0.3463,
        width * 0.582,
        height * 0.3463,
      )
      ..cubicTo(
        width * 0.6165,
        height * 0.3463,
        width * 0.6595,
        height * 0.3554,
        width * 0.6845,
        height * 0.3554,
      )
      ..cubicTo(
        width * 0.7099,
        height * 0.3557,
        width * 0.7424,
        height * 0.3512,
        width * 0.7424,
        height * 0.3512,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.7096, height * 0.5517)
      ..cubicTo(
        width * 0.7096,
        height * 0.5517,
        width * 0.6955,
        height * 0.5641,
        width * 0.6449,
        height * 0.5641,
      )
      ..cubicTo(
        width * 0.5945,
        height * 0.5641,
        width * 0.6172,
        height * 0.5599,
        width * 0.577,
        height * 0.5599,
      )
      ..cubicTo(
        width * 0.5369,
        height * 0.5599,
        width * 0.5195,
        height * 0.5663,
        width * 0.5195,
        height * 0.5743,
      )
      ..cubicTo(
        width * 0.5195,
        height * 0.5821,
        width * 0.5339,
        height * 0.587,
        width * 0.5873,
        height * 0.587,
      )
      ..cubicTo(
        width * 0.6405,
        height * 0.587,
        width * 0.6604,
        height * 0.5785,
        width * 0.7033,
        height * 0.5785,
      )
      ..cubicTo(
        width * 0.7465,
        height * 0.5785,
        width * 0.763,
        height * 0.5883,
        width * 0.763,
        height * 0.6007,
      )
      ..cubicTo(
        width * 0.763,
        height * 0.6132,
        width * 0.7352,
        height * 0.636,
        width * 0.6913,
        height * 0.6288,
      )
      ..cubicTo(
        width * 0.6913,
        height * 0.6288,
        width * 0.7219,
        height * 0.6387,
        width * 0.7547,
        height * 0.6373,
      )
      ..cubicTo(
        width * 0.7878,
        height * 0.6361,
        width * 0.8155,
        height * 0.6322,
        width * 0.8175,
        height * 0.6368,
      )
      ..cubicTo(
        width * 0.8194,
        height * 0.6413,
        width * 0.8326,
        height * 0.6654,
        width * 0.8308,
        height * 0.6786,
      )
      ..cubicTo(
        width * 0.8277,
        height * 0.6989,
        width * 0.7876,
        height * 0.7061,
        width * 0.7711,
        height * 0.7047,
      )
      ..cubicTo(
        width * 0.7546,
        height * 0.7035,
        width * 0.733,
        height * 0.7132,
        width * 0.7268,
        height * 0.7178,
      )
      ..lineTo(width * 0.7309, height * 0.7041)
      ..lineTo(width * 0.7143, height * 0.708)
      ..lineTo(width * 0.7236, height * 0.691)
      ..lineTo(width * 0.7031, height * 0.691)
      ..cubicTo(
        width * 0.7031,
        height * 0.691,
        width * 0.7135,
        height * 0.6779,
        width * 0.7298,
        height * 0.6779,
      )
      ..cubicTo(
        width * 0.7463,
        height * 0.6779,
        width * 0.7834,
        height * 0.6805,
        width * 0.7853,
        height * 0.6734,
      )
      ..cubicTo(
        width * 0.7874,
        height * 0.6661,
        width * 0.7749,
        height * 0.6564,
        width * 0.7514,
        height * 0.6571,
      )
      ..cubicTo(
        width * 0.7277,
        height * 0.6576,
        width * 0.6824,
        height * 0.6661,
        width * 0.6548,
        height * 0.6616,
      )
      ..cubicTo(
        width * 0.6548,
        height * 0.6616,
        width * 0.6456,
        height * 0.6701,
        width * 0.6539,
        height * 0.6767,
      )
      ..cubicTo(
        width * 0.662,
        height * 0.6832,
        width * 0.6743,
        height * 0.691,
        width * 0.6681,
        height * 0.6956,
      )
      ..cubicTo(
        width * 0.662,
        height * 0.7001,
        width * 0.6465,
        height * 0.7001,
        width * 0.6323,
        height * 0.6995,
      )
      ..cubicTo(
        width * 0.6179,
        height * 0.6989,
        width * 0.5685,
        height * 0.7015,
        width * 0.5511,
        height * 0.7054,
      )
      ..cubicTo(
        width * 0.5336,
        height * 0.7093,
        width * 0.5172,
        height * 0.7151,
        width * 0.5172,
        height * 0.7151,
      )
      ..lineTo(width * 0.5253, height * 0.7)
      ..cubicTo(
        width * 0.5253,
        height * 0.7,
        width * 0.5088,
        height * 0.6968,
        width * 0.5005,
        height * 0.7014,
      )
      ..cubicTo(
        width * 0.5005,
        height * 0.7014,
        width * 0.5037,
        height * 0.6916,
        width * 0.517,
        height * 0.6895,
      )
      ..lineTo(width * 0.5016, height * 0.687)
      ..cubicTo(
        width * 0.5016,
        height * 0.687,
        width * 0.5077,
        height * 0.6753,
        width * 0.5304,
        height * 0.6766,
      )
      ..cubicTo(
        width * 0.5531,
        height * 0.6778,
        width * 0.5634,
        height * 0.6812,
        width * 0.5706,
        height * 0.6759,
      )
      ..cubicTo(
        width * 0.5777,
        height * 0.6707,
        width * 0.5531,
        height * 0.6602,
        width * 0.5531,
        height * 0.6602,
      )
      ..cubicTo(
        width * 0.5531,
        height * 0.6602,
        width * 0.5346,
        height * 0.6648,
        width * 0.4933,
        height * 0.6687,
      )
      ..cubicTo(
        width * 0.4522,
        height * 0.6727,
        width * 0.4255,
        height * 0.6712,
        width * 0.4255,
        height * 0.6712,
      )
      ..cubicTo(
        width * 0.4255,
        height * 0.6712,
        width * 0.4204,
        height * 0.6987,
        width * 0.3545,
        height * 0.7033,
      )
      ..cubicTo(
        width * 0.2887,
        height * 0.7077,
        width * 0.2558,
        height * 0.6882,
        width * 0.2403,
        height * 0.6843,
      )
      ..cubicTo(
        width * 0.2251,
        height * 0.6804,
        width * 0.2034,
        height * 0.6837,
        width * 0.2034,
        height * 0.6837,
      )
      ..lineTo(width * 0.2136, height * 0.6712)
      ..lineTo(width * 0.189, height * 0.6746)
      ..cubicTo(
        width * 0.189,
        height * 0.6746,
        width * 0.1876,
        height * 0.6595,
        width * 0.2043,
        height * 0.6589,
      )
      ..lineTo(width * 0.1818, height * 0.6549)
      ..cubicTo(
        width * 0.1818,
        height * 0.6549,
        width * 0.1983,
        height * 0.6426,
        width * 0.2208,
        height * 0.6458,
      )
      ..cubicTo(
        width * 0.2435,
        height * 0.649,
        width * 0.2551,
        height * 0.6613,
        width * 0.2764,
        height * 0.668,
      )
      ..cubicTo(
        width * 0.3111,
        height * 0.6792,
        width * 0.3925,
        height * 0.6712,
        width * 0.3319,
        height * 0.6634,
      )
      ..cubicTo(
        width * 0.3176,
        height * 0.6615,
        width * 0.3076,
        height * 0.6531,
        width * 0.3076,
        height * 0.6531,
      )
      ..cubicTo(
        width * 0.3076,
        height * 0.6531,
        width * 0.2691,
        height * 0.6582,
        width * 0.2393,
        height * 0.6288,
      )
      ..cubicTo(
        width * 0.2189,
        height * 0.6087,
        width * 0.2094,
        height * 0.5922,
        width * 0.1725,
        height * 0.5968,
      )
      ..cubicTo(
        width * 0.1725,
        height * 0.5968,
        width * 0.1901,
        height * 0.5825,
        width * 0.2094,
        height * 0.587,
      )
      ..cubicTo(
        width * 0.2094,
        height * 0.587,
        width * 0.1982,
        height * 0.5778,
        width * 0.1806,
        height * 0.5785,
      )
      ..cubicTo(
        width * 0.1806,
        height * 0.5785,
        width * 0.1889,
        height * 0.5655,
        width * 0.2135,
        height * 0.57,
      )
      ..cubicTo(
        width * 0.2135,
        height * 0.57,
        width * 0.2001,
        height * 0.5622,
        width * 0.1878,
        height * 0.5629,
      )
      ..cubicTo(
        width * 0.1878,
        height * 0.5629,
        width * 0.195,
        height * 0.5492,
        width * 0.2279,
        height * 0.5608,
      )
      ..cubicTo(
        width * 0.2609,
        height * 0.5726,
        width * 0.241,
        height * 0.5824,
        width * 0.2474,
        height * 0.5896,
      )
      ..cubicTo(
        width * 0.2516,
        height * 0.5941,
        width * 0.2605,
        height * 0.6021,
        width * 0.2823,
        height * 0.6144,
      )
      ..cubicTo(
        width * 0.3194,
        height * 0.6354,
        width * 0.337,
        height * 0.6406,
        width * 0.3255,
        height * 0.6192,
      )
      ..cubicTo(
        width * 0.3132,
        height * 0.6141,
        width * 0.306,
        height * 0.6006,
        width * 0.3031,
        height * 0.5941,
      )
      ..cubicTo(
        width * 0.2999,
        height * 0.5875,
        width * 0.2825,
        height * 0.5719,
        width * 0.2876,
        height * 0.568,
      )
      ..cubicTo(
        width * 0.2927,
        height * 0.5641,
        width * 0.3082,
        height * 0.5714,
        width * 0.3082,
        height * 0.5714,
      )
      ..cubicTo(
        width * 0.3082,
        height * 0.5714,
        width * 0.3277,
        height * 0.5661,
        width * 0.3544,
        height * 0.5661,
      )
      ..cubicTo(
        width * 0.3811,
        height * 0.5661,
        width * 0.3913,
        height * 0.574,
        width * 0.3913,
        height * 0.574,
      )
      ..cubicTo(
        width * 0.3913,
        height * 0.574,
        width * 0.4099,
        height * 0.5649,
        width * 0.4129,
        height * 0.5694,
      )
      ..cubicTo(
        width * 0.416,
        height * 0.574,
        width * 0.4027,
        height * 0.5811,
        width * 0.3965,
        height * 0.589,
      )
      ..cubicTo(
        width * 0.3904,
        height * 0.5968,
        width * 0.3976,
        height * 0.606,
        width * 0.3976,
        height * 0.606,
      )
      ..cubicTo(
        width * 0.3976,
        height * 0.606,
        width * 0.4155,
        height * 0.621,
        width * 0.4526,
        height * 0.6217,
      )
      ..cubicTo(
        width * 0.4895,
        height * 0.6223,
        width * 0.5444,
        height * 0.6183,
        width * 0.5639,
        height * 0.6158,
      )
      ..cubicTo(
        width * 0.5835,
        height * 0.6132,
        width * 0.6175,
        height * 0.609,
        width * 0.64,
        height * 0.6115,
      )
      ..cubicTo(
        width * 0.6629,
        height * 0.6141,
        width * 0.7265,
        height * 0.6132,
        width * 0.7243,
        height * 0.6026,
      )
      ..cubicTo(
        width * 0.7222,
        height * 0.5922,
        width * 0.7068,
        height * 0.589,
        width * 0.675,
        height * 0.5916,
      )
      ..cubicTo(
        width * 0.6432,
        height * 0.5941,
        width * 0.6156,
        height * 0.6007,
        width * 0.5569,
        height * 0.598,
      )
      ..cubicTo(
        width * 0.4984,
        height * 0.5955,
        width * 0.4924,
        height * 0.5766,
        width * 0.4963,
        height * 0.5673,
      )
      ..cubicTo(
        width * 0.5014,
        height * 0.555,
        width * 0.5343,
        height * 0.5475,
        width * 0.5652,
        height * 0.5475,
      )
      ..cubicTo(
        width * 0.5959,
        height * 0.5475,
        width * 0.6346,
        height * 0.5556,
        width * 0.6572,
        height * 0.5556,
      )
      ..cubicTo(
        width * 0.6804,
        height * 0.5556,
        width * 0.7096,
        height * 0.5517,
        width * 0.7096,
        height * 0.5517,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.6472, height * 0.7462)
      ..cubicTo(
        width * 0.6472,
        height * 0.7462,
        width * 0.6363,
        height * 0.7554,
        width * 0.5991,
        height * 0.7554,
      )
      ..cubicTo(
        width * 0.5617,
        height * 0.7554,
        width * 0.5785,
        height * 0.7523,
        width * 0.5487,
        height * 0.7523,
      )
      ..cubicTo(
        width * 0.519,
        height * 0.7523,
        width * 0.506,
        height * 0.7572,
        width * 0.506,
        height * 0.7629,
      )
      ..cubicTo(
        width * 0.506,
        height * 0.7688,
        width * 0.5165,
        height * 0.7723,
        width * 0.5564,
        height * 0.7723,
      )
      ..cubicTo(
        width * 0.5961,
        height * 0.7723,
        width * 0.6107,
        height * 0.766,
        width * 0.6427,
        height * 0.766,
      )
      ..cubicTo(
        width * 0.6746,
        height * 0.766,
        width * 0.6869,
        height * 0.7734,
        width * 0.6869,
        height * 0.7825,
      )
      ..cubicTo(
        width * 0.6869,
        height * 0.7918,
        width * 0.6662,
        height * 0.8087,
        width * 0.6335,
        height * 0.8034,
      )
      ..cubicTo(
        width * 0.6335,
        height * 0.8034,
        width * 0.6565,
        height * 0.8106,
        width * 0.6808,
        height * 0.8097,
      )
      ..cubicTo(
        width * 0.7052,
        height * 0.8087,
        width * 0.7261,
        height * 0.8058,
        width * 0.7275,
        height * 0.8093,
      )
      ..cubicTo(
        width * 0.7289,
        height * 0.8127,
        width * 0.7389,
        height * 0.8306,
        width * 0.7375,
        height * 0.8403,
      )
      ..cubicTo(
        width * 0.7351,
        height * 0.8554,
        width * 0.7052,
        height * 0.8607,
        width * 0.6933,
        height * 0.8597,
      )
      ..cubicTo(
        width * 0.681,
        height * 0.8587,
        width * 0.665,
        height * 0.8661,
        width * 0.6604,
        height * 0.8694,
      )
      ..lineTo(width * 0.6634, height * 0.8592)
      ..lineTo(width * 0.6513, height * 0.8621)
      ..lineTo(width * 0.6583, height * 0.8495)
      ..lineTo(width * 0.6428, height * 0.8495)
      ..cubicTo(
        width * 0.6428,
        height * 0.8495,
        width * 0.6506,
        height * 0.8398,
        width * 0.6625,
        height * 0.8398,
      )
      ..cubicTo(
        width * 0.6748,
        height * 0.8398,
        width * 0.7026,
        height * 0.8418,
        width * 0.704,
        height * 0.8364,
      )
      ..cubicTo(
        width * 0.7054,
        height * 0.831,
        width * 0.6964,
        height * 0.8237,
        width * 0.6787,
        height * 0.8243,
      )
      ..cubicTo(
        width * 0.6613,
        height * 0.8248,
        width * 0.6277,
        height * 0.831,
        width * 0.607,
        height * 0.8277,
      )
      ..cubicTo(
        width * 0.607,
        height * 0.8277,
        width * 0.6001,
        height * 0.8341,
        width * 0.6063,
        height * 0.8389,
      )
      ..cubicTo(
        width * 0.6124,
        height * 0.8438,
        width * 0.6216,
        height * 0.8496,
        width * 0.617,
        height * 0.853,
      )
      ..cubicTo(
        width * 0.6124,
        height * 0.8563,
        width * 0.601,
        height * 0.8563,
        width * 0.5901,
        height * 0.8558,
      )
      ..cubicTo(
        width * 0.5796,
        height * 0.8554,
        width * 0.5429,
        height * 0.8573,
        width * 0.5299,
        height * 0.8602,
      )
      ..cubicTo(
        width * 0.5169,
        height * 0.8631,
        width * 0.5047,
        height * 0.8674,
        width * 0.5047,
        height * 0.8674,
      )
      ..lineTo(width * 0.5109, height * 0.8562)
      ..cubicTo(
        width * 0.5109,
        height * 0.8562,
        width * 0.4986,
        height * 0.8538,
        width * 0.4926,
        height * 0.8572,
      )
      ..cubicTo(
        width * 0.4926,
        height * 0.8572,
        width * 0.4949,
        height * 0.85,
        width * 0.5049,
        height * 0.8485,
      )
      ..lineTo(width * 0.4935, height * 0.8464)
      ..cubicTo(
        width * 0.4935,
        height * 0.8464,
        width * 0.4979,
        height * 0.8377,
        width * 0.5148,
        height * 0.8386,
      )
      ..cubicTo(
        width * 0.5316,
        height * 0.8396,
        width * 0.5392,
        height * 0.8421,
        width * 0.5446,
        height * 0.8382,
      )
      ..cubicTo(
        width * 0.5499,
        height * 0.8343,
        width * 0.5316,
        height * 0.8265,
        width * 0.5316,
        height * 0.8265,
      )
      ..cubicTo(
        width * 0.5316,
        height * 0.8265,
        width * 0.5177,
        height * 0.8299,
        width * 0.4874,
        height * 0.8328,
      )
      ..cubicTo(
        width * 0.4568,
        height * 0.8357,
        width * 0.4369,
        height * 0.8348,
        width * 0.4369,
        height * 0.8348,
      )
      ..cubicTo(
        width * 0.4369,
        height * 0.8348,
        width * 0.4331,
        height * 0.8553,
        width * 0.3842,
        height * 0.8586,
      )
      ..cubicTo(
        width * 0.3354,
        height * 0.8621,
        width * 0.311,
        height * 0.8475,
        width * 0.2994,
        height * 0.8447,
      )
      ..cubicTo(
        width * 0.2879,
        height * 0.8418,
        width * 0.272,
        height * 0.8442,
        width * 0.272,
        height * 0.8442,
      )
      ..lineTo(width * 0.2797, height * 0.835)
      ..lineTo(width * 0.2614, height * 0.8374)
      ..cubicTo(
        width * 0.2614,
        height * 0.8374,
        width * 0.2604,
        height * 0.8261,
        width * 0.2728,
        height * 0.8258,
      )
      ..lineTo(width * 0.256, height * 0.8229)
      ..cubicTo(
        width * 0.256,
        height * 0.8229,
        width * 0.2681,
        height * 0.8136,
        width * 0.285,
        height * 0.8161,
      )
      ..cubicTo(
        width * 0.3018,
        height * 0.8185,
        width * 0.3104,
        height * 0.8276,
        width * 0.3262,
        height * 0.8326,
      )
      ..cubicTo(
        width * 0.3522,
        height * 0.8408,
        width * 0.4127,
        height * 0.835,
        width * 0.3675,
        height * 0.8291,
      )
      ..cubicTo(
        width * 0.357,
        height * 0.8278,
        width * 0.3496,
        height * 0.8213,
        width * 0.3496,
        height * 0.8213,
      )
      ..cubicTo(
        width * 0.3496,
        height * 0.8213,
        width * 0.321,
        height * 0.8252,
        width * 0.2987,
        height * 0.8034,
      )
      ..cubicTo(
        width * 0.2836,
        height * 0.7884,
        width * 0.2767,
        height * 0.7763,
        width * 0.2491,
        height * 0.7796,
      )
      ..cubicTo(
        width * 0.2491,
        height * 0.7796,
        width * 0.2621,
        height * 0.769,
        width * 0.2767,
        height * 0.7723,
      )
      ..cubicTo(
        width * 0.2767,
        height * 0.7723,
        width * 0.2683,
        height * 0.7655,
        width * 0.2553,
        height * 0.766,
      )
      ..cubicTo(
        width * 0.2553,
        height * 0.766,
        width * 0.2614,
        height * 0.7564,
        width * 0.2797,
        height * 0.7596,
      )
      ..cubicTo(
        width * 0.2797,
        height * 0.7596,
        width * 0.2697,
        height * 0.7538,
        width * 0.2605,
        height * 0.7543,
      )
      ..cubicTo(
        width * 0.2605,
        height * 0.7543,
        width * 0.266,
        height * 0.7442,
        width * 0.2904,
        height * 0.7529,
      )
      ..cubicTo(
        width * 0.3148,
        height * 0.7616,
        width * 0.3001,
        height * 0.769,
        width * 0.305,
        height * 0.7744,
      )
      ..cubicTo(
        width * 0.3082,
        height * 0.7778,
        width * 0.3147,
        height * 0.7836,
        width * 0.331,
        height * 0.7928,
      )
      ..cubicTo(
        width * 0.3584,
        height * 0.8083,
        width * 0.3714,
        height * 0.8122,
        width * 0.363,
        height * 0.7965,
      )
      ..cubicTo(
        width * 0.3538,
        height * 0.7925,
        width * 0.3486,
        height * 0.7825,
        width * 0.3463,
        height * 0.7778,
      )
      ..cubicTo(
        width * 0.344,
        height * 0.7729,
        width * 0.331,
        height * 0.7613,
        width * 0.3349,
        height * 0.7583,
      )
      ..cubicTo(
        width * 0.3387,
        height * 0.7554,
        width * 0.3501,
        height * 0.7607,
        width * 0.3501,
        height * 0.7607,
      )
      ..cubicTo(
        width * 0.3501,
        height * 0.7607,
        width * 0.3647,
        height * 0.7568,
        width * 0.3846,
        height * 0.7568,
      )
      ..cubicTo(
        width * 0.4044,
        height * 0.7568,
        width * 0.4122,
        height * 0.7626,
        width * 0.4122,
        height * 0.7626,
      )
      ..cubicTo(
        width * 0.4122,
        height * 0.7626,
        width * 0.4259,
        height * 0.7558,
        width * 0.4281,
        height * 0.7593,
      )
      ..cubicTo(
        width * 0.4304,
        height * 0.7626,
        width * 0.4204,
        height * 0.7681,
        width * 0.4158,
        height * 0.7739,
      )
      ..cubicTo(
        width * 0.4113,
        height * 0.7797,
        width * 0.4165,
        height * 0.7865,
        width * 0.4165,
        height * 0.7865,
      )
      ..cubicTo(
        width * 0.4165,
        height * 0.7865,
        width * 0.4301,
        height * 0.7977,
        width * 0.4575,
        height * 0.7981,
      )
      ..cubicTo(
        width * 0.4851,
        height * 0.7986,
        width * 0.5258,
        height * 0.7957,
        width * 0.5404,
        height * 0.7938,
      )
      ..cubicTo(
        width * 0.555,
        height * 0.7918,
        width * 0.5803,
        height * 0.7888,
        width * 0.597,
        height * 0.7905,
      )
      ..cubicTo(
        width * 0.6138,
        height * 0.7925,
        width * 0.6613,
        height * 0.7918,
        width * 0.6597,
        height * 0.784,
      )
      ..cubicTo(
        width * 0.6581,
        height * 0.7763,
        width * 0.6467,
        height * 0.7738,
        width * 0.623,
        height * 0.7757,
      )
      ..cubicTo(
        width * 0.5994,
        height * 0.7778,
        width * 0.5787,
        height * 0.7825,
        width * 0.5351,
        height * 0.7806,
      )
      ..cubicTo(
        width * 0.4917,
        height * 0.7786,
        width * 0.4874,
        height * 0.7646,
        width * 0.4902,
        height * 0.7577,
      )
      ..cubicTo(
        width * 0.494,
        height * 0.7486,
        width * 0.5184,
        height * 0.7429,
        width * 0.5413,
        height * 0.7429,
      )
      ..cubicTo(
        width * 0.5641,
        height * 0.7429,
        width * 0.5929,
        height * 0.749,
        width * 0.6096,
        height * 0.749,
      )
      ..cubicTo(
        width * 0.6254,
        height * 0.7491,
        width * 0.6472,
        height * 0.7462,
        width * 0.6472,
        height * 0.7462,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator())
      ..drawPath(path4, paintCreator())
      ..drawPath(path5, paintCreator())
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
