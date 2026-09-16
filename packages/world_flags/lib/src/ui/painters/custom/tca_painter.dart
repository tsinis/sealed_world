// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of the Turks and Caicos Islands.
///
/// Draws a conch, a spiny lobster and a Turk's head cactus on a gold shield.
final class TcaPainter extends UnionJackPainter {
  /// Creates a new instance of [TcaPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.8277;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(0, 0)
      ..lineTo(0, height * 0.3097)
      ..cubicTo(
        0,
        height * 0.7403,
        width * 0.2899,
        height * 0.8975,
        width * 0.5178,
        height,
      )
      ..cubicTo(
        width * 0.7457,
        height * 0.8975,
        width,
        height * 0.7403,
        width,
        height * 0.3097,
      )
      ..lineTo(width, 0)
      ..lineTo(0, 0)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.5178, height * 0.95)
      ..cubicTo(
        width * 0.2966,
        height * 0.8477,
        width * 0.0419,
        height * 0.7,
        width * 0.0419,
        height * 0.3097,
      )
      ..lineTo(width * 0.0419, height * 0.0554)
      ..lineTo(width * 0.9654, height * 0.0554)
      ..lineTo(width * 0.9654, height * 0.3097)
      ..cubicTo(
        width * 0.9654,
        height * 0.7,
        width * 0.7389,
        height * 0.8477,
        width * 0.5178,
        height * 0.95,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.6982, height * 0.7467)
      ..cubicTo(
        width * 0.692,
        height * 0.7013,
        width * 0.6464,
        height * 0.5584,
        width * 0.5931,
        height * 0.5156,
      )
      ..cubicTo(
        width * 0.5398,
        height * 0.4727,
        width * 0.5178,
        height * 0.5059,
        width * 0.5178,
        height * 0.5059,
      )
      ..cubicTo(
        width * 0.5178,
        height * 0.5059,
        width * 0.4958,
        height * 0.4728,
        width * 0.4425,
        height * 0.5156,
      )
      ..cubicTo(
        width * 0.3891,
        height * 0.5585,
        width * 0.3436,
        height * 0.7013,
        width * 0.3373,
        height * 0.7467,
      )
      ..cubicTo(
        width * 0.331,
        height * 0.7922,
        width * 0.3435,
        height * 0.8026,
        width * 0.3719,
        height * 0.8026,
      )
      ..cubicTo(
        width * 0.3844,
        height * 0.8247,
        width * 0.433,
        height * 0.8285,
        width * 0.433,
        height * 0.8285,
      )
      ..cubicTo(
        width * 0.433,
        height * 0.8285,
        width * 0.4879,
        height * 0.8584,
        width * 0.5178,
        height * 0.8285,
      )
      ..cubicTo(
        width * 0.5476,
        height * 0.8584,
        width * 0.6025,
        height * 0.8285,
        width * 0.6025,
        height * 0.8285,
      )
      ..cubicTo(
        width * 0.6025,
        height * 0.8285,
        width * 0.6511,
        height * 0.8246,
        width * 0.6637,
        height * 0.8026,
      )
      ..cubicTo(
        width * 0.692,
        height * 0.8026,
        width * 0.7046,
        height * 0.7922,
        width * 0.6982,
        height * 0.7467,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.5978, height * 0.4635)
      ..cubicTo(
        width * 0.5978,
        height * 0.503,
        width * 0.6105,
        height * 0.535,
        width * 0.5194,
        height * 0.535,
      )
      ..cubicTo(
        width * 0.4283,
        height * 0.535,
        width * 0.441,
        height * 0.503,
        width * 0.441,
        height * 0.4635,
      )
      ..cubicTo(
        width * 0.441,
        height * 0.4239,
        width * 0.4761,
        height * 0.3918,
        width * 0.5194,
        height * 0.3918,
      )
      ..cubicTo(
        width * 0.5628,
        height * 0.3918,
        width * 0.5978,
        height * 0.4239,
        width * 0.5978,
        height * 0.4635,
      )
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.3499, height * 0.4117)
      ..cubicTo(
        width * 0.3248,
        height * 0.4468,
        width * 0.2855,
        height * 0.4221,
        width * 0.2683,
        height * 0.3805,
      )
      ..cubicTo(
        width * 0.2512,
        height * 0.339,
        width * 0.1821,
        height * 0.3272,
        width * 0.157,
        height * 0.3156,
      )
      ..cubicTo(
        width * 0.1319,
        height * 0.304,
        width * 0.1256,
        height * 0.2844,
        width * 0.157,
        height * 0.2701,
      )
      ..cubicTo(
        width * 0.1883,
        height * 0.2558,
        width * 0.1695,
        height * 0.2376,
        width * 0.1915,
        height * 0.2325,
      )
      ..cubicTo(
        width * 0.1633,
        height * 0.2273,
        width * 0.138,
        height * 0.2403,
        width * 0.1357,
        height * 0.2325,
      )
      ..cubicTo(
        width * 0.1335,
        height * 0.2247,
        width * 0.1554,
        height * 0.2031,
        width * 0.1915,
        height * 0.1996,
      )
      ..cubicTo(
        width * 0.1617,
        height * 0.1688,
        width * 0.179,
        height * 0.1039,
        width * 0.1915,
        height * 0.1026,
      )
      ..cubicTo(
        width * 0.2041,
        height * 0.1012,
        width * 0.2298,
        height * 0.1208,
        width * 0.2428,
        height * 0.1402,
      )
      ..cubicTo(
        width * 0.2559,
        height * 0.1597,
        width * 0.2935,
        height * 0.1558,
        width * 0.2904,
        height * 0.1831,
      )
      ..cubicTo(
        width * 0.2983,
        height * 0.1896,
        width * 0.325,
        height * 0.1857,
        width * 0.3501,
        height * 0.2195,
      )
      ..cubicTo(
        width * 0.375,
        height * 0.2533,
        width * 0.3499,
        height * 0.4117,
        width * 0.3499,
        height * 0.4117,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.3611, height * 0.4065)
      ..cubicTo(
        width * 0.3256,
        height * 0.4088,
        width * 0.3123,
        height * 0.3832,
        width * 0.306,
        height * 0.3455,
      )
      ..cubicTo(
        width * 0.2998,
        height * 0.3079,
        width * 0.2354,
        height * 0.3219,
        width * 0.2652,
        height * 0.2656,
      )
      ..cubicTo(
        width * 0.295,
        height * 0.2092,
        width * 0.3062,
        height * 0.2434,
        width * 0.3092,
        height * 0.1997,
      )
      ..cubicTo(
        width * 0.3122,
        height * 0.1559,
        width * 0.3295,
        height * 0.1196,
        width * 0.3451,
        height * 0.1196,
      )
      ..cubicTo(
        width * 0.3608,
        height * 0.1196,
        width * 0.3812,
        height * 0.1598,
        width * 0.3891,
        height * 0.1768,
      )
      ..cubicTo(
        width * 0.3971,
        height * 0.1937,
        width * 0.4272,
        height * 0.1898,
        width * 0.4403,
        height * 0.2482,
      )
      ..cubicTo(
        width * 0.4535,
        height * 0.3066,
        width * 0.4378,
        height * 0.3495,
        width * 0.4206,
        height * 0.3625,
      )
      ..cubicTo(
        width * 0.4033,
        height * 0.3754,
        width * 0.3955,
        height * 0.3774,
        width * 0.3923,
        height * 0.392,
      )
      ..cubicTo(
        width * 0.3891,
        height * 0.4065,
        width * 0.3844,
        height * 0.405,
        width * 0.3611,
        height * 0.4065,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.7249, height * 0.2078)
      ..cubicTo(
        width * 0.7297,
        height * 0.1792,
        width * 0.7281,
        height * 0.1351,
        width * 0.7171,
        height * 0.1195,
      )
      ..cubicTo(
        width * 0.7062,
        height * 0.1039,
        width * 0.6889,
        height * 0.0948,
        width * 0.6998,
        height * 0.0923,
      )
      ..cubicTo(
        width * 0.7108,
        height * 0.0897,
        width * 0.7626,
        height * 0.1352,
        width * 0.7344,
        height * 0.2273,
      )
      ..cubicTo(
        width * 0.7061,
        height * 0.3195,
        width * 0.7249,
        height * 0.2078,
        width * 0.7249,
        height * 0.2078,
      )
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.7194, height * 0.1998)
      ..cubicTo(
        width * 0.6982,
        height * 0.1896,
        width * 0.6708,
        height * 0.1636,
        width * 0.6735,
        height * 0.1494,
      )
      ..cubicTo(
        width * 0.6762,
        height * 0.1351,
        width * 0.6966,
        height * 0.1091,
        width * 0.6998,
        height * 0.1143,
      )
      ..cubicTo(
        width * 0.703,
        height * 0.1194,
        width * 0.6904,
        height * 0.1356,
        width * 0.6998,
        height * 0.1568,
      )
      ..cubicTo(
        width * 0.7093,
        height * 0.178,
        width * 0.7139,
        height * 0.1791,
        width * 0.7267,
        height * 0.1933,
      )
      ..cubicTo(
        width * 0.7393,
        height * 0.2075,
        width * 0.7194,
        height * 0.1998,
        width * 0.7194,
        height * 0.1998,
      )
      ..close()
      ..moveTo(width * 0.7079, height * 0.2195)
      ..cubicTo(
        width * 0.6952,
        height * 0.2069,
        width * 0.5555,
        height * 0.1325,
        width * 0.5696,
        height * 0.1273,
      )
      ..cubicTo(
        width * 0.5837,
        height * 0.1222,
        width * 0.704,
        height * 0.1845,
        width * 0.723,
        height * 0.2195,
      )
      ..cubicTo(
        width * 0.7422,
        height * 0.2545,
        width * 0.7079,
        height * 0.2195,
        width * 0.7079,
        height * 0.2195,
      )
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.6998, height * 0.2415)
      ..cubicTo(
        width * 0.6487,
        height * 0.1996,
        width * 0.5225,
        height * 0.1922,
        width * 0.5288,
        height * 0.1857,
      )
      ..cubicTo(
        width * 0.5351,
        height * 0.1792,
        width * 0.6969,
        height * 0.1915,
        width * 0.7195,
        height * 0.2302,
      )
      ..cubicTo(
        width * 0.7422,
        height * 0.2688,
        width * 0.6998,
        height * 0.2415,
        width * 0.6998,
        height * 0.2415,
      )
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.6963, height * 0.2637)
      ..cubicTo(
        width * 0.6387,
        height * 0.239,
        width * 0.5379,
        height * 0.2337,
        width * 0.5286,
        height * 0.2351,
      )
      ..cubicTo(
        width * 0.5194,
        height * 0.2364,
        width * 0.6259,
        height * 0.2103,
        width * 0.702,
        height * 0.2493,
      )
      ..cubicTo(
        width * 0.7783,
        height * 0.2883,
        width * 0.6963,
        height * 0.2637,
        width * 0.6963,
        height * 0.2637,
      )
      ..close()
      ..moveTo(width * 0.6998, height * 0.2987)
      ..cubicTo(
        width * 0.6402,
        height * 0.2766,
        width * 0.5523,
        height * 0.2831,
        width * 0.5367,
        height * 0.2909,
      )
      ..cubicTo(
        width * 0.521,
        height * 0.2987,
        width * 0.5821,
        height * 0.2615,
        width * 0.6245,
        height * 0.2651,
      )
      ..cubicTo(
        width * 0.6669,
        height * 0.2688,
        width * 0.7079,
        height * 0.2761,
        width * 0.7195,
        height * 0.2829,
      )
      ..cubicTo(
        width * 0.7312,
        height * 0.2896,
        width * 0.7206,
        height * 0.3064,
        width * 0.6998,
        height * 0.2987,
      )
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.7346, height * 0.1996)
      ..cubicTo(
        width * 0.7274,
        height * 0.1677,
        width * 0.7273,
        height * 0.1407,
        width * 0.6755,
        height * 0.144,
      )
      ..cubicTo(
        width * 0.6238,
        height * 0.1472,
        width * 0.6145,
        height * 0.2272,
        width * 0.6274,
        height * 0.339,
      )
      ..cubicTo(
        width * 0.6403,
        height * 0.4507,
        width * 0.6246,
        height * 0.4872,
        width * 0.6222,
        height * 0.4936,
      )
      ..cubicTo(
        width * 0.6199,
        height * 0.5,
        width * 0.651,
        height * 0.4714,
        width * 0.6488,
        height * 0.4221,
      )
      ..cubicTo(
        width * 0.6466,
        height * 0.3727,
        width * 0.6335,
        height * 0.2642,
        width * 0.6377,
        height * 0.2243,
      )
      ..cubicTo(
        width * 0.6419,
        height * 0.1844,
        width * 0.6653,
        height * 0.1545,
        width * 0.6964,
        height * 0.1623,
      )
      ..cubicTo(
        width * 0.7276,
        height * 0.1702,
        width * 0.7205,
        height * 0.1903,
        width * 0.7196,
        height * 0.2146,
      )
      ..cubicTo(
        width * 0.7186,
        height * 0.239,
        width * 0.7346,
        height * 0.1996,
        width * 0.7346,
        height * 0.1996,
      )
      ..close();

    final path12 = Path()
      ..moveTo(width * 0.7688, height * 0.4073)
      ..cubicTo(
        width * 0.7688,
        height * 0.4073,
        width * 0.7845,
        height * 0.4,
        width * 0.8049,
        height * 0.3117,
      )
      ..cubicTo(
        width * 0.8253,
        height * 0.2234,
        width * 0.7814,
        height * 0.1857,
        width * 0.7421,
        height * 0.1857,
      )
      ..cubicTo(
        width * 0.7029,
        height * 0.1857,
        width * 0.659,
        height * 0.2233,
        width * 0.6794,
        height * 0.3117,
      )
      ..cubicTo(
        width * 0.6997,
        height * 0.4,
        width * 0.7154,
        height * 0.4073,
        width * 0.7154,
        height * 0.4073,
      )
      ..cubicTo(
        width * 0.7154,
        height * 0.4073,
        width * 0.6673,
        height * 0.4451,
        width * 0.6741,
        height * 0.4635,
      )
      ..cubicTo(
        width * 0.6809,
        height * 0.4818,
        width * 0.7421,
        height * 0.4823,
        width * 0.7421,
        height * 0.4823,
      )
      ..cubicTo(
        width * 0.7421,
        height * 0.4823,
        width * 0.8033,
        height * 0.4818,
        width * 0.8101,
        height * 0.4635,
      )
      ..cubicTo(
        width * 0.8169,
        height * 0.4451,
        width * 0.7688,
        height * 0.4073,
        width * 0.7688,
        height * 0.4073,
      )
      ..close();

    final path13 = Path()
      ..moveTo(width * 0.7599, height * 0.2078)
      ..cubicTo(
        width * 0.7552,
        height * 0.1792,
        width * 0.7568,
        height * 0.1351,
        width * 0.7677,
        height * 0.1195,
      )
      ..cubicTo(
        width * 0.7787,
        height * 0.104,
        width * 0.7959,
        height * 0.0948,
        width * 0.785,
        height * 0.0923,
      )
      ..cubicTo(
        width * 0.7741,
        height * 0.0897,
        width * 0.7222,
        height * 0.1352,
        width * 0.7505,
        height * 0.2273,
      )
      ..cubicTo(
        width * 0.7788,
        height * 0.3195,
        width * 0.7599,
        height * 0.2078,
        width * 0.7599,
        height * 0.2078,
      )
      ..close();

    final path14 = Path()
      ..moveTo(width * 0.7654, height * 0.1998)
      ..cubicTo(
        width * 0.7866,
        height * 0.1896,
        width * 0.814,
        height * 0.1636,
        width * 0.8113,
        height * 0.1494,
      )
      ..cubicTo(
        width * 0.8086,
        height * 0.1352,
        width * 0.7882,
        height * 0.1091,
        width * 0.785,
        height * 0.1143,
      )
      ..cubicTo(
        width * 0.7819,
        height * 0.1194,
        width * 0.7944,
        height * 0.1356,
        width * 0.785,
        height * 0.1568,
      )
      ..cubicTo(
        width * 0.7756,
        height * 0.178,
        width * 0.7709,
        height * 0.1791,
        width * 0.7582,
        height * 0.1933,
      )
      ..cubicTo(
        width * 0.7455,
        height * 0.2075,
        width * 0.7654,
        height * 0.1998,
        width * 0.7654,
        height * 0.1998,
      )
      ..close()
      ..moveTo(width * 0.777, height * 0.2195)
      ..cubicTo(
        width * 0.7896,
        height * 0.2069,
        width * 0.9294,
        height * 0.1325,
        width * 0.9152,
        height * 0.1273,
      )
      ..cubicTo(
        width * 0.9011,
        height * 0.1222,
        width * 0.7809,
        height * 0.1845,
        width * 0.7618,
        height * 0.2195,
      )
      ..cubicTo(
        width * 0.7427,
        height * 0.2545,
        width * 0.777,
        height * 0.2195,
        width * 0.777,
        height * 0.2195,
      )
      ..close();

    final path15 = Path()
      ..moveTo(width * 0.785, height * 0.2415)
      ..cubicTo(
        width * 0.8361,
        height * 0.1996,
        width * 0.9623,
        height * 0.1922,
        width * 0.956,
        height * 0.1857,
      )
      ..cubicTo(
        width * 0.9497,
        height * 0.1792,
        width * 0.7879,
        height * 0.1915,
        width * 0.7653,
        height * 0.2302,
      )
      ..cubicTo(
        width * 0.7427,
        height * 0.2688,
        width * 0.785,
        height * 0.2415,
        width * 0.785,
        height * 0.2415,
      )
      ..close();

    final path16 = Path()
      ..moveTo(width * 0.7886, height * 0.2637)
      ..cubicTo(
        width * 0.8463,
        height * 0.239,
        width * 0.9471,
        height * 0.2337,
        width * 0.9563,
        height * 0.2351,
      )
      ..cubicTo(
        width * 0.9656,
        height * 0.2364,
        width * 0.859,
        height * 0.2103,
        width * 0.7828,
        height * 0.2493,
      )
      ..cubicTo(
        width * 0.7066,
        height * 0.2883,
        width * 0.7886,
        height * 0.2637,
        width * 0.7886,
        height * 0.2637,
      )
      ..close()
      ..moveTo(width * 0.785, height * 0.2987)
      ..cubicTo(
        width * 0.8446,
        height * 0.2766,
        width * 0.9325,
        height * 0.2831,
        width * 0.9482,
        height * 0.2909,
      )
      ..cubicTo(
        width * 0.9638,
        height * 0.2987,
        width * 0.9027,
        height * 0.2615,
        width * 0.8603,
        height * 0.2651,
      )
      ..cubicTo(
        width * 0.8179,
        height * 0.2688,
        width * 0.777,
        height * 0.2761,
        width * 0.7653,
        height * 0.2829,
      )
      ..cubicTo(
        width * 0.7537,
        height * 0.2896,
        width * 0.7642,
        height * 0.3064,
        width * 0.785,
        height * 0.2987,
      )
      ..close();

    final path17 = Path()
      ..moveTo(width * 0.7504, height * 0.1996)
      ..cubicTo(
        width * 0.7576,
        height * 0.1677,
        width * 0.7577,
        height * 0.1407,
        width * 0.8094,
        height * 0.144,
      )
      ..cubicTo(
        width * 0.8611,
        height * 0.1472,
        width * 0.8704,
        height * 0.2272,
        width * 0.8575,
        height * 0.339,
      )
      ..cubicTo(
        width * 0.8446,
        height * 0.4507,
        width * 0.8603,
        height * 0.4872,
        width * 0.8627,
        height * 0.4936,
      )
      ..cubicTo(
        width * 0.8651,
        height * 0.5,
        width * 0.8339,
        height * 0.4714,
        width * 0.8361,
        height * 0.4221,
      )
      ..cubicTo(
        width * 0.8383,
        height * 0.3727,
        width * 0.8515,
        height * 0.2642,
        width * 0.8473,
        height * 0.2243,
      )
      ..cubicTo(
        width * 0.843,
        height * 0.1844,
        width * 0.8196,
        height * 0.1545,
        width * 0.7885,
        height * 0.1623,
      )
      ..cubicTo(
        width * 0.7574,
        height * 0.1702,
        width * 0.7644,
        height * 0.1903,
        width * 0.7653,
        height * 0.2146,
      )
      ..cubicTo(
        width * 0.7662,
        height * 0.239,
        width * 0.7504,
        height * 0.1996,
        width * 0.7504,
        height * 0.1996,
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
      ..drawPath(path8, paintCreator(customColors[5]))
      ..drawPath(path9, paintCreator(customColors[5]))
      ..drawPath(path10, paintCreator(customColors[5]))
      ..drawPath(path11, paintCreator(customColors[5]))
      ..drawPath(path12, paintCreator(customColors[5]))
      ..drawPath(path13, paintCreator(customColors[5]))
      ..drawPath(path14, paintCreator(customColors[5]))
      ..drawPath(path15, paintCreator(customColors[5]))
      ..drawPath(path16, paintCreator(customColors[5]))
      ..drawPath(path17, paintCreator(customColors[5]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
