
import "package:currencies_dart/currencies_dart.dart";
import "package:languages_dart/languages_dart.dart";

import "../../data/official_world_countries.dart";
import "../../data/other_world_countries.dart";
import "../geo/region.dart";
import "../geo/submodels/continent.dart";
import "submodels/capital_info.dart";
import "submodels/car.dart";
import "submodels/country_name.dart";
import "submodels/demonyms.dart";
import "submodels/gini.dart";
import "submodels/idd.dart";
import "submodels/maps.dart";
import "submodels/postal_code.dart";
import "submodels/weekday.dart";

part "submodels/world_country.dart";

sealed class Country {
  const Country({required this.name});

  final CountryName name;

  @override
  String toString() => "Country(name: ${name.common})";
}
