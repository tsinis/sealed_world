import "../../model/country/country.dart";
import "../extensions/country_submodels/country_name_extension.dart";

/// Provides extension methods for getting the names of a [WorldCountry] object.
extension WorldCountryNames on WorldCountry {
  /// Returns the official and native names of the country as a single string.
  ///
  /// The [separator] parameter is an optional string that determines the
  /// separator to use between the names. The [skipFirst] parameter is an
  /// optional boolean that determines whether to skip the first name in the
  /// list of names. The [orElse] parameter is an optional string that will be
  /// returned when [skipFirst] is true and there are fewer than two names
  /// (including empty collections). Returns a string representing the official
  /// and native names of the country, separated by [separator].
  String namesOfficialNative({
    String separator = "/",
    bool skipFirst = false,
    String? orElse,
  }) {
    final names = namesNative.map((i) => i.official).toSet();
    final length = names.length;
    if (orElse != null && skipFirst && length < 2) return orElse;
    // ignore: avoid-passing-self-as-argument, length is checked.
    if (skipFirst && length > 1) names.remove(names.first);

    return names.join(separator);
  }
}
