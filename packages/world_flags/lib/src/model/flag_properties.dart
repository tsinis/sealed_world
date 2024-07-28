import "package:flutter/foundation.dart";

import "../constants/flag_constants.dart";
import "colors_properties.dart";
import "elements/elements_properties.dart";
import "stripe_orientation.dart";

@immutable
class FlagProperties {
  const FlagProperties(
    this.stripeColors, {
    this.aspectRatio = FlagConstants.defaultAspectRatio,
    this.stripeOrientation = StripeOrientation.horizontal,
    this.elementsProperties,
    this.url = "",
  });
  // TODO! Add assert for stripeColors.length > 0.

  final List<ColorsProperties> stripeColors;
  final List<ElementsProperties>? elementsProperties;

  /// Aspect ration of the flag. The aspect ratio is conventionally given
  /// as height to width, but in this package (and in CG in general) it is given
  /// as width to height.
  final double aspectRatio;
  final StripeOrientation stripeOrientation;
  @visibleForTesting
  final String url;

  @override
  String toString() =>
      "FlagProperties($stripeColors, aspectRatio: $aspectRatio, "
      "stripeOrientation: $stripeOrientation, url: $url, "
      "elementsProperties: $elementsProperties)";
}
