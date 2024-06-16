import "colors_properties.dart";
import "elements/elements_properties.dart";
import "stripe_orientation.dart";

class FlagProperties {
  const FlagProperties(
    this.colors, {
    this.aspectRatio = 3 / 2,
    this.stripeOrientation = StripeOrientation.horizontal,
    this.elementsProperties,
    this.url = "",
  });

  final List<ColorsProperties> colors;
  final List<ElementsProperties>? elementsProperties;

  /// Aspect ration of the flag. The aspect ratio is conventionally given
  /// as height to width, but in this package (and in CG in general) it is given
  /// as width to height.
  final double aspectRatio;
  final String url;
  final StripeOrientation stripeOrientation;

  @override
  String toString() => "FlagProperties($colors, aspectRatio: $aspectRatio, "
      "stripeOrientation: $stripeOrientation, url: $url, "
      "elementsProperties: $elementsProperties)";
}
