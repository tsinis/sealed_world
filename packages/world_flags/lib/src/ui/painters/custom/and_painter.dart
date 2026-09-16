// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

import "dart:ui";

import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

/// Painter for the flag badge of Andorra.
///
/// Draws the quartered escutcheon of Andorra.
final class AndPainter extends CustomElementsPainter {
  /// Creates a new instance of [AndPainter].
  const new(super._properties, super.aspectRatio);

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.9228;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.9688, height * 0.6159)
      ..cubicTo(
        width * 0.954,
        height * 0.5753,
        width * 0.9164,
        height * 0.5831,
        width * 0.9164,
        height * 0.5966,
      )
      ..cubicTo(
        width * 0.9164,
        height * 0.5966,
        width * 0.8662,
        height * 0.5631,
        width * 0.9038,
        height * 0.5017,
      )
      ..cubicTo(
        width * 0.9038,
        height * 0.5017,
        width * 0.977,
        height * 0.5097,
        width * 0.9352,
        height * 0.4576,
      )
      ..cubicTo(
        width * 0.9352,
        height * 0.4576,
        width * 0.998,
        height * 0.4247,
        width,
        height * 0.3572,
      )
      ..cubicTo(
        width * 1.002,
        height * 0.2896,
        width * 0.9184,
        height * 0.2472,
        width * 0.8829,
        height * 0.2741,
      )
      ..cubicTo(
        width * 0.8829,
        height * 0.2741,
        width * 0.8807,
        height * 0.2472,
        width * 0.8661,
        height * 0.2472,
      )
      ..cubicTo(
        width * 0.8515,
        height * 0.2472,
        width * 0.8431,
        height * 0.2645,
        width * 0.8431,
        height * 0.2645,
      )
      ..cubicTo(
        width * 0.8431,
        height * 0.2645,
        width * 0.8453,
        height * 0.2201,
        width * 0.8765,
        height * 0.195,
      )
      ..cubicTo(
        width * 0.9079,
        height * 0.1699,
        width * 0.9727,
        height * 0.1023,
        width * 0.8367,
        height * 0.0637,
      )
      ..cubicTo(
        width * 0.7008,
        height * 0.0252,
        width * 0.6945,
        height * 0.1044,
        width * 0.7154,
        height * 0.1217,
      )
      ..cubicTo(
        width * 0.7154,
        height * 0.1217,
        width * 0.682,
        height * 0.139,
        width * 0.6443,
        height * 0.1371,
      )
      ..cubicTo(
        width * 0.6066,
        height * 0.1353,
        width * 0.6337,
        height * 0.0948,
        width * 0.6421,
        height * 0.0773,
      )
      ..cubicTo(
        width * 0.6505,
        height * 0.06,
        width * 0.6443,
        height * -0.0018,
        width * 0.5981,
        height * 0.0002,
      )
      ..cubicTo(
        width * 0.5521,
        height * 0.0021,
        width * 0.5499,
        height * 0.0195,
        width * 0.5333,
        height * 0.0253,
      )
      ..cubicTo(
        width * 0.5168,
        height * 0.0309,
        width * 0.5,
        height * 0.0271,
        width * 0.5,
        height * 0.0271,
      )
      ..cubicTo(
        width * 0.5,
        height * 0.0271,
        width * 0.4833,
        height * 0.0309,
        width * 0.4665,
        height * 0.0251,
      )
      ..cubicTo(
        width * 0.4499,
        height * 0.0193,
        width * 0.4477,
        height * 0.002,
        width * 0.4017,
        0,
      )
      ..cubicTo(
        width * 0.3556,
        height * -0.002,
        width * 0.3494,
        height * 0.0598,
        width * 0.3578,
        height * 0.0771,
      )
      ..cubicTo(
        width * 0.3662,
        height * 0.0946,
        width * 0.3934,
        height * 0.1351,
        width * 0.3556,
        height * 0.1369,
      )
      ..cubicTo(
        width * 0.318,
        height * 0.1388,
        width * 0.2845,
        height * 0.1216,
        width * 0.2845,
        height * 0.1216,
      )
      ..cubicTo(
        width * 0.3055,
        height * 0.1042,
        width * 0.2991,
        height * 0.025,
        width * 0.1632,
        height * 0.0636,
      )
      ..cubicTo(
        width * 0.0273,
        height * 0.1021,
        width * 0.0921,
        height * 0.1698,
        width * 0.1235,
        height * 0.1948,
      )
      ..cubicTo(
        width * 0.1548,
        height * 0.2199,
        width * 0.157,
        height * 0.2643,
        width * 0.157,
        height * 0.2643,
      )
      ..cubicTo(
        width * 0.157,
        height * 0.2643,
        width * 0.1486,
        height * 0.247,
        width * 0.1339,
        height * 0.247,
      )
      ..cubicTo(
        width * 0.1193,
        height * 0.247,
        width * 0.1172,
        height * 0.274,
        width * 0.1172,
        height * 0.274,
      )
      ..cubicTo(
        width * 0.0816,
        height * 0.247,
        width * -0.002,
        height * 0.2894,
        0,
        height * 0.357,
      )
      ..cubicTo(
        width * 0.0021,
        height * 0.4246,
        width * 0.0649,
        height * 0.4574,
        width * 0.0649,
        height * 0.4574,
      )
      ..cubicTo(
        width * 0.023,
        height * 0.5095,
        width * 0.0963,
        height * 0.5015,
        width * 0.0963,
        height * 0.5015,
      )
      ..cubicTo(
        width * 0.1339,
        height * 0.563,
        width * 0.0837,
        height * 0.5964,
        width * 0.0837,
        height * 0.5964,
      )
      ..cubicTo(
        width * 0.0837,
        height * 0.5829,
        width * 0.0461,
        height * 0.5752,
        width * 0.0312,
        height * 0.6157,
      )
      ..cubicTo(
        width * 0.0164,
        height * 0.6563,
        width * 0.0606,
        height * 0.6698,
        width * 0.0606,
        height * 0.6698,
      )
      ..cubicTo(
        width * 0.002,
        height * 0.7393,
        width * 0.0397,
        height * 0.8049,
        width * 0.0962,
        height * 0.8435,
      )
      ..cubicTo(
        width * 0.1527,
        height * 0.882,
        width * 0.2614,
        height * 0.8764,
        width * 0.3158,
        height * 0.8802,
      )
      ..cubicTo(
        width * 0.3702,
        height * 0.884,
        width * 0.3807,
        height * 0.9091,
        width * 0.3807,
        height * 0.9091,
      )
      ..cubicTo(
        width * 0.3389,
        height * 0.9459,
        width * 0.4016,
        height * 0.9748,
        width * 0.4016,
        height * 0.9748,
      )
      ..cubicTo(
        width * 0.4142,
        height * 1.0134,
        width * 0.4644,
        height * 0.971,
        width * 0.4644,
        height * 0.971,
      )
      ..lineTo(width * 0.5, height)
      ..lineTo(width * 0.5356, height * 0.971)
      ..cubicTo(
        width * 0.5356,
        height * 0.971,
        width * 0.5859,
        height * 1.0135,
        width * 0.5984,
        height * 0.9749,
      )
      ..cubicTo(
        width * 0.5984,
        height * 0.9749,
        width * 0.6612,
        height * 0.946,
        width * 0.6193,
        height * 0.9092,
      )
      ..cubicTo(
        width * 0.6193,
        height * 0.9092,
        width * 0.6298,
        height * 0.8841,
        width * 0.6842,
        height * 0.8802,
      )
      ..cubicTo(
        width * 0.7386,
        height * 0.8765,
        width * 0.8474,
        height * 0.8821,
        width * 0.9038,
        height * 0.8436,
      )
      ..cubicTo(
        width * 0.9602,
        height * 0.805,
        width * 0.998,
        height * 0.7393,
        width * 0.9394,
        height * 0.6698,
      )
      ..cubicTo(
        width * 0.9394,
        height * 0.6699,
        width * 0.9836,
        height * 0.6564,
        width * 0.9688,
        height * 0.6159,
      )
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.4833, height * 0.4441)
      ..lineTo(width * 0.4833, height * 0.1893)
      ..lineTo(width * 0.2072, height * 0.1893)
      ..lineTo(width * 0.2072, height * 0.4441)
      ..lineTo(width * 0.4833, height * 0.4441)
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.3505, height * 0.1998)
      ..lineTo(width * 0.4311, height * 0.2944)
      ..lineTo(width * 0.3907, height * 0.3958)
      ..cubicTo(
        width * 0.3907,
        height * 0.3958,
        width * 0.3745,
        height * 0.387,
        width * 0.3504,
        height * 0.387,
      )
      ..cubicTo(
        width * 0.3263,
        height * 0.387,
        width * 0.3075,
        height * 0.3958,
        width * 0.3075,
        height * 0.3958,
      )
      ..lineTo(width * 0.2647, height * 0.2935)
      ..lineTo(width * 0.3505, height * 0.1998)
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.3572, height * 0.2326)
      ..lineTo(width * 0.4135, height * 0.2949)
      ..lineTo(width * 0.385, height * 0.3746)
      ..lineTo(width * 0.3578, height * 0.3668)
      ..close()
      ..moveTo(width * 0.3387, height * 0.2326)
      ..lineTo(width * 0.2825, height * 0.2949)
      ..lineTo(width * 0.311, height * 0.3746)
      ..lineTo(width * 0.3381, height * 0.3668)
      ..close()
      ..moveTo(width * 0.2072, height * 0.4672)
      ..lineTo(width * 0.2072, height * 0.6255)
      ..cubicTo(
        width * 0.2072,
        height * 0.7298,
        width * 0.2896,
        height * 0.7442,
        width * 0.3606,
        height * 0.7298,
      )
      ..cubicTo(
        width * 0.4177,
        height * 0.7181,
        width * 0.4833,
        height * 0.7298,
        width * 0.4833,
        height * 0.7298,
      )
      ..lineTo(width * 0.4833, height * 0.4672)
      ..lineTo(width * 0.2072, height * 0.4672)
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.3606, height * 0.7298)
      ..lineTo(width * 0.3662, height * 0.7288)
      ..lineTo(width * 0.3662, height * 0.4672)
      ..lineTo(width * 0.3243, height * 0.4672)
      ..lineTo(width * 0.3243, height * 0.7342)
      ..cubicTo(
        width * 0.3365,
        height * 0.7338,
        width * 0.3487,
        height * 0.7321,
        width * 0.3606,
        height * 0.7298,
      )
      ..close()
      ..moveTo(width * 0.4499, height * 0.7259)
      ..lineTo(width * 0.4499, height * 0.4672)
      ..lineTo(width * 0.408, height * 0.4672)
      ..lineTo(width * 0.408, height * 0.7247)
      ..cubicTo(
        width * 0.4233,
        height * 0.7243,
        width * 0.4378,
        height * 0.7249,
        width * 0.4499,
        height * 0.7259,
      )
      ..close()
      ..moveTo(width * 0.2825, height * 0.7308)
      ..lineTo(width * 0.2825, height * 0.4672)
      ..lineTo(width * 0.2407, height * 0.4672)
      ..lineTo(width * 0.2407, height * 0.7113)
      ..cubicTo(
        width * 0.2525,
        height * 0.7211,
        width * 0.2669,
        height * 0.7275,
        width * 0.2825,
        height * 0.7308,
      )
      ..close();

    final path6 = Path()
      ..moveTo(width * 0.5168, height * 0.4441)
      ..lineTo(width * 0.5168, height * 0.1893)
      ..lineTo(width * 0.7929, height * 0.1893)
      ..lineTo(width * 0.7929, height * 0.4441)
      ..lineTo(width * 0.5168, height * 0.4441)
      ..close();

    final path7 = Path()
      ..moveTo(width * 0.5502, height * 0.1893)
      ..lineTo(width * 0.5921, height * 0.1893)
      ..lineTo(width * 0.5921, height * 0.4441)
      ..lineTo(width * 0.5502, height * 0.4441)
      ..close()
      ..moveTo(width * 0.6339, height * 0.1893)
      ..lineTo(width * 0.6758, height * 0.1893)
      ..lineTo(width * 0.6758, height * 0.4441)
      ..lineTo(width * 0.6339, height * 0.4441)
      ..close()
      ..moveTo(width * 0.7176, height * 0.1893)
      ..lineTo(width * 0.7594, height * 0.1893)
      ..lineTo(width * 0.7594, height * 0.4441)
      ..lineTo(width * 0.7176, height * 0.4441)
      ..close();

    final path8 = Path()
      ..moveTo(width * 0.7929, height * 0.4672)
      ..lineTo(width * 0.7929, height * 0.6255)
      ..cubicTo(
        width * 0.7929,
        height * 0.7298,
        width * 0.7105,
        height * 0.7442,
        width * 0.6395,
        height * 0.7298,
      )
      ..cubicTo(
        width * 0.5823,
        height * 0.7181,
        width * 0.5168,
        height * 0.7298,
        width * 0.5168,
        height * 0.7298,
      )
      ..lineTo(width * 0.5168, height * 0.4672)
      ..lineTo(width * 0.7929, height * 0.4672)
      ..close();

    final path9 = Path()
      ..moveTo(width * 0.5586, height * 0.5096)
      ..lineTo(width * 0.5848, height * 0.4903)
      ..lineTo(width * 0.6172, height * 0.4903)
      ..lineTo(width * 0.6172, height * 0.5058)
      ..cubicTo(
        width * 0.6172,
        height * 0.5058,
        width * 0.6633,
        height * 0.5052,
        width * 0.7009,
        height * 0.5016,
      )
      ..cubicTo(
        width * 0.7385,
        height * 0.498,
        width * 0.75,
        height * 0.5241,
        width * 0.7385,
        height * 0.5308,
      )
      ..cubicTo(
        width * 0.727,
        height * 0.5376,
        width * 0.7405,
        height * 0.5637,
        width * 0.7385,
        height * 0.5762,
      )
      ..cubicTo(
        width * 0.7364,
        height * 0.5887,
        width * 0.7113,
        height * 0.607,
        width * 0.7175,
        height * 0.5965,
      )
      ..cubicTo(
        width * 0.7238,
        height * 0.5858,
        width * 0.7175,
        height * 0.5569,
        width * 0.7175,
        height * 0.5569,
      )
      ..cubicTo(
        width * 0.7175,
        height * 0.5569,
        width * 0.7103,
        height * 0.5791,
        width * 0.7039,
        height * 0.5858,
      )
      ..cubicTo(
        width * 0.6976,
        height * 0.5926,
        width * 0.6756,
        height * 0.5936,
        width * 0.684,
        height * 0.5878,
      )
      ..cubicTo(
        width * 0.6924,
        height * 0.582,
        width * 0.7008,
        height * 0.5695,
        width * 0.6934,
        height * 0.5627,
      )
      ..cubicTo(
        width * 0.6862,
        height * 0.556,
        width * 0.6533,
        height * 0.555,
        width * 0.6519,
        height * 0.5579,
      )
      ..cubicTo(
        width * 0.6506,
        height * 0.5607,
        width * 0.6444,
        height * 0.5945,
        width * 0.6402,
        height * 0.5965,
      )
      ..cubicTo(
        width * 0.6359,
        height * 0.5984,
        width * 0.6307,
        height * 0.5936,
        width * 0.6338,
        height * 0.583,
      )
      ..cubicTo(
        width * 0.637,
        height * 0.5723,
        width * 0.6338,
        height * 0.554,
        width * 0.6338,
        height * 0.554,
      )
      ..cubicTo(
        width * 0.6338,
        height * 0.554,
        width * 0.612,
        height * 0.553,
        width * 0.6129,
        height * 0.5618,
      )
      ..cubicTo(
        width * 0.614,
        height * 0.5704,
        width * 0.6234,
        height * 0.5743,
        width * 0.6214,
        height * 0.5811,
      )
      ..cubicTo(
        width * 0.6192,
        height * 0.5878,
        width * 0.6056,
        height * 0.5966,
        width * 0.6046,
        height * 0.585,
      )
      ..cubicTo(
        width * 0.6035,
        height * 0.5734,
        width * 0.5826,
        height * 0.5656,
        width * 0.592,
        height * 0.5599,
      )
      ..cubicTo(
        width * 0.6014,
        height * 0.5541,
        width * 0.6109,
        height * 0.545,
        width * 0.6109,
        height * 0.545,
      )
      ..cubicTo(
        width * 0.6109,
        height * 0.545,
        width * 0.5991,
        height * 0.5425,
        width * 0.5908,
        height * 0.5319,
      )
      ..cubicTo(
        width * 0.5824,
        height * 0.5213,
        width * 0.5754,
        height * 0.5223,
        width * 0.5586,
        height * 0.5223,
      )
      ..cubicTo(
        width * 0.5502,
        height * 0.5223,
        width * 0.5586,
        height * 0.5096,
        width * 0.5586,
        height * 0.5096,
      )
      ..close()
      ..moveTo(width * 0.5586, height * 0.6255)
      ..lineTo(width * 0.5848, height * 0.6062)
      ..lineTo(width * 0.6172, height * 0.6062)
      ..lineTo(width * 0.6172, height * 0.6216)
      ..cubicTo(
        width * 0.6172,
        height * 0.6216,
        width * 0.6633,
        height * 0.621,
        width * 0.7009,
        height * 0.6174,
      )
      ..cubicTo(
        width * 0.7385,
        height * 0.6139,
        width * 0.75,
        height * 0.6399,
        width * 0.7385,
        height * 0.6467,
      )
      ..cubicTo(
        width * 0.727,
        height * 0.6535,
        width * 0.7405,
        height * 0.6796,
        width * 0.7385,
        height * 0.6921,
      )
      ..cubicTo(
        width * 0.7364,
        height * 0.7046,
        width * 0.7113,
        height * 0.7229,
        width * 0.7175,
        height * 0.7124,
      )
      ..cubicTo(
        width * 0.7238,
        height * 0.7017,
        width * 0.7175,
        height * 0.6728,
        width * 0.7175,
        height * 0.6728,
      )
      ..cubicTo(
        width * 0.7175,
        height * 0.6728,
        width * 0.7103,
        height * 0.6949,
        width * 0.7039,
        height * 0.7017,
      )
      ..cubicTo(
        width * 0.6976,
        height * 0.7085,
        width * 0.6756,
        height * 0.7095,
        width * 0.684,
        height * 0.7036,
      )
      ..cubicTo(
        width * 0.6924,
        height * 0.6979,
        width * 0.7008,
        height * 0.6852,
        width * 0.6934,
        height * 0.6785,
      )
      ..cubicTo(
        width * 0.6862,
        height * 0.6718,
        width * 0.6533,
        height * 0.6708,
        width * 0.6519,
        height * 0.6736,
      )
      ..cubicTo(
        width * 0.6506,
        height * 0.6765,
        width * 0.6444,
        height * 0.7103,
        width * 0.6402,
        height * 0.7123,
      )
      ..cubicTo(
        width * 0.6359,
        height * 0.7141,
        width * 0.6307,
        height * 0.7094,
        width * 0.6338,
        height * 0.6987,
      )
      ..cubicTo(
        width * 0.637,
        height * 0.6881,
        width * 0.6338,
        height * 0.6698,
        width * 0.6338,
        height * 0.6698,
      )
      ..cubicTo(
        width * 0.6338,
        height * 0.6698,
        width * 0.612,
        height * 0.6688,
        width * 0.6129,
        height * 0.6775,
      )
      ..cubicTo(
        width * 0.614,
        height * 0.6862,
        width * 0.6234,
        height * 0.69,
        width * 0.6214,
        height * 0.6968,
      )
      ..cubicTo(
        width * 0.6192,
        height * 0.7036,
        width * 0.6056,
        height * 0.7124,
        width * 0.6046,
        height * 0.7007,
      )
      ..cubicTo(
        width * 0.6035,
        height * 0.6892,
        width * 0.5826,
        height * 0.6814,
        width * 0.592,
        height * 0.6756,
      )
      ..cubicTo(
        width * 0.6014,
        height * 0.6698,
        width * 0.6109,
        height * 0.6607,
        width * 0.6109,
        height * 0.6607,
      )
      ..cubicTo(
        width * 0.6109,
        height * 0.6607,
        width * 0.5991,
        height * 0.6582,
        width * 0.5908,
        height * 0.6477,
      )
      ..cubicTo(
        width * 0.5824,
        height * 0.637,
        width * 0.5754,
        height * 0.6381,
        width * 0.5586,
        height * 0.6381,
      )
      ..cubicTo(
        width * 0.5502,
        height * 0.6381,
        width * 0.5586,
        height * 0.6255,
        width * 0.5586,
        height * 0.6255,
      )
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors[2]))
      ..drawPath(path5, paintCreator(customColors.first))
      ..drawPath(path6, paintCreator(customColors[2]))
      ..drawPath(path7, paintCreator(customColors.first))
      ..drawPath(path8, paintCreator(customColors[2]))
      ..drawPath(path9, paintCreator(customColors.first))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
