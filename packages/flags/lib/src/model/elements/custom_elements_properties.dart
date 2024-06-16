import "dart:ui";

import "elements_properties.dart";

class CustomElementsProperties extends ElementsProperties {
  const CustomElementsProperties(
    super.mainColor, {
    this.otherColors = const [],
    super.x,
    super.y,
    super.heightFactor,
    super.widthFactor,
    super.angle,
  }) : super(shape: null);

  final List<Color> otherColors;

  @override
  String toString() =>
      "CustomElementsProperties($mainColor, otherColors: $otherColors, "
      "x: ${x.toStringAsFixed(1)}, y: ${y.toStringAsFixed(1)}, "
      "heightFactor: $heightFactor, widthFactor: $widthFactor, angle: $angle)";
}
