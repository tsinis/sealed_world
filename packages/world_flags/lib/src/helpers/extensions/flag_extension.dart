import "dart:ui";

import "package:sealed_countries/sealed_countries.dart";

import "../../collections/properties_map.dart";
import "../../model/elements/custom_elements_properties.dart";
import "../../model/elements/elements_properties.dart";
import "../../model/flag_properties.dart";

extension FlagExtension on WorldCountry {
  FlagProperties? get flagProperties => flagPropertiesMap[this];

  List<Color> get flagColors =>
      List.unmodifiable([...flagStripeColors, ...flagElementsColors]);

  List<Color> get flagStripeColors => List.unmodifiable(
        flagProperties?.stripeColors.map((stripe) => stripe.color) ?? const [],
      );

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
