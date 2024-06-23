import "dart:ui" show Color;

import "elements_properties.dart";

class CustomElementsProperties extends ElementsProperties {
  const CustomElementsProperties(
    super.mainColor, {
    this.otherColors = const [],
    super.offset,
    super.heightFactor,
    super.widthFactor,
    super.angle,
  }) : super(shape: null);

  final List<Color> otherColors;
}
