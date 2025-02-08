import "../../model/country/country.dart";

/// A class extension that adds utility methods to the [WorldCountry] class.
extension WorldCountryGetters on WorldCountry {
  /// Returns `true` if this [WorldCountry] object is officially assigned.
  bool get isOfficiallyAssigned =>
      codeShort.isNotEmpty &&
      code.isNotEmpty &&
      codeNumeric.isNotEmpty &&
      tld.isNotEmpty;

  /// Returns the ISO 3166-1 Alpha-3 code of country.
  ///
  /// Provides same data as [code].
  String get iso3166oneAlpha3 => code;

  /// Returns the ISO 3166-1 Alpha-2 code of country.
  ///
  /// Provides same data as [codeShort].
  String get iso3166oneAlpha2 => codeShort;

  /// Returns the ISO 3166-1 Numeric code of country.
  ///
  /// Provides same data as [codeNumeric].
  String get iso3166oneNumeric => codeNumeric;
}
