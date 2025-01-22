import "package:l10n_countries/l10n_countries.dart" show CountriesLocaleMapper;
import "package:sealed_currencies/sealed_currencies.dart";

import "../../collections/world_country_collections.dart";
import "../../data/geo/continents.data.dart";
import "../../data/official_world_countries.data.dart";
import "../../data/other_world_countries.data.dart";
import "../../helpers/utils/typed_localization_delegate.dart";
import "../../helpers/world_country/world_country_json.dart";
import "../geo/region.dart";
import "../geo/submodels/continent.dart";
import "../locale/basic_typed_locale.dart";
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
sealed class Country implements Named<CountryName> {
  /// Creates a new `Country` object with the given `name`.
  ///
  /// The `name` parameter is required and must be a non-empty
  /// valid `CountryName` object that represents the name of the country.
  const Country({required this.name});

  /// The name of the country.
  @override
  final CountryName name;

  @override
  String toString({bool short = true}) => 'Country(name: "${name.common}")';
}
