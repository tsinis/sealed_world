import "package:flutter/rendering.dart";

import "../../../data/flags_map_part_1.data.dart";
import "../../../data/flags_map_part_2.data.dart";
import "../../../model/typedefs.dart";
import "../basic/custom_elements_painter.dart";
import "../basic/flag_test_properties.dart";

/// Painter for the Saudi Arabia and Afghanistan flag.
final class ShahadaPainter extends CustomElementsPainter {
  /// Creates a new instance of [ShahadaPainter] for the Saudi Arabia flag.
  const ShahadaPainter.sau(super.properties, super.aspectRatio)
    : _hasSabre = true;

  /// Creates a new instance of [ShahadaPainter] for the Afghanistan flag.
  const ShahadaPainter.afg(super.properties, super.aspectRatio)
    : _hasSabre = false;

  final bool _hasSabre;

  @override
  double get originalAspectRatio =>
      _hasSabre ? flagSauProperties.aspectRatio : flagAfgProperties.aspectRatio;

  static const _widthScale = 0.3;

  @override
  FlagParentBounds paintFlagElements(Canvas canvas, Size size) {
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
      text: "لَا إِلٰهَ إِلَّا اللَّٰه مُحَمَّدٌ رَسُولُ اللَّٰه",
      style: flagTextStyleOverride.copyWith(
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
        (width - text.width / 2 * _widthScale / 2) - center.dx,
        center.dy - text.height / 2,
      ),
    );
    canvas.restore();

    if (_hasSabre) canvas.drawRect(rectangle, paintCreator());

    return (canvas: canvas, bounds: rectangle, child: property.child);
  }
}
