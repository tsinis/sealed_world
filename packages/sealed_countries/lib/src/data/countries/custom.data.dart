part of "../../model/country/submodels/world_country.dart";

/// A class that represents a user-defined country instance.
final class CountryCustom extends WorldCountry {
  /// Creates a custom [WorldCountry] implementation for non-standard cases.
  const CountryCustom({
    required super.name,
    required super.code,
    super.altSpellings,
    super.areaMetric,
    super.codeNumeric,
    super.codeShort,
    super.continent,
    super.emoji,
    super.idd,
    super.latLng,
    super.maps,
    super.population,
    super.timezones,
    super.tld,
    super.currencies,
    super.capitalInfo,
    super.car,
    super.cioc,
    super.fifa,
    super.gini,
    super.hasCoatOfArms,
    super.independent,
    super.landlocked,
    super.postalCode,
    super.bordersCodes,
    super.startOfWeek,
    super.subregion,
    super.unMember,
    super.regionalBlocs,
    super.demonyms,
    super.languages,
    super.namesNative,
    super.mapper,
  }) : super._permissive();
}
