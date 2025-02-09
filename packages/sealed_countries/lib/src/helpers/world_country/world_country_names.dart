import "../../model/country/country.dart";
import "../../model/country/submodels/country_name.dart";
import "../extensions/country_submodels/country_name_extension.dart";

/// Provides extension methods for getting the names of a [WorldCountry] object.
extension WorldCountryNames on WorldCountry {
  /// Returns the common and native names of the country as a single string.
  ///
  /// The `separator` parameter is an optional string that determines the
  /// separator to use between the names. The `skipFirst` parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. Returns a string representing the common and native names
  /// of the country, separated by `separator`.
  String namesCommonNative({String separator = "/", bool skipFirst = false}) =>
      _namesNativeBuilder(
        (countryName) => countryName.common,
        separator: separator,
        skipFirst: skipFirst,
      );

  /// Returns the official and native names of the country as a single string.
  ///
  /// The `separator` parameter is an optional string that determines the
  /// separator to use between the names. The `skipFirst` parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. Returns a string representing the official and native names
  /// of the country, separated by `separator`.
  String namesOfficialNative({
    String separator = "/",
    bool skipFirst = false,
  }) =>
      _namesNativeBuilder(
        (countryName) => countryName.official,
        separator: separator,
        skipFirst: skipFirst,
      );

  String _namesNativeBuilder(
    String Function(CountryName countryName) toName, {
    String separator = "/",
    bool skipFirst = false,
  }) {
    final names = namesNative.map(toName).toSet();
    // ignore: avoid-passing-self-as-argument, length is checked.
    if (skipFirst && names.length > 1) names.remove(names.first);

    return names.join(separator);
  }
}
