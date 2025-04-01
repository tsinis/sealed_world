import "dart:ui" show Color;

import "package:sealed_countries/sealed_countries.dart";

import "../../collections/properties_map.dart";
import "../../model/elements/custom_elements_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/flag_properties.dart";

/// Extension on [WorldCountry] to provide flag-related properties and colors.
extension FlagExtension on WorldCountry {
  /// Retrieves the [FlagProperties] associated with the default [WorldCountry].
  FlagProperties? get flagProperties => flagPropertiesMap[this];

  /// Combines [flagStripeColors] and [flagElementsColors] into a single list of
  /// colors.
  List<Color> get flagColors =>
      List.unmodifiable([...flagStripeColors, ...flagElementsColors]);

  /// Retrieves the stripe colors of the flag from [FlagProperties].
  List<Color> get flagStripeColors => List.unmodifiable(
    flagProperties?.stripeColors.map((stripe) => stripe.color) ?? const [],
  );

  /// Retrieves the element colors of the flag from [FlagProperties]. If the
  /// elements have custom properties, their additional colors are included.
  List<Color> get flagElementsColors {
    final colors = <Color>[];
    final properties = flagProperties?.elementsProperties;

    for (final props in properties ?? const <ElementsProperties>[]) {
      if (props is CustomElementsProperties) colors.addAll(props.otherColors);
      colors.add(props.mainColor);
    }

    return List.unmodifiable(colors);
  }
}
