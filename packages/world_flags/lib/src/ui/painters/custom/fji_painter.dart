// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of Fiji.
///
/// Draws the shield of Fiji with the lion, cross, palms and dove.
final class FjiPainter extends UnionJackPainter {
  /// Creates a new instance of [FjiPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7736;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.5, 0)
      ..lineTo(0, 0)
      ..lineTo(0, height * 0.6546)
      ..cubicTo(0, height * 0.876, width * 0.5, height, width * 0.5, height)
      ..cubicTo(
        width * 0.5,
        height,
        width,
        height * 0.876,
        width,
        height * 0.6546,
      )
      ..lineTo(width, 0)
      ..lineTo(width * 0.5, 0)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.5, height * 0.9833)
      ..cubicTo(
        width * 0.4431,
        height * 0.9682,
        width * 0.0205,
        height * 0.8489,
        width * 0.0205,
        height * 0.6546,
      )
      ..lineTo(width * 0.0205, height * 0.0159)
      ..lineTo(width * 0.9795, height * 0.0159)
      ..lineTo(width * 0.9795, height * 0.6546)
      ..cubicTo(
        width * 0.9795,
        height * 0.8489,
        width * 0.5569,
        height * 0.9681,
        width * 0.5,
        height * 0.9833,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.9795, height * 0.2595)
      ..lineTo(width * 0.9795, height * 0.0159)
      ..lineTo(width * 0.0205, height * 0.0159)
      ..lineTo(width * 0.0205, height * 0.2595)
      ..lineTo(width * 0.4316, height * 0.2595)
      ..lineTo(width * 0.4316, height * 0.529)
      ..lineTo(width * 0.0205, height * 0.529)
      ..lineTo(width * 0.0205, height * 0.6331)
      ..lineTo(width * 0.4316, height * 0.6331)
      ..lineTo(width * 0.4316, height * 0.9629)
      ..cubicTo(
        width * 0.4641,
        height * 0.9734,
        width * 0.489,
        height * 0.9803,
        width * 0.5,
        height * 0.9833,
      )
      ..cubicTo(
        width * 0.5107,
        height * 0.9804,
        width * 0.5347,
        height * 0.9737,
        width * 0.5663,
        height * 0.9637,
      )
      ..lineTo(width * 0.5663, height * 0.6331)
      ..lineTo(width * 0.9795, height * 0.6331)
      ..lineTo(width * 0.9795, height * 0.529)
      ..lineTo(width * 0.5663, height * 0.529)
      ..lineTo(width * 0.5663, height * 0.2595)
      ..lineTo(width * 0.9795, height * 0.2595)
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.1449, height * 0.164)
      ..cubicTo(
        width * 0.1449,
        height * 0.1858,
        width * 0.1186,
        height * 0.2035,
        width * 0.0863,
        height * 0.2035,
      )
      ..cubicTo(
        width * 0.0538,
        height * 0.2035,
        width * 0.0276,
        height * 0.1858,
        width * 0.0276,
        height * 0.164,
      )
      ..cubicTo(
        width * 0.0276,
        height * 0.1422,
        width * 0.0538,
        height * 0.1245,
        width * 0.0863,
        height * 0.1245,
      )
      ..cubicTo(
        width * 0.1186,
        height * 0.1245,
        width * 0.1449,
        height * 0.1422,
        width * 0.1449,
        height * 0.164,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.0972, height * 0.1327)
      ..cubicTo(
        width * 0.0638,
        height * 0.1372,
        width * 0.0476,
        height * 0.1215,
        width * 0.0539,
        height * 0.1066,
      )
      ..cubicTo(
        width * 0.0603,
        height * 0.0918,
        width * 0.0924,
        height * 0.0781,
        width * 0.1229,
        height * 0.0756,
      )
      ..cubicTo(
        width * 0.1533,
        height * 0.0732,
        width * 0.1822,
        height * 0.0967,
        width * 0.2062,
        height * 0.0979,
      )
      ..cubicTo(
        width * 0.2302,
        height * 0.0992,
        width * 0.243,
        height * 0.0889,
        width * 0.2478,
        height * 0.0754,
      )
      ..cubicTo(
        width * 0.2526,
        height * 0.0619,
        width * 0.2863,
        height * 0.0312,
        width * 0.2654,
        height * 0.0235,
      )
      ..cubicTo(
        width * 0.2927,
        height * 0.0235,
        width * 0.2927,
        height * 0.0458,
        width * 0.2927,
        height * 0.0458,
      )
      ..cubicTo(
        width * 0.2927,
        height * 0.0458,
        width * 0.3232,
        height * 0.0222,
        width * 0.3456,
        height * 0.0235,
      )
      ..cubicTo(
        width * 0.3585,
        height * 0.0409,
        width * 0.3456,
        height * 0.0656,
        width * 0.3456,
        height * 0.0656,
      )
      ..cubicTo(
        width * 0.3456,
        height * 0.0656,
        width * 0.3776,
        height * 0.0557,
        width * 0.4001,
        height * 0.0669,
      )
      ..cubicTo(
        width * 0.3568,
        height * 0.0718,
        width * 0.3505,
        height * 0.0916,
        width * 0.3505,
        height * 0.0916,
      )
      ..cubicTo(
        width * 0.3505,
        height * 0.0916,
        width * 0.3585,
        height * 0.1077,
        width * 0.3473,
        height * 0.1164,
      )
      ..cubicTo(
        width * 0.3361,
        height * 0.125,
        width * 0.4354,
        height * 0.1411,
        width * 0.4899,
        height * 0.1288,
      )
      ..cubicTo(
        width * 0.5444,
        height * 0.1164,
        width * 0.6486,
        height * 0.0878,
        width * 0.7159,
        height * 0.0878,
      )
      ..cubicTo(
        width * 0.7832,
        height * 0.0878,
        width * 0.7976,
        height * 0.1077,
        width * 0.8136,
        height * 0.0903,
      )
      ..cubicTo(
        width * 0.8296,
        height * 0.0729,
        width * 0.7944,
        height * 0.0543,
        width * 0.7367,
        height * 0.0581,
      )
      ..cubicTo(
        width * 0.6791,
        height * 0.0618,
        width * 0.5812,
        height * 0.1135,
        width * 0.5428,
        height * 0.0789,
      )
      ..cubicTo(
        width * 0.5331,
        height * 0.0789,
        width * 0.5283,
        height * 0.0878,
        width * 0.5283,
        height * 0.0878,
      )
      ..cubicTo(
        width * 0.5283,
        height * 0.0878,
        width * 0.5043,
        height * 0.0816,
        width * 0.4802,
        height * 0.0717,
      )
      ..cubicTo(
        width * 0.4562,
        height * 0.0618,
        width * 0.4609,
        height * 0.0953,
        width * 0.4738,
        height * 0.1002,
      )
      ..cubicTo(
        width * 0.4337,
        height * 0.0989,
        width * 0.4351,
        height * 0.0789,
        width * 0.4351,
        height * 0.0789,
      )
      ..cubicTo(
        width * 0.4351,
        height * 0.0789,
        width * 0.3856,
        height * 0.0509,
        width * 0.4177,
        height * 0.0298,
      )
      ..cubicTo(
        width * 0.4201,
        height * 0.0682,
        width * 0.4642,
        height * 0.057,
        width * 0.4883,
        height * 0.0496,
      )
      ..cubicTo(
        width * 0.5123,
        height * 0.0421,
        width * 0.5428,
        height * 0.0483,
        width * 0.5572,
        height * 0.0582,
      )
      ..cubicTo(
        width * 0.5717,
        height * 0.0682,
        width * 0.6133,
        height * 0.0768,
        width * 0.6662,
        height * 0.0533,
      )
      ..cubicTo(
        width * 0.7191,
        height * 0.0298,
        width * 0.8616,
        height * 0.0211,
        width * 0.8633,
        height * 0.0707,
      )
      ..cubicTo(
        width * 0.8649,
        height * 0.1203,
        width * 0.7927,
        height * 0.124,
        width * 0.7927,
        height * 0.124,
      )
      ..cubicTo(
        width * 0.7927,
        height * 0.124,
        width * 0.8007,
        height * 0.1538,
        width * 0.8456,
        height * 0.1476,
      )
      ..cubicTo(
        width * 0.8906,
        height * 0.1414,
        width * 0.9194,
        height * 0.1315,
        width * 0.9322,
        height * 0.1588,
      )
      ..cubicTo(
        width * 0.945,
        height * 0.1861,
        width * 0.9738,
        height * 0.1872,
        width * 0.9643,
        height * 0.2096,
      )
      ..cubicTo(
        width * 0.9547,
        height * 0.2319,
        width * 0.9227,
        height * 0.2423,
        width * 0.8794,
        height * 0.2365,
      )
      ..cubicTo(
        width * 0.8361,
        height * 0.2307,
        width * 0.8313,
        height * 0.2171,
        width * 0.8666,
        height * 0.2121,
      )
      ..cubicTo(
        width * 0.9018,
        height * 0.2072,
        width * 0.9082,
        height * 0.1861,
        width * 0.8954,
        height * 0.1811,
      )
      ..cubicTo(
        width * 0.8826,
        height * 0.1761,
        width * 0.8586,
        height * 0.196,
        width * 0.8265,
        height * 0.186,
      )
      ..cubicTo(
        width * 0.7944,
        height * 0.176,
        width * 0.7527,
        height * 0.1562,
        width * 0.7527,
        height * 0.1562,
      )
      ..cubicTo(
        width * 0.7527,
        height * 0.1562,
        width * 0.7544,
        height * 0.1699,
        width * 0.7254,
        height * 0.1773,
      )
      ..cubicTo(
        width * 0.6966,
        height * 0.1848,
        width * 0.7206,
        height * 0.1934,
        width * 0.7286,
        height * 0.2071,
      )
      ..cubicTo(
        width * 0.7366,
        height * 0.2207,
        width * 0.6998,
        height * 0.2318,
        width * 0.6613,
        height * 0.238,
      )
      ..cubicTo(
        width * 0.6229,
        height * 0.2442,
        width * 0.5941,
        height * 0.2604,
        width * 0.5571,
        height * 0.2256,
      )
      ..cubicTo(
        width * 0.5203,
        height * 0.1909,
        width * 0.5668,
        height * 0.1811,
        width * 0.5859,
        height * 0.1922,
      )
      ..cubicTo(
        width * 0.6051,
        height * 0.2033,
        width * 0.6244,
        height * 0.2232,
        width * 0.6404,
        height * 0.2133,
      )
      ..cubicTo(
        width * 0.6564,
        height * 0.2033,
        width * 0.6292,
        height * 0.1972,
        width * 0.6259,
        height * 0.1785,
      )
      ..cubicTo(
        width * 0.6228,
        height * 0.1599,
        width * 0.6276,
        height * 0.1377,
        width * 0.6276,
        height * 0.1377,
      )
      ..cubicTo(
        width * 0.6276,
        height * 0.1377,
        width * 0.5763,
        height * 0.1995,
        width * 0.4674,
        height * 0.2119,
      )
      ..cubicTo(
        width * 0.3585,
        height * 0.2243,
        width * 0.3392,
        height * 0.2243,
        width * 0.3392,
        height * 0.2243,
      )
      ..lineTo(width * 0.3072, height * 0.2069)
      ..lineTo(width * 0.2687, height * 0.2268)
      ..lineTo(width * 0.2671, height * 0.2045)
      ..cubicTo(
        width * 0.2671,
        height * 0.2045,
        width * 0.2062,
        height * 0.2414,
        width * 0.1742,
        height * 0.2471,
      )
      ..cubicTo(
        width * 0.1422,
        height * 0.2529,
        width * 0.0546,
        height * 0.2368,
        width * 0.0526,
        height * 0.2181,
      )
      ..cubicTo(
        width * 0.0507,
        height * 0.1995,
        width * 0.0603,
        height * 0.1908,
        width * 0.0891,
        height * 0.1834,
      )
      ..cubicTo(
        width * 0.1179,
        height * 0.1759,
        width * 0.1228,
        height * 0.1883,
        width * 0.1372,
        height * 0.1983,
      )
      ..cubicTo(
        width * 0.1517,
        height * 0.2083,
        width * 0.1677,
        height * 0.2218,
        width * 0.1885,
        height * 0.2082,
      )
      ..cubicTo(
        width * 0.2093,
        height * 0.1945,
        width * 0.2205,
        height * 0.1896,
        width * 0.2205,
        height * 0.1896,
      )
      ..lineTo(width * 0.2269, height * 0.1661)
      ..lineTo(width * 0.1964, height * 0.1648)
      ..lineTo(width * 0.2076, height * 0.1376)
      ..cubicTo(
        width * 0.2076,
        height * 0.1376,
        width * 0.1851,
        height * 0.1412,
        width * 0.1691,
        height * 0.13,
      )
      ..cubicTo(
        width * 0.1531,
        height * 0.1189,
        width * 0.1515,
        height * 0.1077,
        width * 0.1371,
        height * 0.1115,
      )
      ..cubicTo(
        width * 0.1229,
        height * 0.1153,
        width * 0.1341,
        height * 0.1277,
        width * 0.0972,
        height * 0.1327,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.1742, height * 0.4921)
      ..cubicTo(
        width * 0.1469,
        height * 0.5008,
        width * 0.1052,
        height * 0.4314,
        width * 0.1292,
        height * 0.4115,
      )
      ..cubicTo(
        width * 0.1533,
        height * 0.3917,
        width * 0.2013,
        height * 0.4835,
        width * 0.1742,
        height * 0.4921,
      )
      ..close()
      ..moveTo(width * 0.227, height * 0.4835)
      ..cubicTo(
        width * 0.2014,
        height * 0.4852,
        width * 0.211,
        height * 0.3892,
        width * 0.227,
        height * 0.3892,
      )
      ..cubicTo(
        width * 0.2431,
        height * 0.3892,
        width * 0.2623,
        height * 0.481,
        width * 0.227,
        height * 0.4835,
      )
      ..close()
      ..moveTo(width * 0.2719, height * 0.4987)
      ..cubicTo(
        width * 0.24,
        height * 0.4941,
        width * 0.2879,
        height * 0.4364,
        width * 0.3007,
        height * 0.4364,
      )
      ..cubicTo(
        width * 0.3135,
        height * 0.4364,
        width * 0.3087,
        height * 0.5039,
        width * 0.2719,
        height * 0.4987,
      )
      ..close()
      ..moveTo(width * 0.7783, height * 0.5144)
      ..cubicTo(
        width * 0.7158,
        height * 0.5158,
        width * 0.751,
        height * 0.506,
        width * 0.7574,
        height * 0.4929,
      )
      ..cubicTo(
        width * 0.7638,
        height * 0.4797,
        width * 0.76,
        height * 0.3818,
        width * 0.76,
        height * 0.3818,
      )
      ..lineTo(width * 0.7959, height * 0.3818)
      ..cubicTo(
        width * 0.7959,
        height * 0.3818,
        width * 0.7847,
        height * 0.4661,
        width * 0.7959,
        height * 0.4835,
      )
      ..cubicTo(
        width * 0.8072,
        height * 0.5009,
        width * 0.836,
        height * 0.5132,
        width * 0.7783,
        height * 0.5144,
      )
      ..close()
      ..moveTo(width * 0.9016, height * 0.6856)
      ..cubicTo(
        width * 0.9165,
        height * 0.6727,
        width * 0.8792,
        height * 0.6521,
        width * 0.8535,
        height * 0.6521,
      )
      ..cubicTo(
        width * 0.8279,
        height * 0.6521,
        width * 0.7989,
        height * 0.6633,
        width * 0.7773,
        height * 0.7103,
      )
      ..cubicTo(
        width * 0.7558,
        height * 0.7575,
        width * 0.8014,
        height * 0.7438,
        width * 0.8131,
        height * 0.7178,
      )
      ..cubicTo(
        width * 0.8248,
        height * 0.6918,
        width * 0.8344,
        height * 0.6768,
        width * 0.852,
        height * 0.6757,
      )
      ..cubicTo(
        width * 0.8696,
        height * 0.6744,
        width * 0.876,
        height * 0.7079,
        width * 0.9016,
        height * 0.6856,
      )
      ..close()
      ..moveTo(width * 0.6565, height * 0.8504)
      ..cubicTo(
        width * 0.6236,
        height * 0.8485,
        width * 0.5956,
        height * 0.9149,
        width * 0.5956,
        height * 0.9149,
      )
      ..cubicTo(
        width * 0.5956,
        height * 0.9149,
        width * 0.7431,
        height * 0.8554,
        width * 0.6565,
        height * 0.8504,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.1449, height * 0.4364)
      ..cubicTo(
        width * 0.1529,
        height * 0.4562,
        width * 0.0716,
        height * 0.4332,
        width * 0.0701,
        height * 0.4676,
      )
      ..cubicTo(
        width * 0.0364,
        height * 0.4637,
        width * 0.0845,
        height * 0.4128,
        width * 0.115,
        height * 0.4203,
      )
      ..cubicTo(
        width * 0.1086,
        height * 0.393,
        width * 0.0631,
        height * 0.3819,
        width * 0.0586,
        height * 0.4265,
      )
      ..cubicTo(
        width * 0.0076,
        height * 0.3917,
        width * 0.0725,
        height * 0.3583,
        width * 0.1017,
        height * 0.3731,
      )
      ..cubicTo(
        width * 0.0862,
        height * 0.331,
        width * 0.0563,
        height * 0.3317,
        width * 0.0526,
        height * 0.357,
      )
      ..cubicTo(
        width * 0.0141,
        height * 0.3323,
        width * 0.0529,
        height * 0.2926,
        width * 0.0864,
        height * 0.3112,
      )
      ..cubicTo(
        width * 0.1198,
        height * 0.3297,
        width * 0.1223,
        height * 0.3496,
        width * 0.1223,
        height * 0.3496,
      )
      ..cubicTo(
        width * 0.1223,
        height * 0.3496,
        width * 0.1455,
        height * 0.2854,
        width * 0.2048,
        height * 0.3063,
      )
      ..cubicTo(
        width * 0.1329,
        height * 0.3298,
        width * 0.1189,
        height * 0.3719,
        width * 0.1449,
        height * 0.4364,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.229, height * 0.4088)
      ..cubicTo(
        width * 0.2078,
        height * 0.393,
        width * 0.195,
        height * 0.3756,
        width * 0.195,
        height * 0.3756,
      )
      ..cubicTo(
        width * 0.195,
        height * 0.3756,
        width * 0.2176,
        height * 0.4227,
        width * 0.1823,
        height * 0.4426,
      )
      ..cubicTo(
        width * 0.1838,
        height * 0.3992,
        width * 0.1453,
        height * 0.3843,
        width * 0.1662,
        height * 0.3669,
      )
      ..cubicTo(
        width * 0.187,
        height * 0.3496,
        width * 0.2223,
        height * 0.3669,
        width * 0.2223,
        height * 0.3669,
      )
      ..cubicTo(
        width * 0.2223,
        height * 0.3669,
        width * 0.2306,
        height * 0.3569,
        width * 0.1945,
        height * 0.3322,
      )
      ..cubicTo(
        width * 0.1584,
        height * 0.3076,
        width * 0.1325,
        height * 0.3086,
        width * 0.1309,
        height * 0.2876,
      )
      ..cubicTo(
        width * 0.1671,
        height * 0.3043,
        width * 0.2225,
        height * 0.3043,
        width * 0.229,
        height * 0.3508,
      )
      ..cubicTo(
        width * 0.2366,
        height * 0.2951,
        width * 0.2691,
        height * 0.2938,
        width * 0.2841,
        height * 0.2926,
      )
      ..cubicTo(
        width * 0.2991,
        height * 0.2914,
        width * 0.3344,
        height * 0.2975,
        width * 0.3472,
        height * 0.2877,
      )
      ..cubicTo(
        width * 0.3472,
        height * 0.3075,
        width * 0.3184,
        height * 0.3013,
        width * 0.2991,
        height * 0.3075,
      )
      ..cubicTo(
        width * 0.3247,
        height * 0.3212,
        width * 0.3264,
        height * 0.3652,
        width * 0.3264,
        height * 0.3652,
      )
      ..cubicTo(
        width * 0.3264,
        height * 0.3652,
        width * 0.2895,
        height * 0.315,
        width * 0.2734,
        height * 0.3187,
      )
      ..cubicTo(
        width * 0.2574,
        height * 0.3224,
        width * 0.2468,
        height * 0.3596,
        width * 0.2468,
        height * 0.3596,
      )
      ..cubicTo(
        width * 0.2468,
        height * 0.3596,
        width * 0.3053,
        height * 0.3583,
        width * 0.284,
        height * 0.4192,
      )
      ..cubicTo(
        width * 0.275,
        height * 0.3857,
        width * 0.2653,
        height * 0.3819,
        width * 0.2542,
        height * 0.3819,
      )
      ..cubicTo(
        width * 0.243,
        height * 0.3819,
        width * 0.229,
        height * 0.4088,
        width * 0.229,
        height * 0.4088,
      )
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.2841, height * 0.4508)
      ..cubicTo(
        width * 0.2863,
        height * 0.4276,
        width * 0.3007,
        height * 0.388,
        width * 0.3167,
        height * 0.3849,
      )
      ..cubicTo(
        width * 0.3221,
        height * 0.3595,
        width * 0.3392,
        height * 0.3235,
        width * 0.3744,
        height * 0.3174,
      )
      ..cubicTo(
        width * 0.4096,
        height * 0.3112,
        width * 0.4176,
        height * 0.3397,
        width * 0.4096,
        height * 0.3558,
      )
      ..cubicTo(
        width * 0.3888,
        height * 0.3322,
        width * 0.36,
        height * 0.326,
        width * 0.3535,
        height * 0.3818,
      )
      ..cubicTo(
        width * 0.384,
        height * 0.3756,
        width * 0.4016,
        height * 0.3942,
        width * 0.3936,
        height * 0.419,
      )
      ..cubicTo(
        width * 0.3648,
        height * 0.393,
        width * 0.344,
        height * 0.3899,
        width * 0.3312,
        height * 0.4088,
      )
      ..cubicTo(
        width * 0.3648,
        height * 0.419,
        width * 0.3654,
        height * 0.4413,
        width * 0.3483,
        height * 0.4599,
      )
      ..cubicTo(
        width * 0.3408,
        height * 0.4277,
        width * 0.3186,
        height * 0.4302,
        width * 0.3068,
        height * 0.4599,
      )
      ..cubicTo(
        width * 0.2949,
        height * 0.4896,
        width * 0.2841,
        height * 0.4508,
        width * 0.2841,
        height * 0.4508,
      )
      ..close()
      ..moveTo(width * 0.7717, height * 0.4088)
      ..cubicTo(
        width * 0.7351,
        height * 0.4088,
        width * 0.687,
        height * 0.438,
        width * 0.6838,
        height * 0.4835,
      )
      ..cubicTo(
        width * 0.6453,
        height * 0.4388,
        width * 0.6924,
        height * 0.3892,
        width * 0.7417,
        height * 0.3719,
      )
      ..cubicTo(
        width * 0.6549,
        height * 0.3731,
        width * 0.6229,
        height * 0.4029,
        width * 0.6117,
        height * 0.4276,
      )
      ..cubicTo(
        width * 0.6005,
        height * 0.3619,
        width * 0.7084,
        height * 0.3359,
        width * 0.7417,
        height * 0.347,
      )
      ..cubicTo(
        width * 0.7206,
        height * 0.3185,
        width * 0.6373,
        height * 0.3209,
        width * 0.5956,
        height * 0.3445,
      )
      ..cubicTo(
        width * 0.5956,
        height * 0.29,
        width * 0.7202,
        height * 0.2769,
        width * 0.7717,
        height * 0.3262,
      )
      ..cubicTo(
        width * 0.7654,
        height * 0.2863,
        width * 0.7864,
        height * 0.2763,
        width * 0.7864,
        height * 0.2763,
      )
      ..lineTo(width * 0.7864, height * 0.3297)
      ..cubicTo(
        width * 0.7864,
        height * 0.3297,
        width * 0.9024,
        height * 0.2454,
        width * 0.9662,
        height * 0.347,
      )
      ..cubicTo(
        width * 0.8633,
        height * 0.3061,
        width * 0.8132,
        height * 0.3483,
        width * 0.8132,
        height * 0.3483,
      )
      ..cubicTo(
        width * 0.8132,
        height * 0.3483,
        width * 0.9198,
        height * 0.3285,
        width * 0.9051,
        height * 0.4239,
      )
      ..cubicTo(
        width * 0.8713,
        height * 0.3657,
        width * 0.8007,
        height * 0.3719,
        width * 0.8007,
        height * 0.3719,
      )
      ..cubicTo(
        width * 0.8007,
        height * 0.3719,
        width * 0.8825,
        height * 0.4004,
        width * 0.8504,
        height * 0.471,
      )
      ..cubicTo(
        width * 0.8184,
        height * 0.4029,
        width * 0.7717,
        height * 0.4088,
        width * 0.7717,
        height * 0.4088,
      )
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.6933, height * 0.7191)
      ..cubicTo(
        width * 0.6885,
        height * 0.6818,
        width * 0.7494,
        height * 0.6608,
        width * 0.7494,
        height * 0.6608,
      )
      ..cubicTo(
        width * 0.7494,
        height * 0.6608,
        width * 0.852,
        height * 0.7091,
        width * 0.8665,
        height * 0.7191,
      )
      ..cubicTo(
        width * 0.8809,
        height * 0.729,
        width * 0.8576,
        height * 0.7705,
        width * 0.8131,
        height * 0.7813,
      )
      ..cubicTo(
        width * 0.7687,
        height * 0.7921,
        width * 0.6933,
        height * 0.7191,
        width * 0.6933,
        height * 0.7191,
      )
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.6651, height * 0.8513)
      ..cubicTo(
        width * 0.641,
        height * 0.8396,
        width * 0.6256,
        height * 0.7736,
        width * 0.6651,
        height * 0.7673,
      )
      ..cubicTo(
        width * 0.6502,
        height * 0.7276,
        width * 0.6822,
        height * 0.7078,
        width * 0.6933,
        height * 0.7053,
      )
      ..cubicTo(
        width * 0.7045,
        height * 0.7029,
        width * 0.7461,
        height * 0.7174,
        width * 0.7773,
        height * 0.7405,
      )
      ..cubicTo(
        width * 0.8087,
        height * 0.7636,
        width * 0.8359,
        height * 0.7691,
        width * 0.8384,
        height * 0.7782,
      )
      ..cubicTo(
        width * 0.8408,
        height * 0.7871,
        width * 0.8188,
        height * 0.8144,
        width * 0.7809,
        height * 0.8169,
      )
      ..cubicTo(
        width * 0.7927,
        height * 0.8443,
        width * 0.7026,
        height * 0.8696,
        width * 0.6651,
        height * 0.8513,
      )
      ..close();

    final path12 = Path()
      ..moveTo(width * 0.1309, height * 0.6968)
      ..cubicTo(
        width * 0.1309,
        height * 0.6968,
        width * 0.1549,
        height * 0.6892,
        width * 0.1693,
        height * 0.6781,
      )
      ..cubicTo(
        width * 0.1838,
        height * 0.667,
        width * 0.203,
        height * 0.6669,
        width * 0.219,
        height * 0.6874,
      )
      ..cubicTo(
        width * 0.235,
        height * 0.7079,
        width * 0.2468,
        height * 0.7339,
        width * 0.2468,
        height * 0.7339,
      )
      ..cubicTo(
        width * 0.2468,
        height * 0.7339,
        width * 0.2413,
        height * 0.6967,
        width * 0.2911,
        height * 0.6768,
      )
      ..cubicTo(
        width * 0.3408,
        height * 0.657,
        width * 0.3483,
        height * 0.6521,
        width * 0.3483,
        height * 0.6521,
      )
      ..lineTo(width * 0.3312, height * 0.7051)
      ..cubicTo(
        width * 0.3312,
        height * 0.7051,
        width * 0.3905,
        height * 0.6769,
        width * 0.4001,
        height * 0.6607,
      )
      ..cubicTo(
        width * 0.4129,
        height * 0.724,
        width * 0.352,
        height * 0.7692,
        width * 0.3135,
        height * 0.7813,
      )
      ..cubicTo(
        width * 0.3344,
        height * 0.8083,
        width * 0.3247,
        height * 0.8306,
        width * 0.3247,
        height * 0.8306,
      )
      ..lineTo(width * 0.3953, height * 0.8752)
      ..lineTo(width * 0.3184, height * 0.8938)
      ..lineTo(width * 0.2841, height * 0.8367)
      ..cubicTo(
        width * 0.2841,
        height * 0.8367,
        width * 0.1952,
        height * 0.8392,
        width * 0.1823,
        height * 0.7871,
      )
      ..cubicTo(
        width * 0.1693,
        height * 0.7351,
        width * 0.2,
        height * 0.7072,
        width * 0.1823,
        height * 0.705,
      )
      ..cubicTo(
        width * 0.1645,
        height * 0.7029,
        width * 0.1309,
        height * 0.6968,
        width * 0.1309,
        height * 0.6968,
      )
      ..close();

    final path13 = Path()
      ..moveTo(width * 0.2906, height * 0.8286)
      ..lineTo(width * 0.2837, height * 0.8289)
      ..cubicTo(
        width * 0.2687,
        height * 0.8289,
        width * 0.2026,
        height * 0.8266,
        width * 0.1924,
        height * 0.7857,
      )
      ..cubicTo(
        width * 0.1856,
        height * 0.7585,
        width * 0.1914,
        height * 0.7383,
        width * 0.1953,
        height * 0.725,
      )
      ..cubicTo(
        width * 0.1982,
        height * 0.7148,
        width * 0.2001,
        height * 0.708,
        width * 0.1952,
        height * 0.7025,
      )
      ..lineTo(width * 0.1927, height * 0.6996)
      ..lineTo(width * 0.1839, height * 0.6972)
      ..cubicTo(
        width * 0.1774,
        height * 0.6964,
        width * 0.1687,
        height * 0.6951,
        width * 0.1603,
        height * 0.6937,
      )
      ..cubicTo(
        width * 0.1661,
        height * 0.6909,
        width * 0.1718,
        height * 0.6875,
        width * 0.1766,
        height * 0.6837,
      )
      ..cubicTo(
        width * 0.1797,
        height * 0.6814,
        width * 0.1844,
        height * 0.6785,
        width * 0.1897,
        height * 0.6785,
      )
      ..cubicTo(
        width * 0.1964,
        height * 0.6785,
        width * 0.2038,
        height * 0.6831,
        width * 0.2103,
        height * 0.6914,
      )
      ..cubicTo(
        width * 0.2255,
        height * 0.711,
        width * 0.2371,
        height * 0.7363,
        width * 0.2372,
        height * 0.7364,
      )
      ..lineTo(width * 0.2571, height * 0.7329)
      ..cubicTo(
        width * 0.2569,
        height * 0.7316,
        width * 0.2534,
        height * 0.7008,
        width * 0.2959,
        height * 0.6838,
      )
      ..cubicTo(
        width * 0.312,
        height * 0.6774,
        width * 0.3237,
        height * 0.6725,
        width * 0.3323,
        height * 0.6688,
      )
      ..lineTo(width * 0.3152, height * 0.722)
      ..lineTo(width * 0.3366, height * 0.7118)
      ..cubicTo(
        width * 0.3438,
        height * 0.7083,
        width * 0.372,
        height * 0.6946,
        width * 0.3915,
        height * 0.6807,
      )
      ..cubicTo(
        width * 0.3893,
        height * 0.7314,
        width * 0.3368,
        height * 0.7653,
        width * 0.3096,
        height * 0.7739,
      )
      ..lineTo(width * 0.2987, height * 0.7774)
      ..lineTo(width * 0.3048, height * 0.7854)
      ..cubicTo(
        width * 0.3228,
        height * 0.8086,
        width * 0.3154,
        height * 0.8273,
        width * 0.3152,
        height * 0.8281,
      )
      ..lineTo(width * 0.313, height * 0.8332)
      ..lineTo(width * 0.3742, height * 0.8719)
      ..lineTo(width * 0.324, height * 0.8841)
      ..lineTo(width * 0.2906, height * 0.8286)
      ..close();

    final path14 = Path()
      ..moveTo(width * 0.1522, height * 0.6882)
      ..cubicTo(
        width * 0.1405,
        height * 0.667,
        width * 0.1405,
        height * 0.667,
        width * 0.1221,
        height * 0.6607,
      )
      ..cubicTo(
        width * 0.1212,
        height * 0.6744,
        width * 0.1221,
        height * 0.683,
        width * 0.1221,
        height * 0.683,
      )
      ..cubicTo(
        width * 0.1221,
        height * 0.683,
        width * 0.1117,
        height * 0.657,
        width * 0.0956,
        height * 0.6607,
      )
      ..cubicTo(
        width * 0.0859,
        height * 0.6905,
        width * 0.1204,
        height * 0.6968,
        width * 0.1204,
        height * 0.6968,
      )
      ..cubicTo(
        width * 0.1204,
        height * 0.6968,
        width * 0.1052,
        height * 0.7006,
        width * 0.1068,
        height * 0.7215,
      )
      ..cubicTo(
        width * 0.1341,
        height * 0.7301,
        width * 0.1308,
        height * 0.7115,
        width * 0.1308,
        height * 0.7115,
      )
      ..cubicTo(
        width * 0.1308,
        height * 0.7115,
        width * 0.1251,
        height * 0.7306,
        width * 0.1448,
        height * 0.7415,
      )
      ..cubicTo(
        width * 0.1581,
        height * 0.7252,
        width * 0.1522,
        height * 0.6882,
        width * 0.1522,
        height * 0.6882,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors.first))
      ..drawPath(path5, paintCreator(customColors[2]))
      ..drawPath(path6, paintCreator(customColors[3]))
      ..drawPath(path7, paintCreator(customColors[4]))
      ..drawPath(path8, paintCreator(customColors[4]))
      ..drawPath(path9, paintCreator(customColors[4]))
      ..drawPath(path10, paintCreator(customColors[5]))
      ..drawPath(path11, paintCreator(customColors[4]))
      ..drawPath(path12, paintCreator())
      ..drawPath(path13, paintCreator(customColors.first))
      ..drawPath(path14, paintCreator(customColors[4]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
