// ignore_for_file: prefer-moving-to-variable, avoid-similar-names

part of "../multi_element_painter.dart";

/// Painter for the flag badge of the Pitcairn Islands.
///
/// Draws the gold anchor on a blue shield charged with a green pile.
final class PcnPainter extends UnionJackPainter {
  /// Creates a new instance of [PcnPainter].
  const new(super._properties, super.aspectRatio) : super.halfWithoutOutline();

  /// Width over height of the badge artwork.
  ///
  /// The badge keeps this ratio whatever ratio the flag itself is drawn at.
  static const _artworkRatio = 0.7038;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
    final bounds = proportionalBounds(size, _artworkRatio);
    final Rect(:height, :left, :top, :width) = bounds;

    final path = Path()
      ..moveTo(width * 0.0002, 0)
      ..lineTo(width, 0)
      ..lineTo(width, height * 0.5352)
      ..cubicTo(
        width,
        height * 0.7632,
        width * 0.5,
        height,
        width * 0.5,
        height,
      )
      ..cubicTo(width * 0.5, height, 0, height * 0.7676, 0, height * 0.5242)
      ..lineTo(width * 0.0002, 0)
      ..close();

    final path2 = Path()
      ..moveTo(width * 0.937, height * 0.6817)
      ..lineTo(width * 0.5059, height * 0.0808)
      ..lineTo(width * 0.0415, height * 0.6452)
      ..cubicTo(
        width * 0.1583,
        height * 0.8391,
        width * 0.4998,
        height,
        width * 0.4998,
        height,
      )
      ..cubicTo(
        width * 0.4998,
        height,
        width * 0.8042,
        height * 0.8544,
        width * 0.937,
        height * 0.6817,
      )
      ..close();

    final path3 = Path()
      ..moveTo(width * 0.706, height * 0.5336)
      ..cubicTo(
        width * 0.706,
        height * 0.5488,
        width * 0.6884,
        height * 0.5612,
        width * 0.6671,
        height * 0.5612,
      )
      ..lineTo(width * 0.3622, height * 0.5612)
      ..cubicTo(
        width * 0.3407,
        height * 0.5612,
        width * 0.3231,
        height * 0.5488,
        width * 0.3231,
        height * 0.5336,
      )
      ..cubicTo(
        width * 0.3231,
        height * 0.5184,
        width * 0.3407,
        height * 0.5062,
        width * 0.3622,
        height * 0.5062,
      )
      ..lineTo(width * 0.6671, height * 0.5062)
      ..cubicTo(
        width * 0.6884,
        height * 0.5062,
        width * 0.706,
        height * 0.5186,
        width * 0.706,
        height * 0.5336,
      )
      ..close();

    final path4 = Path()
      ..moveTo(width * 0.5337, height * 0.8173)
      ..cubicTo(
        width * 0.5337,
        height * 0.8385,
        width * 0.5258,
        height * 0.8559,
        width * 0.5161,
        height * 0.8559,
      )
      ..lineTo(width * 0.4839, height * 0.8559)
      ..cubicTo(
        width * 0.4742,
        height * 0.8559,
        width * 0.4663,
        height * 0.8386,
        width * 0.4663,
        height * 0.8173,
      )
      ..lineTo(width * 0.4663, height * 0.4523)
      ..cubicTo(
        width * 0.4663,
        height * 0.431,
        width * 0.4742,
        height * 0.4136,
        width * 0.4839,
        height * 0.4136,
      )
      ..lineTo(width * 0.5161, height * 0.4136)
      ..cubicTo(
        width * 0.5258,
        height * 0.4136,
        width * 0.5337,
        height * 0.4309,
        width * 0.5337,
        height * 0.4523,
      )
      ..lineTo(width * 0.5337, height * 0.8173)
      ..close();

    final path5 = Path()
      ..moveTo(width * 0.245, height * 0.6835)
      ..lineTo(width * 0.3673, height * 0.7734)
      ..lineTo(width * 0.3459, height * 0.7918)
      ..lineTo(width * 0.4839, height * 0.8559)
      ..lineTo(width * 0.6725, height * 0.7919)
      ..lineTo(width * 0.6323, height * 0.7741)
      ..lineTo(width * 0.7691, height * 0.7016)
      ..lineTo(width * 0.7494, height * 0.8242)
      ..lineTo(width * 0.6993, height * 0.814)
      ..lineTo(width * 0.5019, height * 0.9313)
      ..lineTo(width * 0.2944, height * 0.8074)
      ..lineTo(width * 0.2548, height * 0.8103)
      ..close();

    canvas
      ..save()
      ..translate(left, top)
      ..drawPath(path, paintCreator())
      ..drawPath(path2, paintCreator(customColors.first))
      ..drawPath(path3, paintCreator(customColors[1]))
      ..drawPath(path4, paintCreator(customColors[1]))
      ..drawPath(path5, paintCreator(customColors[1]))
      ..restore();

    return (canvas: canvas, bounds: bounds, child: property.child);
  }
}
