// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of the British Indian Ocean Territory.
///
/// Draws a coconut palm rising from the crown.
final class IotPainter extends UnionJackPainter {
  /// Creates a new instance of [IotPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.4636;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.5368, height * 0.9854)
      ..cubicTo(
        width * 0.5368,
        height * 0.9935,
        width * 0.5229,
        height,
        width * 0.5054,
        height,
      )
      ..cubicTo(
        width * 0.488,
        height,
        width * 0.4738,
        height * 0.9934,
        width * 0.4738,
        height * 0.9854,
      )
      ..lineTo(width * 0.4738, height * 0.2685)
      ..cubicTo(
        width * 0.4738,
        height * 0.2605,
        width * 0.4881,
        height * 0.2539,
        width * 0.5054,
        height * 0.2539,
      )
      ..cubicTo(
        width * 0.5229,
        height * 0.2539,
        width * 0.5368,
        height * 0.2605,
        width * 0.5368,
        height * 0.2685,
      )
      ..lineTo(width * 0.5368, height * 0.9854)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.2841, height * 0.6097)
      ..cubicTo(
        width * 0.2841,
        height * 0.6097,
        width * 0.2977,
        height * 0.5946,
        width * 0.3453,
        height * 0.5946,
      )
      ..cubicTo(
        width * 0.393,
        height * 0.5946,
        width * 0.4044,
        height * 0.6061,
        width * 0.4331,
        height * 0.6114,
      )
      ..cubicTo(
        width * 0.4617,
        height * 0.6168,
        width * 0.498,
        height * 0.6194,
        width * 0.498,
        height * 0.6194,
      )
      ..lineTo(width * 0.498, height * 0.73)
      ..lineTo(width * 0.2422, height * 0.73)
      ..cubicTo(
        width * 0.2422,
        height * 0.73,
        width * 0.2326,
        height * 0.6884,
        width * 0.2174,
        height * 0.6681,
      )
      ..cubicTo(
        width * 0.2021,
        height * 0.6478,
        width * 0.1887,
        height * 0.6203,
        width * 0.2212,
        height * 0.6114,
      )
      ..cubicTo(
        width * 0.2537,
        height * 0.6027,
        width * 0.2841,
        height * 0.6097,
        width * 0.2841,
        height * 0.6097,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.497, height * 0.581)
      ..lineTo(width * 0.497, height * 0.5969)
      ..cubicTo(
        width * 0.497,
        height * 0.5969,
        width * 0.4312,
        height * 0.5942,
        width * 0.3739,
        height * 0.5756,
      )
      ..cubicTo(
        width * 0.339,
        height * 0.5643,
        width * 0.2651,
        height * 0.5504,
        width * 0.2079,
        height * 0.573,
      )
      ..cubicTo(
        width * 0.1707,
        height * 0.5876,
        width * 0.1735,
        height * 0.6248,
        width * 0.1966,
        height * 0.6394,
      )
      ..cubicTo(
        width * 0.2193,
        height * 0.654,
        width * 0.2423,
        height * 0.6872,
        width * 0.1936,
        height * 0.6646,
      )
      ..cubicTo(
        width * 0.1449,
        height * 0.642,
        width * 0.1305,
        height * 0.6075,
        width * 0.1449,
        height * 0.5849,
      )
      ..cubicTo(
        width * 0.1593,
        height * 0.5624,
        width * 0.1908,
        height * 0.5398,
        width * 0.2651,
        height * 0.5398,
      )
      ..cubicTo(
        width * 0.3397,
        height * 0.5398,
        width * 0.3883,
        height * 0.5584,
        width * 0.4227,
        height * 0.5677,
      )
      ..cubicTo(
        width * 0.4525,
        height * 0.5757,
        width * 0.5,
        height * 0.5783,
        width * 0.497,
        height * 0.581,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.21, height * 0.661)
      ..lineTo(width * 0.2499, height * 0.6601)
      ..lineTo(width * 0.2385, height * 0.6884)
      ..cubicTo(
        width * 0.2385,
        height * 0.6884,
        width * 0.2786,
        height * 0.6743,
        width * 0.2805,
        height * 0.6778,
      )
      ..cubicTo(
        width * 0.2823,
        height * 0.6814,
        width * 0.2881,
        height * 0.707,
        width * 0.2881,
        height * 0.707,
      )
      ..lineTo(width * 0.2365, height * 0.7017)
      ..lineTo(width * 0.267, height * 0.7221)
      ..lineTo(width * 0.227, height * 0.7309)
      ..cubicTo(
        width * 0.227,
        height * 0.7309,
        width * 0.2117,
        height * 0.707,
        width * 0.2079,
        height * 0.6956,
      )
      ..cubicTo(
        width * 0.204,
        height * 0.6841,
        width * 0.21,
        height * 0.661,
        width * 0.21,
        height * 0.661,
      )
      ..close()
      ..moveTo(width * 0.2938, height * 0.6761)
      ..lineTo(width * 0.3319, height * 0.6743)
      ..cubicTo(
        width * 0.3319,
        height * 0.6743,
        width * 0.299,
        height * 0.6398,
        width * 0.3472,
        height * 0.6407,
      )
      ..cubicTo(
        width * 0.4007,
        height * 0.6416,
        width * 0.3644,
        height * 0.6735,
        width * 0.3644,
        height * 0.6735,
      )
      ..lineTo(width * 0.4045, height * 0.6735)
      ..lineTo(width * 0.4103, height * 0.6991)
      ..lineTo(width * 0.3722, height * 0.6885)
      ..lineTo(width * 0.3722, height * 0.7036)
      ..lineTo(width * 0.4141, height * 0.7221)
      ..lineTo(width * 0.3033, height * 0.7274)
      ..lineTo(width * 0.3319, height * 0.7053)
      ..lineTo(width * 0.3301, height * 0.6894)
      ..lineTo(width * 0.3034, height * 0.7036)
      ..lineTo(width * 0.2938, height * 0.6761)
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.7276, height * 0.6097)
      ..cubicTo(
        width * 0.7276,
        height * 0.6097,
        width * 0.7141,
        height * 0.5946,
        width * 0.6664,
        height * 0.5946,
      )
      ..cubicTo(
        width * 0.6188,
        height * 0.5946,
        width * 0.6074,
        height * 0.6061,
        width * 0.5787,
        height * 0.6114,
      )
      ..cubicTo(
        width * 0.5501,
        height * 0.6168,
        width * 0.5138,
        height * 0.6194,
        width * 0.5138,
        height * 0.6194,
      )
      ..lineTo(width * 0.5138, height * 0.73)
      ..lineTo(width * 0.7697, height * 0.73)
      ..cubicTo(
        width * 0.7697,
        height * 0.73,
        width * 0.7791,
        height * 0.6884,
        width * 0.7944,
        height * 0.6681,
      )
      ..cubicTo(
        width * 0.8097,
        height * 0.6478,
        width * 0.823,
        height * 0.6203,
        width * 0.7906,
        height * 0.6114,
      )
      ..cubicTo(
        width * 0.7581,
        height * 0.6027,
        width * 0.7276,
        height * 0.6097,
        width * 0.7276,
        height * 0.6097,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.5147, height * 0.581)
      ..lineTo(width * 0.5147, height * 0.5969)
      ..cubicTo(
        width * 0.5147,
        height * 0.5969,
        width * 0.5806,
        height * 0.5942,
        width * 0.6378,
        height * 0.5756,
      )
      ..cubicTo(
        width * 0.6727,
        height * 0.5643,
        width * 0.7466,
        height * 0.5504,
        width * 0.8039,
        height * 0.573,
      )
      ..cubicTo(
        width * 0.8411,
        height * 0.5876,
        width * 0.8381,
        height * 0.6248,
        width * 0.8152,
        height * 0.6394,
      )
      ..cubicTo(
        width * 0.7924,
        height * 0.654,
        width * 0.7696,
        height * 0.6872,
        width * 0.8181,
        height * 0.6646,
      )
      ..cubicTo(
        width * 0.8668,
        height * 0.642,
        width * 0.8812,
        height * 0.6075,
        width * 0.8668,
        height * 0.5849,
      )
      ..cubicTo(
        width * 0.8525,
        height * 0.5624,
        width * 0.8209,
        height * 0.5398,
        width * 0.7466,
        height * 0.5398,
      )
      ..cubicTo(
        width * 0.672,
        height * 0.5398,
        width * 0.6234,
        height * 0.5584,
        width * 0.5891,
        height * 0.5677,
      )
      ..cubicTo(
        width * 0.5594,
        height * 0.5757,
        width * 0.5118,
        height * 0.5783,
        width * 0.5147,
        height * 0.581,
      )
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.802, height * 0.661)
      ..lineTo(width * 0.762, height * 0.6601)
      ..lineTo(width * 0.7734, height * 0.6884)
      ..cubicTo(
        width * 0.7734,
        height * 0.6884,
        width * 0.7333,
        height * 0.6743,
        width * 0.7314,
        height * 0.6778,
      )
      ..cubicTo(
        width * 0.7295,
        height * 0.6814,
        width * 0.7238,
        height * 0.707,
        width * 0.7238,
        height * 0.707,
      )
      ..lineTo(width * 0.7751, height * 0.7017)
      ..lineTo(width * 0.7446, height * 0.7221)
      ..lineTo(width * 0.7847, height * 0.7309)
      ..cubicTo(
        width * 0.7847,
        height * 0.7309,
        width * 0.8,
        height * 0.707,
        width * 0.8039,
        height * 0.6956,
      )
      ..cubicTo(
        width * 0.8076,
        height * 0.6841,
        width * 0.802,
        height * 0.661,
        width * 0.802,
        height * 0.661,
      )
      ..close()
      ..moveTo(width * 0.7179, height * 0.6761)
      ..lineTo(width * 0.6797, height * 0.6743)
      ..cubicTo(
        width * 0.6797,
        height * 0.6743,
        width * 0.7127,
        height * 0.6398,
        width * 0.6644,
        height * 0.6407,
      )
      ..cubicTo(
        width * 0.6111,
        height * 0.6416,
        width * 0.6473,
        height * 0.6735,
        width * 0.6473,
        height * 0.6735,
      )
      ..lineTo(width * 0.6073, height * 0.6735)
      ..lineTo(width * 0.6013, height * 0.6991)
      ..lineTo(width * 0.6396, height * 0.6885)
      ..lineTo(width * 0.6396, height * 0.7036)
      ..lineTo(width * 0.5976, height * 0.7221)
      ..lineTo(width * 0.7085, height * 0.7274)
      ..lineTo(width * 0.6797, height * 0.7053)
      ..lineTo(width * 0.6817, height * 0.6894)
      ..lineTo(width * 0.7085, height * 0.7036)
      ..lineTo(width * 0.7179, height * 0.6761)
      ..close()
      ..moveTo(width * 0.5722, height * 0.5362)
      ..cubicTo(
        width * 0.5722,
        height * 0.5538,
        width * 0.5422,
        height * 0.568,
        width * 0.5054,
        height * 0.568,
      )
      ..cubicTo(
        width * 0.4685,
        height * 0.568,
        width * 0.4385,
        height * 0.5538,
        width * 0.4385,
        height * 0.5362,
      )
      ..cubicTo(
        width * 0.4385,
        height * 0.5186,
        width * 0.4685,
        height * 0.5044,
        width * 0.5054,
        height * 0.5044,
      )
      ..cubicTo(
        width * 0.5423,
        height * 0.5044,
        width * 0.5722,
        height * 0.5186,
        width * 0.5722,
        height * 0.5362,
      )
      ..close()
      ..moveTo(width * 0.4454, height * 0.4664)
      ..lineTo(width * 0.5655, height * 0.4664)
      ..lineTo(width * 0.5655, height * 0.4885)
      ..lineTo(width * 0.4454, height * 0.4885)
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.4768, height * 0.4513)
      ..lineTo(width * 0.534, height * 0.4513)
      ..lineTo(width * 0.534, height * 0.6557)
      ..lineTo(width * 0.4768, height * 0.6557)
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.458, height * 0.6469)
      ..lineTo(width * 0.5476, height * 0.6469)
      ..lineTo(width * 0.5228, height * 0.6761)
      ..lineTo(width * 0.5801, height * 0.662)
      ..lineTo(width * 0.5801, height * 0.7008)
      ..lineTo(width * 0.5246, height * 0.692)
      ..lineTo(width * 0.5724, height * 0.7256)
      ..lineTo(width * 0.4484, height * 0.7256)
      ..lineTo(width * 0.4865, height * 0.692)
      ..lineTo(width * 0.4312, height * 0.6982)
      ..lineTo(width * 0.4312, height * 0.6637)
      ..lineTo(width * 0.4828, height * 0.6751)
      ..close();

    final path10 = Path()
      ..moveTo(width * 0.5056, height * 0.7123)
      ..cubicTo(
        width * 0.624,
        height * 0.7123,
        width * 0.6984,
        height * 0.7169,
        width * 0.7824,
        height * 0.7309,
      )
      ..cubicTo(
        width * 0.7824,
        height * 0.7309,
        width * 0.7883,
        height * 0.754,
        width * 0.7767,
        height * 0.7655,
      )
      ..cubicTo(
        width * 0.7654,
        height * 0.777,
        width * 0.5038,
        height * 0.7575,
        width * 0.5038,
        height * 0.7575,
      )
      ..lineTo(width * 0.5056, height * 0.7123)
      ..close();

    final path11 = Path()
      ..moveTo(width * 0.509, height * 0.7123)
      ..cubicTo(
        width * 0.3907,
        height * 0.7123,
        width * 0.3162,
        height * 0.7169,
        width * 0.2324,
        height * 0.7309,
      )
      ..cubicTo(
        width * 0.2324,
        height * 0.7309,
        width * 0.2265,
        height * 0.754,
        width * 0.2379,
        height * 0.7655,
      )
      ..cubicTo(
        width * 0.2494,
        height * 0.777,
        width * 0.5109,
        height * 0.7575,
        width * 0.5109,
        height * 0.7575,
      )
      ..lineTo(width * 0.509, height * 0.7123)
      ..close();

    final path12 = Path()
      ..moveTo(width * 0.8127, height * 0.7889)
      ..cubicTo(
        width * 0.8127,
        height * 0.8063,
        width * 0.675,
        height * 0.8203,
        width * 0.5054,
        height * 0.8203,
      )
      ..cubicTo(
        width * 0.3358,
        height * 0.8203,
        width * 0.1981,
        height * 0.8063,
        width * 0.1981,
        height * 0.7889,
      )
      ..cubicTo(
        width * 0.1981,
        height * 0.7715,
        width * 0.3358,
        height * 0.7575,
        width * 0.5054,
        height * 0.7575,
      )
      ..cubicTo(
        width * 0.675,
        height * 0.7575,
        width * 0.8127,
        height * 0.7715,
        width * 0.8127,
        height * 0.7889,
      )
      ..close();

    final path13 = Path()
      ..moveTo(width * 0.7118, height * 0.8004)
      ..cubicTo(
        width * 0.7118,
        height * 0.81,
        width * 0.6194,
        height * 0.8177,
        width * 0.5054,
        height * 0.8177,
      )
      ..cubicTo(
        width * 0.3914,
        height * 0.8177,
        width * 0.2989,
        height * 0.81,
        width * 0.2989,
        height * 0.8004,
      )
      ..cubicTo(
        width * 0.2989,
        height * 0.7909,
        width * 0.3914,
        height * 0.7831,
        width * 0.5054,
        height * 0.7831,
      )
      ..cubicTo(
        width * 0.6194,
        height * 0.7831,
        width * 0.7118,
        height * 0.7909,
        width * 0.7118,
        height * 0.8004,
      )
      ..close();

    final path14 = Path()
      ..moveTo(width * 0.3815, 0)
      ..lineTo(width * 0.4445, height * 0.0363)
      ..cubicTo(
        width * 0.4445,
        height * 0.0363,
        width * 0.4884,
        height * 0.0239,
        width * 0.4904,
        height * 0.0266,
      )
      ..cubicTo(
        width * 0.4923,
        height * 0.0292,
        width * 0.4866,
        height * 0.0567,
        width * 0.4866,
        height * 0.0567,
      )
      ..lineTo(width * 0.5171, height * 0.0602)
      ..lineTo(width * 0.4923, height * 0.0965)
      ..cubicTo(
        width * 0.4923,
        height * 0.0965,
        width * 0.5306,
        height * 0.0868,
        width * 0.5285,
        height * 0.0903,
      )
      ..cubicTo(
        width * 0.5267,
        height * 0.0938,
        width * 0.5171,
        height * 0.1248,
        width * 0.5171,
        height * 0.1248,
      )
      ..lineTo(width * 0.5324, height * 0.1293)
      ..lineTo(width * 0.5305, height * 0.1638)
      ..cubicTo(
        width * 0.5305,
        height * 0.1638,
        width * 0.5458,
        height * 0.1761,
        width * 0.5458,
        height * 0.1735,
      )
      ..cubicTo(
        width * 0.5458,
        height * 0.1709,
        width * 0.561,
        height * 0.1284,
        width * 0.561,
        height * 0.1284,
      )
      ..lineTo(width * 0.582, height * 0.1363)
      ..lineTo(width * 0.5894, height * 0.1142)
      ..lineTo(width * 0.6067, height * 0.0762)
      ..lineTo(width * 0.6258, height * 0.0903)
      ..lineTo(width * 0.6659, height * 0.0275)
      ..lineTo(width * 0.6869, height * 0.0496)
      ..lineTo(width * 0.7346, height * 0.024)
      ..lineTo(width * 0.767, height * 0.023)
      ..lineTo(width * 0.8147, height * 0.0169)
      ..lineTo(width * 0.8243, height * 0.0301)
      ..lineTo(width * 0.8682, height * 0.0301)
      ..cubicTo(
        width * 0.8682,
        height * 0.0301,
        width * 0.8454,
        height * 0.039,
        width * 0.8473,
        height * 0.0416,
      )
      ..cubicTo(
        width * 0.849,
        height * 0.0442,
        width * 0.8892,
        height * 0.054,
        width * 0.8834,
        height * 0.0549,
      )
      ..cubicTo(
        width * 0.8777,
        height * 0.0558,
        width * 0.7803,
        height * 0.0513,
        width * 0.7803,
        height * 0.0513,
      )
      ..lineTo(width * 0.7251, height * 0.077)
      ..lineTo(width * 0.7594, height * 0.0823)
      ..lineTo(width * 0.7078, height * 0.0964)
      ..lineTo(width * 0.7517, height * 0.1026)
      ..lineTo(width * 0.7117, height * 0.1168)
      ..lineTo(width * 0.7461, height * 0.115)
      ..lineTo(width * 0.6907, height * 0.1345)
      ..lineTo(width * 0.7461, height * 0.1398)
      ..lineTo(width * 0.6716, height * 0.1575)
      ..lineTo(width * 0.6888, height * 0.1664)
      ..lineTo(width * 0.6144, height * 0.1867)
      ..lineTo(width * 0.6047, height * 0.2009)
      ..lineTo(width * 0.6754, height * 0.1752)
      ..cubicTo(
        width * 0.6754,
        height * 0.1752,
        width * 0.7327,
        height * 0.1575,
        width * 0.7613,
        height * 0.1495,
      )
      ..cubicTo(
        width * 0.7899,
        height * 0.1416,
        width * 0.8128,
        height * 0.1265,
        width * 0.8607,
        height * 0.1204,
      )
      ..cubicTo(
        width * 0.9086,
        height * 0.1142,
        width,
        height * 0.1213,
        width,
        height * 0.1213,
      )
      ..lineTo(width * 0.914, height * 0.1425)
      ..lineTo(width * 0.9313, height * 0.1549)
      ..lineTo(width * 0.876, height * 0.1628)
      ..lineTo(width * 0.8836, height * 0.1778)
      ..lineTo(width * 0.7919, height * 0.1841)
      ..lineTo(width * 0.7938, height * 0.2)
      ..lineTo(width * 0.7156, height * 0.2062)
      ..lineTo(width * 0.706, height * 0.2213)
      ..lineTo(width * 0.6526, height * 0.2301)
      ..lineTo(width * 0.6775, height * 0.2398)
      ..cubicTo(
        width * 0.6775,
        height * 0.2398,
        width * 0.6315,
        height * 0.2469,
        width * 0.6374,
        height * 0.2478,
      )
      ..cubicTo(
        width * 0.6431,
        height * 0.2487,
        width * 0.7042,
        height * 0.2513,
        width * 0.7042,
        height * 0.2513,
      )
      ..cubicTo(
        width * 0.7042,
        height * 0.2513,
        width * 0.6736,
        height * 0.2637,
        width * 0.6792,
        height * 0.2637,
      )
      ..cubicTo(
        width * 0.6851,
        height * 0.2637,
        width * 0.7613,
        height * 0.2655,
        width * 0.7613,
        height * 0.2655,
      )
      ..lineTo(width * 0.7288, height * 0.2761)
      ..lineTo(width * 0.8053, height * 0.2779)
      ..lineTo(width * 0.7708, height * 0.2902)
      ..cubicTo(
        width * 0.7708,
        height * 0.2902,
        width * 0.8338,
        height * 0.2929,
        width * 0.8338,
        height * 0.2956,
      )
      ..cubicTo(
        width * 0.8338,
        height * 0.2982,
        width * 0.8072,
        height * 0.3115,
        width * 0.8072,
        height * 0.3115,
      )
      ..lineTo(width * 0.8625, height * 0.3141)
      ..cubicTo(
        width * 0.8625,
        height * 0.3141,
        width * 0.8359,
        height * 0.3274,
        width * 0.8414,
        height * 0.3283,
      )
      ..cubicTo(
        width * 0.8474,
        height * 0.3292,
        width * 0.9198,
        height * 0.3522,
        width * 0.9198,
        height * 0.3522,
      )
      ..lineTo(width * 0.8338, height * 0.3469)
      ..cubicTo(
        width * 0.8338,
        height * 0.3469,
        width * 0.8128,
        height * 0.3601,
        width * 0.8109,
        height * 0.3575,
      )
      ..cubicTo(
        width * 0.8091,
        height * 0.3549,
        width * 0.7882,
        height * 0.3389,
        width * 0.7882,
        height * 0.3389,
      )
      ..lineTo(width * 0.7671, height * 0.3495)
      ..lineTo(width * 0.7443, height * 0.3283)
      ..cubicTo(
        width * 0.7443,
        height * 0.3283,
        width * 0.7176,
        height * 0.3353,
        width * 0.7194,
        height * 0.3327,
      )
      ..cubicTo(
        width * 0.7213,
        height * 0.33,
        width * 0.6889,
        height * 0.3132,
        width * 0.6889,
        height * 0.3132,
      )
      ..lineTo(width * 0.6813, height * 0.3212)
      ..lineTo(width * 0.6603, height * 0.2973)
      ..lineTo(width * 0.6413, height * 0.3097)
      ..lineTo(width * 0.6049, height * 0.2867)
      ..lineTo(width * 0.5916, height * 0.2964)
      ..lineTo(width * 0.5419, height * 0.276)
      ..cubicTo(
        width * 0.5419,
        height * 0.276,
        width * 0.54,
        height * 0.2893,
        width * 0.5419,
        height * 0.292,
      )
      ..cubicTo(
        width * 0.5438,
        height * 0.2947,
        width * 0.5782,
        height * 0.3061,
        width * 0.5782,
        height * 0.3061,
      )
      ..cubicTo(
        width * 0.5782,
        height * 0.3061,
        width * 0.5553,
        height * 0.3106,
        width * 0.5553,
        height * 0.3132,
      )
      ..cubicTo(
        width * 0.5553,
        height * 0.3159,
        width * 0.6012,
        height * 0.3327,
        width * 0.6012,
        height * 0.3327,
      )
      ..lineTo(width * 0.5802, height * 0.3398)
      ..lineTo(width * 0.6298, height * 0.3592)
      ..cubicTo(
        width * 0.6298,
        height * 0.3592,
        width * 0.584,
        height * 0.3637,
        width * 0.5896,
        height * 0.3654,
      )
      ..cubicTo(
        width * 0.5955,
        height * 0.3672,
        width * 0.6183,
        height * 0.3813,
        width * 0.6183,
        height * 0.3813,
      )
      ..lineTo(width * 0.5993, height * 0.4026)
      ..lineTo(width * 0.5612, height * 0.3752)
      ..lineTo(width * 0.5401, height * 0.3778)
      ..lineTo(width * 0.5362, height * 0.3548)
      ..lineTo(width * 0.5154, height * 0.3539)
      ..lineTo(width * 0.5267, height * 0.3283)
      ..lineTo(width * 0.5039, height * 0.33)
      ..lineTo(width * 0.5019, height * 0.3088)
      ..lineTo(width * 0.4923, height * 0.2876)
      ..lineTo(width * 0.4732, height * 0.2734)
      ..cubicTo(
        width * 0.4732,
        height * 0.2734,
        width * 0.4599,
        height * 0.284,
        width * 0.4617,
        height * 0.2866,
      )
      ..cubicTo(
        width * 0.4637,
        height * 0.2893,
        width * 0.4791,
        height * 0.3061,
        width * 0.4791,
        height * 0.3061,
      )
      ..cubicTo(
        width * 0.4791,
        height * 0.3061,
        width * 0.458,
        height * 0.3114,
        width * 0.4617,
        height * 0.3141,
      )
      ..cubicTo(
        width * 0.4656,
        height * 0.3167,
        width * 0.4866,
        height * 0.3362,
        width * 0.4866,
        height * 0.3362,
      )
      ..cubicTo(
        width * 0.4866,
        height * 0.3362,
        width * 0.4408,
        height * 0.3406,
        width * 0.4465,
        height * 0.3406,
      )
      ..cubicTo(
        width * 0.4524,
        height * 0.3406,
        width * 0.4676,
        height * 0.353,
        width * 0.4676,
        height * 0.353,
      )
      ..lineTo(width * 0.4427, height * 0.3574)
      ..lineTo(width * 0.4313, height * 0.3707)
      ..cubicTo(
        width * 0.4313,
        height * 0.3707,
        width * 0.4028,
        height * 0.3556,
        width * 0.4046,
        height * 0.3583,
      )
      ..cubicTo(
        width * 0.4066,
        height * 0.361,
        width * 0.3875,
        height * 0.3857,
        width * 0.3875,
        height * 0.3857,
      )
      ..lineTo(width * 0.3589, height * 0.3707)
      ..lineTo(width * 0.3875, height * 0.3185)
      ..lineTo(width * 0.353, height * 0.3141)
      ..lineTo(width * 0.3282, height * 0.338)
      ..cubicTo(
        width * 0.3282,
        height * 0.338,
        width * 0.3072,
        height * 0.3265,
        width * 0.3053,
        height * 0.3291,
      )
      ..cubicTo(
        width * 0.3033,
        height * 0.3318,
        width * 0.2824,
        height * 0.3495,
        width * 0.2824,
        height * 0.3495,
      )
      ..cubicTo(
        width * 0.2824,
        height * 0.3495,
        width * 0.2578,
        height * 0.33,
        width * 0.2597,
        height * 0.3327,
      )
      ..cubicTo(
        width * 0.2615,
        height * 0.3353,
        width * 0.2309,
        height * 0.3637,
        width * 0.2309,
        height * 0.3637,
      )
      ..cubicTo(
        width * 0.2309,
        height * 0.3637,
        width * 0.2042,
        height * 0.3389,
        width * 0.2042,
        height * 0.3424,
      )
      ..cubicTo(
        width * 0.2042,
        height * 0.346,
        width * 0.1852,
        height * 0.377,
        width * 0.1852,
        height * 0.377,
      )
      ..cubicTo(
        width * 0.1852,
        height * 0.377,
        width * 0.1548,
        height * 0.3531,
        width * 0.1565,
        height * 0.3575,
      )
      ..cubicTo(
        width * 0.1586,
        height * 0.3619,
        width * 0.1356,
        height * 0.3823,
        width * 0.1356,
        height * 0.3823,
      )
      ..lineTo(width * 0.1297, height * 0.3601)
      ..lineTo(width * 0.0878, height * 0.3716)
      ..lineTo(width * 0.1355, height * 0.3398)
      ..lineTo(width * 0.2157, height * 0.3052)
      ..lineTo(width * 0.2768, height * 0.284)
      ..lineTo(width * 0.2365, height * 0.2814)
      ..cubicTo(
        width * 0.2365,
        height * 0.2814,
        width * 0.2947,
        height * 0.2721,
        width * 0.3013,
        height * 0.2717,
      )
      ..cubicTo(
        width * 0.3186,
        height * 0.2708,
        width * 0.2748,
        height * 0.2638,
        width * 0.2748,
        height * 0.2638,
      )
      ..lineTo(width * 0.3816, height * 0.2487)
      ..cubicTo(
        width * 0.3816,
        height * 0.2487,
        width * 0.334,
        height * 0.2372,
        width * 0.3282,
        height * 0.2398,
      )
      ..cubicTo(
        width * 0.3224,
        height * 0.2425,
        width * 0.2651,
        height * 0.2478,
        width * 0.2651,
        height * 0.2478,
      )
      ..lineTo(width * 0.2575, height * 0.2275)
      ..lineTo(width * 0.1985, height * 0.2389)
      ..cubicTo(
        width * 0.1985,
        height * 0.2389,
        width * 0.1888,
        height * 0.2203,
        width * 0.187,
        height * 0.223,
      )
      ..cubicTo(
        width * 0.1851,
        height * 0.2257,
        width * 0.1392,
        height * 0.2371,
        width * 0.1392,
        height * 0.2371,
      )
      ..lineTo(width * 0.1165, height * 0.2257)
      ..lineTo(width * 0.0897, height * 0.2451)
      ..lineTo(width * 0.0591, height * 0.2345)
      ..lineTo(width * 0.0039, height * 0.2425)
      ..lineTo(width * 0.0305, height * 0.2239)
      ..lineTo(0, height * 0.2159)
      ..lineTo(width * 0.063, height * 0.1974)
      ..lineTo(width * 0.0763, height * 0.185)
      ..lineTo(width * 0.1623, height * 0.1876)
      ..cubicTo(
        width * 0.1623,
        height * 0.1876,
        width * 0.1393,
        height * 0.1735,
        width * 0.1432,
        height * 0.1761,
      )
      ..cubicTo(
        width * 0.1471,
        height * 0.1788,
        width * 0.2309,
        height * 0.185,
        width * 0.2309,
        height * 0.185,
      )
      ..lineTo(width * 0.2559, height * 0.1832)
      ..lineTo(width * 0.3398, height * 0.1974)
      ..lineTo(width * 0.2711, height * 0.1717)
      ..lineTo(width * 0.2119, height * 0.1664)
      ..lineTo(width * 0.2501, height * 0.1522)
      ..lineTo(width * 0.1603, height * 0.1372)
      ..lineTo(width * 0.1795, height * 0.1231)
      ..lineTo(width * 0.061, height * 0.1089)
      ..lineTo(width * 0.1337, height * 0.1001)
      ..lineTo(width * 0.084, height * 0.0611)
      ..lineTo(width * 0.1871, height * 0.0894)
      ..lineTo(width * 0.2329, height * 0.0823)
      ..lineTo(width * 0.2559, height * 0.1098)
      ..lineTo(width * 0.2979, height * 0.1213)
      ..lineTo(width * 0.3054, height * 0.1416)
      ..lineTo(width * 0.3264, height * 0.1372)
      ..lineTo(width * 0.3455, height * 0.1611)
      ..lineTo(width * 0.3704, height * 0.1575)
      ..lineTo(width * 0.3837, height * 0.1744)
      ..lineTo(width * 0.4201, height * 0.1752)
      ..lineTo(width * 0.4104, height * 0.1531)
      ..lineTo(width * 0.4256, height * 0.1425)
      ..lineTo(width * 0.3836, height * 0.1265)
      ..lineTo(width * 0.42, height * 0.1185)
      ..lineTo(width * 0.3664, height * 0.0982)
      ..lineTo(width * 0.4122, height * 0.0955)
      ..lineTo(width * 0.3473, height * 0.0663)
      ..lineTo(width * 0.399, height * 0.0672)
      ..lineTo(width * 0.3473, height * 0.0398)
      ..lineTo(width * 0.3894, height * 0.0353)
      ..lineTo(width * 0.3815, 0)
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors[1]))
      ..drawPath(path5, paintCreator(customColors.first))
      ..drawPath(path6, paintCreator(customColors[1]))
      ..drawPath(path7, paintCreator(customColors[1]))
      ..drawPath(path8, paintCreator(customColors[1]))
      ..drawPath(path9, paintCreator(customColors[1]))
      ..drawPath(path10, paintCreator(customColors[1]))
      ..drawPath(path11, paintCreator(customColors[1]))
      ..drawPath(path12, paintCreator(customColors[2]))
      ..drawPath(path13, paintCreator(customColors[3]))
      ..drawPath(path14, paintCreator(customColors[4]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
