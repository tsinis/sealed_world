import "package:sealed_countries/sealed_countries.dart" show WorldCountry;

import "../../ui/country_flag.dart";

/// An extension on [CountryFlag] to provide additional properties and methods.
extension CountryFlagExtension on CountryFlag {
  /// The country for which the flag is to be displayed.
  WorldCountry get country => item;
}
