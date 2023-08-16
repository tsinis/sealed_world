import "package:sealed_currencies/sealed_currencies.dart";
import "package:sealed_languages/sealed_languages.dart";

import "../../data/official_world_countries.data.dart";
import "../../data/other_world_countries.data.dart";
import "../geo/region.dart";
import "../geo/submodels/continent.dart";
import "../regional_bloc/world_bloc.dart";
import "submodels/capital_info.dart";
import "submodels/car.dart";
import "submodels/country_name.dart";
import "submodels/demonyms.dart";
import "submodels/gini.dart";
import "submodels/idd.dart";
import "submodels/lat_lng.dart";
import "submodels/maps.dart";
import "submodels/postal_code.dart";
import "submodels/weekday.dart";

part "submodels/world_country.dart";
part "submodels/world_country.g.dart";

/// A sealed class representing a country.
sealed class Country {
  /// Creates a new `Country` object with the given `name`.
  ///
  /// The `name` parameter is required and must be a non-empty
  /// valid `CountryName` object that represents the name of the country.
  const Country({required this.name});

  /// The name of the country.
  final CountryName name;

  @override
  String toString() => "Country(name: ${name.common})";
}
