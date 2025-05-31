// ignore_for_file: prefer-static-class, it's referenced as static in extension.
import "package:sealed_currencies/sealed_currencies.dart";

import "../data/official_world_countries.data.dart";
import "../model/country/country.dart";

/// Collection of currencies and their associated (unofficial) countries (based
/// on usage and historical significance).
const unofficialCurrenciesCountryMap = <FiatCurrency, List<WorldCountry>>{
  FiatHrk(): [CountryHrv()], // ignore: deprecated_member_use, it's TODO!
  FiatClf(): [CountryChl()],
  FiatSle(): [CountrySle()],
  FiatSvc(): [CountrySlv()],
};
