// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of the Falkland Islands.
///
/// Draws the ram above the ship Desire on a blue shield.
final class FlkPainter extends UnionJackPainter {
  /// Creates a new instance of [FlkPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.721;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.0614, height * 0.8137)
      ..cubicTo(
        width * 0.0874,
        height * 0.7787,
        width * 0.1054,
        height * 0.7438,
        width * 0.1265,
        height * 0.7332,
      )
      ..cubicTo(
        width * 0.1476,
        height * 0.7226,
        width * 0.2659,
        height * 0.7311,
        width * 0.2889,
        height * 0.7501,
      )
      ..cubicTo(
        width * 0.312,
        height * 0.7692,
        width * 0.3002,
        height * 0.8676,
        width * 0.2547,
        height * 0.9227,
      )
      ..cubicTo(
        width * 0.2093,
        height * 0.9777,
        width * 0.1244,
        height * 0.9989,
        width * 0.0926,
        height * 0.9946,
      )
      ..cubicTo(
        width * 0.0609,
        height * 0.9904,
        width * 0.0403,
        height * 0.9491,
        width * 0.0345,
        height * 0.9343,
      )
      ..cubicTo(
        width * 0.0287,
        height * 0.9194,
        width * 0.048,
        height * 0.9142,
        width * 0.0926,
        height * 0.9237,
      )
      ..cubicTo(
        width * 0.1373,
        height * 0.9333,
        width * 0.2033,
        height * 0.8518,
        width * 0.2018,
        height * 0.8221,
      )
      ..cubicTo(
        width * 0.1637,
        height * 0.802,
        width * 0.1302,
        height * 0.8179,
        width * 0.1154,
        height * 0.8422,
      )
      ..cubicTo(
        width * 0.1006,
        height * 0.8667,
        width * 0.0614,
        height * 0.8137,
        width * 0.0614,
        height * 0.8137,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.0023, height * 0.8846)
      ..cubicTo(
        width * 0.0085,
        height * 0.9043,
        width * 0.034,
        height * 0.9512,
        width * 0.0614,
        height * 0.9772,
      )
      ..cubicTo(
        width * 0.0481,
        height * 0.9194,
        width * 0.108,
        height * 0.9375,
        width * 0.1035,
        height * 0.9608,
      )
      ..cubicTo(
        width * 0.1241,
        height * 0.965,
        width * 0.098,
        height * 0.928,
        width * 0.0927,
        height * 0.9068,
      )
      ..cubicTo(
        width * 0.0874,
        height * 0.8857,
        width * 0.0918,
        height * 0.8444,
        width * 0.0434,
        height * 0.8465,
      )
      ..cubicTo(
        width * -0.0051,
        height * 0.8486,
        width * -0.0022,
        height * 0.8705,
        width * 0.0023,
        height * 0.8846,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.9385, height * 0.8137)
      ..cubicTo(
        width * 0.9126,
        height * 0.7787,
        width * 0.8945,
        height * 0.7438,
        width * 0.8735,
        height * 0.7332,
      )
      ..cubicTo(
        width * 0.8523,
        height * 0.7226,
        width * 0.734,
        height * 0.7311,
        width * 0.7109,
        height * 0.7501,
      )
      ..cubicTo(
        width * 0.6879,
        height * 0.7692,
        width * 0.6997,
        height * 0.8676,
        width * 0.7451,
        height * 0.9227,
      )
      ..cubicTo(
        width * 0.7906,
        height * 0.9777,
        width * 0.8755,
        height * 0.9989,
        width * 0.9072,
        height * 0.9946,
      )
      ..cubicTo(
        width * 0.939,
        height * 0.9904,
        width * 0.9588,
        height * 0.9491,
        width * 0.9646,
        height * 0.9343,
      )
      ..cubicTo(
        width * 0.9705,
        height * 0.9194,
        width * 0.9511,
        height * 0.9142,
        width * 0.9065,
        height * 0.9237,
      )
      ..cubicTo(
        width * 0.8618,
        height * 0.9333,
        width * 0.7965,
        height * 0.8518,
        width * 0.798,
        height * 0.8221,
      )
      ..cubicTo(
        width * 0.8362,
        height * 0.802,
        width * 0.8696,
        height * 0.8179,
        width * 0.8845,
        height * 0.8422,
      )
      ..cubicTo(
        width * 0.8993,
        height * 0.8667,
        width * 0.9385,
        height * 0.8137,
        width * 0.9385,
        height * 0.8137,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.9664, height * 0.8677)
      ..cubicTo(
        width * 0.9733,
        height * 0.8465,
        width * 0.9385,
        height * 0.8137,
        width * 0.9165,
        height * 0.7821,
      )
      ..cubicTo(
        width * 0.8269,
        height * 0.9035,
        width * 0.5905,
        height * 0.9193,
        width * 0.5,
        height * 0.9195,
      )
      ..cubicTo(
        width * 0.4095,
        height * 0.9193,
        width * 0.1732,
        height * 0.9035,
        width * 0.0834,
        height * 0.7821,
      )
      ..cubicTo(
        width * 0.0614,
        height * 0.8137,
        width * 0.0267,
        height * 0.8465,
        width * 0.0335,
        height * 0.8677,
      )
      ..cubicTo(
        width * 0.0404,
        height * 0.8888,
        width * 0.2531,
        height * 0.999,
        width * 0.4985,
        height * 0.9999,
      )
      ..lineTo(width * 0.4985, height)
      ..lineTo(width * 0.5, height * 0.9999)
      ..lineTo(width * 0.5015, height)
      ..lineTo(width * 0.5015, height * 0.9999)
      ..cubicTo(
        width * 0.7468,
        height * 0.999,
        width * 0.9596,
        height * 0.8888,
        width * 0.9664,
        height * 0.8677,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.9977, height * 0.8846)
      ..cubicTo(
        width * 0.9915,
        height * 0.9043,
        width * 0.9659,
        height * 0.9512,
        width * 0.9385,
        height * 0.9772,
      )
      ..cubicTo(
        width * 0.9519,
        height * 0.9194,
        width * 0.892,
        height * 0.9375,
        width * 0.8964,
        height * 0.9608,
      )
      ..cubicTo(
        width * 0.8758,
        height * 0.965,
        width * 0.902,
        height * 0.928,
        width * 0.9072,
        height * 0.9068,
      )
      ..cubicTo(
        width * 0.9126,
        height * 0.8857,
        width * 0.9082,
        height * 0.8444,
        width * 0.9566,
        height * 0.8465,
      )
      ..cubicTo(
        width * 1.005,
        height * 0.8486,
        width * 1.0022,
        height * 0.8705,
        width * 0.9977,
        height * 0.8846,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.5012, 0)
      ..lineTo(width * 0.0607, 0)
      ..lineTo(width * 0.0607, height * 0.4404)
      ..cubicTo(
        width * 0.0607,
        height * 0.8271,
        width * 0.5012,
        height * 0.9118,
        width * 0.5012,
        height * 0.9118,
      )
      ..cubicTo(
        width * 0.5012,
        height * 0.9118,
        width * 0.9417,
        height * 0.8271,
        width * 0.9417,
        height * 0.4404,
      )
      ..lineTo(width * 0.9417, 0)
      ..lineTo(width * 0.5012, 0)
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.5011, height * 0.8846)
      ..cubicTo(
        width * 0.4525,
        height * 0.8741,
        width * 0.092,
        height * 0.7843,
        width * 0.092,
        height * 0.4409,
      )
      ..lineTo(width * 0.092, height * 0.0267)
      ..lineTo(width * 0.9103, height * 0.0267)
      ..lineTo(width * 0.9103, height * 0.4409)
      ..cubicTo(
        width * 0.9103,
        height * 0.7811,
        width * 0.5465,
        height * 0.8743,
        width * 0.5011,
        height * 0.8846,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.3261, height * 0.4093)
      ..cubicTo(
        width * 0.3363,
        height * 0.3797,
        width * 0.3437,
        height * 0.3384,
        width * 0.3187,
        height * 0.332,
      )
      ..cubicTo(
        width * 0.2937,
        height * 0.3257,
        width * 0.2496,
        height * 0.3066,
        width * 0.2349,
        height * 0.2728,
      )
      ..cubicTo(
        width * 0.2203,
        height * 0.2389,
        width * 0.2277,
        height * 0.1606,
        width * 0.2144,
        height * 0.1553,
      )
      ..cubicTo(
        width * 0.2012,
        height * 0.15,
        width * 0.1616,
        height * 0.1627,
        width * 0.1381,
        height * 0.1415,
      )
      ..cubicTo(
        width * 0.1146,
        height * 0.1204,
        width * 0.1293,
        height * 0.1129,
        width * 0.1455,
        height * 0.1055,
      )
      ..cubicTo(
        width * 0.1616,
        height * 0.0981,
        width * 0.2071,
        height * 0.0812,
        width * 0.2042,
        height * 0.0748,
      )
      ..cubicTo(
        width * 0.2013,
        height * 0.0684,
        width * 0.2071,
        height * 0.0583,
        width * 0.2349,
        height * 0.0515,
      )
      ..cubicTo(
        width * 0.2864,
        height * 0.0388,
        width * 0.3275,
        height * 0.0716,
        width * 0.3436,
        height * 0.0843,
      )
      ..cubicTo(
        width * 0.3598,
        height * 0.097,
        width * 0.4024,
        height * 0.114,
        width * 0.4214,
        height * 0.115,
      )
      ..cubicTo(
        width * 0.4405,
        height * 0.1161,
        width * 0.671,
        height * 0.1182,
        width * 0.6975,
        height * 0.1203,
      )
      ..cubicTo(
        width * 0.7239,
        height * 0.1224,
        width * 0.7915,
        height * 0.1351,
        width * 0.7856,
        height * 0.1933,
      )
      ..cubicTo(
        width * 0.7798,
        height * 0.2515,
        width * 0.7683,
        height * 0.3077,
        width * 0.7572,
        height * 0.3182,
      )
      ..cubicTo(
        width * 0.746,
        height * 0.3288,
        width * 0.7386,
        height * 0.332,
        width * 0.7386,
        height * 0.332,
      )
      ..cubicTo(
        width * 0.7386,
        height * 0.332,
        width * 0.7504,
        height * 0.3786,
        width * 0.7489,
        height * 0.387,
      )
      ..cubicTo(
        width * 0.7474,
        height * 0.3955,
        width * 0.7269,
        height * 0.3986,
        width * 0.7254,
        height * 0.3838,
      )
      ..cubicTo(
        width * 0.7239,
        height * 0.369,
        width * 0.7166,
        height * 0.3341,
        width * 0.7166,
        height * 0.3341,
      )
      ..lineTo(width * 0.6769, height * 0.3289)
      ..cubicTo(
        width * 0.6769,
        height * 0.3289,
        width * 0.6784,
        height * 0.3797,
        width * 0.6652,
        height * 0.3945,
      )
      ..cubicTo(
        width * 0.6519,
        height * 0.4093,
        width * 0.6182,
        height * 0.3998,
        width * 0.627,
        height * 0.3892,
      )
      ..cubicTo(
        width * 0.6359,
        height * 0.3787,
        width * 0.6403,
        height * 0.3691,
        width * 0.6403,
        height * 0.3564,
      )
      ..cubicTo(
        width * 0.6403,
        height * 0.3438,
        width * 0.6359,
        height * 0.3247,
        width * 0.627,
        height * 0.3226,
      )
      ..cubicTo(
        width * 0.6182,
        height * 0.3205,
        width * 0.5742,
        height * 0.3331,
        width * 0.5419,
        height * 0.3331,
      )
      ..cubicTo(
        width * 0.5096,
        height * 0.3331,
        width * 0.4377,
        height * 0.3183,
        width * 0.4244,
        height * 0.3268,
      )
      ..cubicTo(
        width * 0.4112,
        height * 0.3352,
        width * 0.3936,
        height * 0.3787,
        width * 0.3848,
        height * 0.403,
      )
      ..cubicTo(
        width * 0.3759,
        height * 0.4273,
        width * 0.3613,
        height * 0.4125,
        width * 0.3628,
        height * 0.4009,
      )
      ..cubicTo(
        width * 0.3643,
        height * 0.3892,
        width * 0.3701,
        height * 0.3501,
        width * 0.3613,
        height * 0.3564,
      )
      ..cubicTo(
        width * 0.3525,
        height * 0.3628,
        width * 0.3555,
        height * 0.3924,
        width * 0.3495,
        height * 0.402,
      )
      ..cubicTo(
        width * 0.3436,
        height * 0.4114,
        width * 0.3261,
        height * 0.4093,
        width * 0.3261,
        height * 0.4093,
      )
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.2218, height * 0.3564)
      ..cubicTo(
        width * 0.2218,
        height * 0.3564,
        width * 0.2408,
        height * 0.4354,
        width * 0.3128,
        height * 0.4696,
      )
      ..cubicTo(
        width * 0.3848,
        height * 0.5039,
        width * 0.6867,
        height * 0.4951,
        width * 0.7386,
        height * 0.4686,
      )
      ..cubicTo(
        width * 0.7905,
        height * 0.4421,
        width * 0.8383,
        height * 0.3775,
        width * 0.8383,
        height * 0.3775,
      )
      ..cubicTo(
        width * 0.8383,
        height * 0.3775,
        width * 0.7958,
        height * 0.3775,
        width * 0.7811,
        height * 0.3659,
      )
      ..cubicTo(
        width * 0.7386,
        height * 0.3828,
        width * 0.7136,
        height * 0.3754,
        width * 0.7048,
        height * 0.3648,
      )
      ..cubicTo(
        width * 0.6711,
        height * 0.3891,
        width * 0.674,
        height * 0.3743,
        width * 0.6696,
        height * 0.3669,
      )
      ..cubicTo(
        width * 0.6403,
        height * 0.3912,
        width * 0.5976,
        height * 0.3764,
        width * 0.5845,
        height * 0.368,
      )
      ..cubicTo(
        width * 0.5551,
        height * 0.3817,
        width * 0.5111,
        height * 0.3732,
        width * 0.5022,
        height * 0.3648,
      )
      ..cubicTo(
        width * 0.4685,
        height * 0.3859,
        width * 0.4185,
        height * 0.3806,
        width * 0.4083,
        height * 0.3711,
      )
      ..cubicTo(
        width * 0.3863,
        height * 0.3976,
        width * 0.354,
        height * 0.3881,
        width * 0.3363,
        height * 0.3796,
      )
      ..cubicTo(
        width * 0.3113,
        height * 0.3965,
        width * 0.3011,
        height * 0.3775,
        width * 0.2922,
        height * 0.3659,
      )
      ..cubicTo(
        width * 0.2717,
        height * 0.3913,
        width * 0.2379,
        height * 0.3733,
        width * 0.2218,
        height * 0.3564,
      )
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.075, height * 0.4559)
      ..cubicTo(
        width * 0.075,
        height * 0.4559,
        width * 0.1205,
        height * 0.4601,
        width * 0.1557,
        height * 0.4369,
      )
      ..cubicTo(
        width * 0.1909,
        height * 0.4136,
        width * 0.2512,
        height * 0.4019,
        width * 0.2951,
        height * 0.4369,
      )
      ..cubicTo(
        width * 0.3392,
        height * 0.4718,
        width * 0.3891,
        height * 0.4707,
        width * 0.4273,
        height * 0.4421,
      )
      ..cubicTo(
        width * 0.4654,
        height * 0.4136,
        width * 0.5227,
        height * 0.4,
        width * 0.577,
        height * 0.4391,
      )
      ..cubicTo(
        width * 0.6313,
        height * 0.4782,
        width * 0.6783,
        height * 0.4614,
        width * 0.7106,
        height * 0.4391,
      )
      ..cubicTo(
        width * 0.743,
        height * 0.4167,
        width * 0.8104,
        height * 0.4022,
        width * 0.8545,
        height * 0.4391,
      )
      ..cubicTo(
        width * 0.8986,
        height * 0.476,
        width * 0.9294,
        height * 0.456,
        width * 0.9294,
        height * 0.456,
      )
      ..lineTo(width * 0.9103, height * 0.5534)
      ..cubicTo(
        width * 0.9103,
        height * 0.5534,
        width * 0.8971,
        height * 0.5555,
        width * 0.856,
        height * 0.5301,
      )
      ..cubicTo(
        width * 0.8149,
        height * 0.5047,
        width * 0.7576,
        height * 0.4951,
        width * 0.7166,
        height * 0.5269,
      )
      ..cubicTo(
        width * 0.6754,
        height * 0.5587,
        width * 0.6138,
        height * 0.5597,
        width * 0.5698,
        height * 0.529,
      )
      ..cubicTo(
        width * 0.5257,
        height * 0.4983,
        width * 0.4743,
        height * 0.5015,
        width * 0.4362,
        height * 0.5258,
      )
      ..cubicTo(
        width * 0.398,
        height * 0.5501,
        width * 0.332,
        height * 0.5618,
        width * 0.2791,
        height * 0.5258,
      )
      ..cubicTo(
        width * 0.2263,
        height * 0.4898,
        width * 0.1807,
        height * 0.5078,
        width * 0.1543,
        height * 0.5269,
      )
      ..cubicTo(
        width * 0.1279,
        height * 0.5459,
        width * 0.0921,
        height * 0.5534,
        width * 0.0921,
        height * 0.5534,
      )
      ..lineTo(width * 0.075, height * 0.4559)
      ..close()
      ..moveTo(width * 0.1202, height * 0.6297)
      ..cubicTo(
        width * 0.1318,
        height * 0.6268,
        width * 0.1443,
        height * 0.6222,
        width * 0.1557,
        height * 0.6146,
      )
      ..cubicTo(
        width * 0.1909,
        height * 0.5913,
        width * 0.2512,
        height * 0.5797,
        width * 0.2951,
        height * 0.6146,
      )
      ..cubicTo(
        width * 0.3392,
        height * 0.6496,
        width * 0.3891,
        height * 0.6485,
        width * 0.4273,
        height * 0.6199,
      )
      ..cubicTo(
        width * 0.4654,
        height * 0.5913,
        width * 0.5227,
        height * 0.5778,
        width * 0.577,
        height * 0.6169,
      )
      ..cubicTo(
        width * 0.6313,
        height * 0.6559,
        width * 0.6783,
        height * 0.6392,
        width * 0.7106,
        height * 0.6169,
      )
      ..cubicTo(
        width * 0.743,
        height * 0.5945,
        width * 0.8104,
        height * 0.5799,
        width * 0.8545,
        height * 0.6169,
      )
      ..cubicTo(
        width * 0.8633,
        height * 0.6242,
        width * 0.8716,
        height * 0.6293,
        width * 0.8792,
        height * 0.6327,
      )
      ..cubicTo(
        width * 0.8868,
        height * 0.6538,
        width * 0.8455,
        height * 0.7017,
        width * 0.8398,
        height * 0.6991,
      )
      ..cubicTo(
        width * 0.8009,
        height * 0.6806,
        width * 0.7525,
        height * 0.6768,
        width * 0.7166,
        height * 0.7045,
      )
      ..cubicTo(
        width * 0.6754,
        height * 0.7363,
        width * 0.6138,
        height * 0.7373,
        width * 0.5698,
        height * 0.7066,
      )
      ..cubicTo(
        width * 0.5257,
        height * 0.6759,
        width * 0.4743,
        height * 0.6791,
        width * 0.4362,
        height * 0.7035,
      )
      ..cubicTo(
        width * 0.398,
        height * 0.7278,
        width * 0.332,
        height * 0.7394,
        width * 0.2791,
        height * 0.7035,
      )
      ..cubicTo(
        width * 0.2334,
        height * 0.6723,
        width * 0.1931,
        height * 0.6816,
        width * 0.166,
        height * 0.697,
      )
      ..cubicTo(
        width * 0.1618,
        height * 0.6996,
        width * 0.0959,
        height * 0.6357,
        width * 0.1202,
        height * 0.6297,
      )
      ..close()
      ..moveTo(width * 0.2349, height * 0.7685)
      ..cubicTo(
        width * 0.2559,
        height * 0.7694,
        width * 0.2769,
        height * 0.7759,
        width * 0.2952,
        height * 0.7904,
      )
      ..cubicTo(
        width * 0.3393,
        height * 0.8253,
        width * 0.3892,
        height * 0.8243,
        width * 0.4273,
        height * 0.7957,
      )
      ..cubicTo(
        width * 0.4655,
        height * 0.7671,
        width * 0.5228,
        height * 0.7535,
        width * 0.5771,
        height * 0.7926,
      )
      ..cubicTo(
        width * 0.6314,
        height * 0.8316,
        width * 0.6784,
        height * 0.8149,
        width * 0.7107,
        height * 0.7926,
      )
      ..cubicTo(
        width * 0.7225,
        height * 0.7845,
        width * 0.7389,
        height * 0.7773,
        width * 0.7572,
        height * 0.7734,
      )
      ..cubicTo(
        width * 0.6966,
        height * 0.836,
        width * 0.5242,
        height * 0.8995,
        width * 0.5012,
        height * 0.8994,
      )
      ..cubicTo(
        width * 0.4779,
        height * 0.8994,
        width * 0.2908,
        height * 0.8402,
        width * 0.2349,
        height * 0.7685,
      )
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.1148, height * 0.6147)
      ..cubicTo(
        width * 0.1059,
        height * 0.6225,
        width * 0.2277,
        height * 0.6609,
        width * 0.2277,
        height * 0.6609,
      )
      ..cubicTo(
        width * 0.2277,
        height * 0.6609,
        width * 0.2385,
        height * 0.7026,
        width * 0.2482,
        height * 0.6973,
      )
      ..cubicTo(
        width * 0.258,
        height * 0.692,
        width * 0.2996,
        height * 0.6978,
        width * 0.2996,
        height * 0.6978,
      )
      ..cubicTo(
        width * 0.2996,
        height * 0.6978,
        width * 0.3096,
        height * 0.8222,
        width * 0.5022,
        height * 0.8222,
      )
      ..cubicTo(
        width * 0.6949,
        height * 0.8222,
        width * 0.7466,
        height * 0.6892,
        width * 0.7466,
        height * 0.6892,
      )
      ..cubicTo(
        width * 0.7466,
        height * 0.6892,
        width * 0.8162,
        height * 0.6898,
        width * 0.8243,
        height * 0.6929,
      )
      ..cubicTo(
        width * 0.8325,
        height * 0.6959,
        width * 0.8076,
        height * 0.6764,
        width * 0.818,
        height * 0.6609,
      )
      ..cubicTo(
        width * 0.8282,
        height * 0.6454,
        width * 0.8532,
        height * 0.6274,
        width * 0.8385,
        height * 0.6232,
      )
      ..cubicTo(
        width * 0.8239,
        height * 0.619,
        width * 0.6683,
        height * 0.6497,
        width * 0.6683,
        height * 0.6497,
      )
      ..cubicTo(
        width * 0.6683,
        height * 0.6497,
        width * 0.6712,
        height * 0.7502,
        width * 0.5023,
        height * 0.7502,
      )
      ..cubicTo(
        width * 0.3335,
        height * 0.7502,
        width * 0.3556,
        height * 0.6846,
        width * 0.3556,
        height * 0.6846,
      )
      ..cubicTo(
        width * 0.3556,
        height * 0.6846,
        width * 0.1285,
        height * 0.6026,
        width * 0.1148,
        height * 0.6147,
      )
      ..close();

    final path12 = Path()
      ..moveTo(width * 0.3055, height * 0.4982)
      ..cubicTo(
        width * 0.3055,
        height * 0.4982,
        width * 0.3187,
        height * 0.5173,
        width * 0.3627,
        height * 0.5088,
      )
      ..cubicTo(
        width * 0.4068,
        height * 0.5003,
        width * 0.4082,
        height * 0.4738,
        width * 0.4082,
        height * 0.4738,
      )
      ..lineTo(width * 0.3055, height * 0.4982)
      ..close()
      ..moveTo(width * 0.5477, height * 0.4559)
      ..lineTo(width * 0.4479, height * 0.4739)
      ..cubicTo(
        width * 0.4479,
        height * 0.4739,
        width * 0.4582,
        height * 0.4974,
        width * 0.4957,
        height * 0.492,
      )
      ..cubicTo(
        width * 0.5331,
        height * 0.4866,
        width * 0.5477,
        height * 0.4559,
        width * 0.5477,
        height * 0.4559,
      )
      ..close()
      ..moveTo(width * 0.5918, height * 0.4898)
      ..cubicTo(
        width * 0.5918,
        height * 0.4898,
        width * 0.6153,
        height * 0.5099,
        width * 0.6476,
        height * 0.5025,
      )
      ..cubicTo(
        width * 0.6799,
        height * 0.4951,
        width * 0.7004,
        height * 0.4675,
        width * 0.7004,
        height * 0.4675,
      )
      ..lineTo(width * 0.5918, height * 0.4898)
      ..close()
      ..moveTo(width * 0.4229, height * 0.511)
      ..lineTo(width * 0.297, height * 0.5359)
      ..cubicTo(
        width * 0.297,
        height * 0.5359,
        width * 0.2849,
        height * 0.5522,
        width * 0.2893,
        height * 0.5691,
      )
      ..cubicTo(
        width * 0.2937,
        height * 0.586,
        width * 0.3055,
        height * 0.6019,
        width * 0.3055,
        height * 0.6019,
      )
      ..cubicTo(
        width * 0.3055,
        height * 0.6019,
        width * 0.3172,
        height * 0.5808,
        width * 0.3466,
        height * 0.5765,
      )
      ..cubicTo(
        width * 0.376,
        height * 0.5722,
        width * 0.3965,
        height * 0.5892,
        width * 0.3965,
        height * 0.5892,
      )
      ..cubicTo(
        width * 0.3965,
        height * 0.5892,
        width * 0.3852,
        height * 0.5505,
        width * 0.4229,
        height * 0.511,
      )
      ..close()
      ..moveTo(width * 0.4479, height * 0.511)
      ..cubicTo(
        width * 0.4479,
        height * 0.511,
        width * 0.4223,
        height * 0.5215,
        width * 0.4229,
        height * 0.5533,
      )
      ..cubicTo(
        width * 0.4233,
        height * 0.5707,
        width * 0.4479,
        height * 0.5927,
        width * 0.4479,
        height * 0.5927,
      )
      ..cubicTo(
        width * 0.4479,
        height * 0.5927,
        width * 0.4612,
        height * 0.5755,
        width * 0.4891,
        height * 0.5692,
      )
      ..cubicTo(
        width * 0.517,
        height * 0.5628,
        width * 0.5478,
        height * 0.5808,
        width * 0.5478,
        height * 0.5808,
      )
      ..cubicTo(
        width * 0.5478,
        height * 0.5808,
        width * 0.5363,
        height * 0.5551,
        width * 0.5405,
        height * 0.5353,
      )
      ..cubicTo(
        width * 0.5447,
        height * 0.5154,
        width * 0.564,
        height * 0.4921,
        width * 0.564,
        height * 0.4921,
      )
      ..lineTo(width * 0.4479, height * 0.511)
      ..close()
      ..moveTo(width * 0.583, height * 0.5268)
      ..cubicTo(
        width * 0.583,
        height * 0.5268,
        width * 0.5741,
        height * 0.5407,
        width * 0.5741,
        height * 0.5565,
      )
      ..cubicTo(
        width * 0.5741,
        height * 0.5724,
        width * 0.5918,
        height * 0.602,
        width * 0.5918,
        height * 0.602,
      )
      ..cubicTo(
        width * 0.5918,
        height * 0.602,
        width * 0.6006,
        height * 0.5797,
        width * 0.6329,
        height * 0.5745,
      )
      ..cubicTo(
        width * 0.6653,
        height * 0.5692,
        width * 0.6828,
        height * 0.585,
        width * 0.6828,
        height * 0.585,
      )
      ..cubicTo(
        width * 0.6828,
        height * 0.585,
        width * 0.672,
        height * 0.5694,
        width * 0.6767,
        height * 0.5465,
      )
      ..cubicTo(
        width * 0.6814,
        height * 0.5236,
        width * 0.7137,
        height * 0.5041,
        width * 0.7137,
        height * 0.5041,
      )
      ..lineTo(width * 0.583, height * 0.5268)
      ..close()
      ..moveTo(width * 0.4009, height * 0.5967)
      ..lineTo(width * 0.2909, height * 0.6115)
      ..cubicTo(
        width * 0.2909,
        height * 0.6115,
        width * 0.3041,
        height * 0.6369,
        width * 0.3459,
        height * 0.6337,
      )
      ..cubicTo(
        width * 0.3877,
        height * 0.6306,
        width * 0.4009,
        height * 0.5967,
        width * 0.4009,
        height * 0.5967,
      )
      ..close()
      ..moveTo(width * 0.5536, height * 0.5927)
      ..cubicTo(
        width * 0.5536,
        height * 0.5927,
        width * 0.4479,
        height * 0.5968,
        width * 0.4479,
        height * 0.602,
      )
      ..cubicTo(
        width * 0.4479,
        height * 0.6072,
        width * 0.4582,
        height * 0.6264,
        width * 0.4934,
        height * 0.6222,
      )
      ..cubicTo(
        width * 0.5286,
        height * 0.618,
        width * 0.5536,
        height * 0.5927,
        width * 0.5536,
        height * 0.5927,
      )
      ..close()
      ..moveTo(width * 0.6902, height * 0.5967)
      ..lineTo(width * 0.586, height * 0.6135)
      ..cubicTo(
        width * 0.586,
        height * 0.6135,
        width * 0.6006,
        height * 0.6327,
        width * 0.6381,
        height * 0.6274,
      )
      ..cubicTo(
        width * 0.6754,
        height * 0.6221,
        width * 0.6902,
        height * 0.5967,
        width * 0.6902,
        height * 0.5967,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator())
      ..drawPath(path4, paintCreator(customColors[1]))
      ..drawPath(path5, paintCreator(customColors.first))
      ..drawPath(path6, paintCreator(customColors[2]))
      ..drawPath(path7, paintCreator(customColors[3]))
      ..drawPath(path8, paintCreator(customColors[2]))
      ..drawPath(path9, paintCreator(customColors[4]))
      ..drawPath(path10, paintCreator(customColors[2]))
      ..drawPath(path11, paintCreator(customColors[5]))
      ..drawPath(path12, paintCreator(customColors[6]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
