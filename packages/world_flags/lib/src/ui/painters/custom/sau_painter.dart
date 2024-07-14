import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";

final class SauPainter extends CustomElementsPainter {
  const SauPainter(super.properties, super.aspectRatio);

  @override
  double get originalAspectRatio => flagSauProperties.aspectRatio;

  static const _widthScale = 0.3;

  @override
  FlagParentBounds? paintFlagElements(
    Canvas canvas,
    Size size, [
    FlagParentBounds? parent,
  ]) {
    final adjustedSize = ratioAdjustedSize(size, minRatio: 2);
    final center = calculateCenter(size);
    final height = adjustedSize.height;
    final width = adjustedSize.width;
    final rectWidth = width * 0.375;
    final rectHeight = height / 10;
    final rectLeft = (width - rectWidth) / 2;
    final rectangle = Rect.fromLTWH(
      rectLeft,
      size.height * 1.07 / aspectRatio,
      rectWidth,
      rectHeight,
    );
    final textSpan = TextSpan(
      // ignore: avoid-non-ascii-symbols, text on the flag.
      text: 'لَا إِلٰهَ إِلَّا اللَّٰه مُحَمَّدٌ رَسُولُ اللَّٰه',
      style: TextStyle(
        inherit: false,
        color: property.mainColor,
        fontSize: height,
      ),
    );

    final text = TextPainter(text: textSpan, textDirection: TextDirection.rtl)
      ..layout();

    canvas
      ..save()
      ..scale(_widthScale, 1);
    text.paint(
      canvas,
      Offset(
        width - text.width / 2 * _widthScale / 2,
        center.dy - text.height / 2,
      ),
    );
    canvas
      ..restore()
      ..drawRect(rectangle, paintCreator());

    return (canvas: canvas, bounds: rectangle, child: property.child);
  }
}
