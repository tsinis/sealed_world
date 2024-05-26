import "package:sealed_countries/sealed_countries.dart";

import "colors_properties.dart";
import "elements_properties.dart";

class FlagProperties {
  const FlagProperties(
    this.colors, {
    this.aspectRatio = 3 / 2,
    this.isHorizontalStriped = true,
    this.elementsProperties,
    this.sameAs,
    this.url,
  });

  final List<ColorsProperties> colors;
  final List<ElementsProperties>? elementsProperties;

  /// Aspect ration of the flag. The aspect ratio is conventionally given
  /// as height to width, but in this package (and in CG in general) it is given
  /// as width to height.
  final double aspectRatio;
  final String? url;
  final WorldCountry? sameAs;

  /// Indicates whether the stripes on the flag are arranged horizontally.
  ///
  /// * If the value is `false`, the stripes run from left to right, i.e. Italy,
  /// France, Ireland, etc., like flags.
  /// * If the value is `true`, the stripes run from the bottom to the top, i.e.
  /// Russia, Germany, Poland, Latvia, etc., like flags.
  /// * If the value is `null`, it means that it is not clear whether the
  /// stripes are arranged horizontally or vertically, or the flag may not
  /// have any stripes at all.
  final bool? isHorizontalStriped;

  @override
  String toString() => "FlagProperties($colors, aspectRatio: $aspectRatio, "
      "isHorizontalStriped: $isHorizontalStriped, "
      "elementsProperties: $elementsProperties)";
}
