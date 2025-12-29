import "package:sealed_languages/sealed_languages.dart" show Named;

import "../../helpers/extensions/country_submodels/country_name_extension.dart";
import "submodels/country_name.dart";

export "submodels/world_country.dart";

/// A class representing a country.
class Country implements Named<CountryName> {
  /// Creates a new [Country] object with the given [name].
  ///
  /// The [name] parameter is required and must be a non-empty valid
  /// [CountryName] object that represents the name of the country.
  const Country({required this.name});

  /// The name of the country.
  @override
  final CountryName name;

  @override
  String toString({bool short = true}) =>
      short ? name.common : 'Country(name: $name)';
}
