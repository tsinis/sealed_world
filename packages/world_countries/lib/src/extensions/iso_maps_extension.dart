import "package:world_flags/world_flags.dart";

import "../models/iso/iso_maps.dart";
import "../models/typedefs.dart";

/// Convenience helpers for working with [IsoMaps] instances.
extension IsoMapsExtension on IsoMaps {
  /// Creates a copy of this [IsoMaps] with selectively overridden data.
  /// Returns a copy of this instance with selective overrides.
  IsoMaps copyWith({
    TranslationMap<WorldCountry>? countryTranslations,
    TranslationMap<FiatCurrency>? currencyTranslations,
    TranslationMap<NaturalLanguage>? languageTranslations,
    Map<WorldCountry, BasicFlag>? countryFlags,
    Map<FiatCurrency, BasicFlag>? currencyFlags,
    Map<NaturalLanguage, BasicFlag>? languageFlags,
  }) => IsoMaps(
    countryTranslations: countryTranslations ?? this.countryTranslations,
    currencyTranslations: currencyTranslations ?? this.currencyTranslations,
    languageTranslations: languageTranslations ?? this.languageTranslations,
    countryFlags: countryFlags ?? this.countryFlags,
    currencyFlags: currencyFlags ?? this.currencyFlags,
    languageFlags: languageFlags ?? this.languageFlags,
  );
}
