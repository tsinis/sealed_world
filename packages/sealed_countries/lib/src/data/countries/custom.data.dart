part of "../../model/country/submodels/world_country.dart";

/// A class that represents a user-defined country instance.
final class CountryCustom extends WorldCountry {
  /// Creates a custom [WorldCountry] implementation for non-standard cases.
  /// {@macro country_constructor}
  /// {@macro permissive_constructor}
  const CountryCustom({
    super.code,
    super.codeNumeric,
    super.codeShort,
    super.altSpellings,
    super.areaMetric,
    super.bordersCodes,
    super.capitalInfo,
    super.car,
    super.cioc,
    super.continent,
    super.currencies,
    super.demonyms,
    super.emoji,
    super.fifa,
    super.gini,
    super.hasCoatOfArms,
    super.idd,
    super.independent,
    super.landlocked,
    super.languages,
    super.latLng,
    super.mapper,
    super.maps,
    super.name,
    super.namesNative,
    super.population,
    super.postalCode,
    super.regionalBlocs,
    super.startOfWeek,
    super.subregion,
    super.timezones,
    super.tld,
    super.unMember,
  }) : super._permissive();
}
