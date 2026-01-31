import "dart:collection" show UnmodifiableListView;

import "package:flutter/foundation.dart" show immutable;

/// An immutable collection of searchable strings for international entities.
///
/// [SearchData] extends [UnmodifiableListView] to provide a
/// structured container for various name representations and identifiers that
/// can be used in search functionality. It automatically aggregates all
/// provided strings into a searchable list, filtering out null values.
///
/// This class is commonly used with searchable interfaces to enable efficient
/// searching across multiple name variations, codes, and alternative spellings
/// of entities like countries, currencies, and languages.
///
/// ## Common Use Cases
///
/// * Searching countries by their English name, native name, or ISO code.
/// * Looking up currencies by name, symbol, or alternative spellings.
/// * Finding languages by their localized names or language codes.
/// * Building autocomplete or picker widgets with rich search capabilities.
///
/// ## Example
///
/// ```dart
/// // Create search data for a country
/// final searchData = SearchData(
///   "Belarus",                    // International name
///   {"Беларусь"},                // Native names
///   code: "BY",                   // ISO code
///   name: "Belarus",              // Localized name
///   others: ["Byelarus"],         // Alternative spellings
/// );
///
/// // The resulting list contains: ["Belarus", "Беларусь", "Belarus", "BY", "Byelarus"]
/// print(searchData.first); // "Belarus"
/// print(searchData.code);  // "BY"
/// ```
///
/// ## Creating Empty Search Data
///
/// Use the [SearchData.empty] constructor when you need a placeholder or
/// default search data instance:
///
/// ```dart
/// final emptySearch = SearchData.empty(code: "XX");
/// ```
@immutable
class SearchData extends UnmodifiableListView<String> {
  /// Creates a [SearchData] instance with the specified search terms.
  ///
  /// The constructor automatically builds a searchable list by aggregating
  /// all provided strings in the following order:
  /// 1. [name] (if not null)
  /// 2. [namesNative] (all entries)
  /// 3. [internationalName]
  /// 4. [code]
  /// 5. [other] (if not null)
  /// 6. [others] (all entries, if not null)
  ///
  /// ## Parameters
  ///
  /// * [internationalName] — The primary name in English or international form.
  ///   This is typically used as the default display name when no localized
  ///   translation is available.
  ///
  /// * [namesNative] — A collection of native language names. For example,
  ///   a country's name in its official language(s).
  ///
  /// * [code] — The ISO or standardized code identifier (e.g., "US", "EUR").
  ///   This parameter is required and must not be null.
  ///
  /// * [name] — An optional localized name, typically in the user's preferred
  ///   language. When provided, it's placed first in the search list for
  ///   highest priority in search results.
  ///
  /// * [other] — An optional additional search term, such as a common
  ///   abbreviation or alias.
  ///
  /// * [others] — An optional collection of alternative spellings,
  ///   transliterations, or historical names.
  ///
  /// ## Example
  ///
  /// ```dart
  /// final japanSearch = SearchData(
  ///   "Japan",                     // internationalName
  ///   {"日本", "にほん"},           // namesNative
  ///   code: "JP",                  // code
  ///   name: "Japan",               // name (localized)
  ///   other: "JPN",               // other (3-letter code)
  ///   others: ["Nippon", "Nihon"], // others (transliterations)
  /// );
  /// ```
  /// .
  SearchData(
    this.internationalName,
    this.namesNative, {
    required this.code,
    required this.name,
    this.other,
    this.others,
  }) : super([
         ?name,
         ...namesNative,
         internationalName,
         code,
         ?other,
         ...?others,
       ]);

  /// Creates an empty [SearchData] instance with default values.
  ///
  /// This factory constructor is useful for creating placeholder search data
  /// or when you need a default instance with minimal information. Unlike the
  /// main constructor, all parameters are optional, making it flexible for
  /// various initialization scenarios.
  ///
  /// ## Parameters
  ///
  /// * [code] — The ISO or standardized code, defaults to an empty string.
  ///
  /// * [name] — An optional localized name.
  ///
  /// * [namesNative] — A collection of native names, defaults to an empty set.
  ///
  /// * [internationalName] — The international name, defaults to empty string
  ///   if not provided.
  ///
  /// * [other] — An optional additional search term.
  ///
  /// * [others] — An optional collection of alternative names.
  ///
  /// ## Example
  ///
  /// ```dart
  /// // Create minimal search data
  /// final placeholder = SearchData.empty(code: "XX");
  ///
  /// // Create search data with some fields
  /// final partial = SearchData.empty(
  ///   code: "US",
  ///   internationalName: "United States",
  /// );
  /// ```
  /// .
  SearchData.empty({
    this.code = "",
    this.name,
    this.namesNative = const {},
    String? internationalName,
    this.other,
    this.others,
  }) : internationalName = internationalName ?? "",
       super([
         ?name,
         ...namesNative,
         ?internationalName,
         code,
         ?other,
         ...?others,
       ]);

  /// The ISO or standardized code identifier.
  ///
  /// This is typically a 2-3 character code used in international standards,
  /// such as:
  /// * ISO 3166-1 alpha-2 country codes (e.g., "US", "GB", "JP").
  /// * ISO 4217 currency codes (e.g., "USD", "EUR", "JPY").
  /// * ISO 639 language codes (e.g., "en", "es", "zh").
  ///
  /// Example: `"BY"` for Belarus, `"USD"` for US Dollar.
  final String code;

  /// The primary name in English or international form.
  ///
  /// This serves as the fallback display name when no localized translation
  /// is available. It's typically in English but may be in another widely
  /// understood international language.
  ///
  /// Example: `"Belarus"`, `"Euro"`, `"Spanish"`.
  final String internationalName;

  /// The localized name in the user's preferred language.
  ///
  /// This optional field provides a translated version of the name appropriate
  /// for the current locale. When non-null, it's prioritized in the search
  /// list to ensure localized names appear first in search results.
  ///
  /// Example:
  /// * For Belarus in German: `"Belarus"`.
  /// * For Japan in French: `"Japon"`.
  /// * For Euro in Spanish: `"Euro"`.
  final String? name;

  /// A collection of names in native language(s).
  ///
  /// This contains the authentic name(s) in the entity's original language(s).
  /// For countries with multiple official languages, this may contain multiple
  /// entries.
  ///
  /// Examples:
  /// * Belarus: `{"Беларусь"}`.
  /// * Switzerland: `{"Schweiz", "Suisse", "Svizzera", "Svizra"}`.
  /// * Belgium: `{"België", "Belgique", "Belgien"}`.
  final Iterable<String> namesNative;

  /// An optional additional search term.
  ///
  /// This can be used for common abbreviations, alternative codes, or other
  /// frequently searched identifiers that don't fit into other categories.
  ///
  /// Example: `"USA"` for United States, `"UK"` for United Kingdom.
  final String? other;

  /// An optional collection of alternative names and spellings.
  ///
  /// This typically includes:
  /// * Historical names
  /// * Alternative spellings or transliterations
  /// * Common aliases or informal names
  /// * Previous official names
  ///
  /// Examples:
  /// * Czech Republic: `["Czechia", "Bohemia"]`.
  /// * Myanmar: `["Burma"]`.
  /// * Netherlands: `["Holland"]`.
  final Iterable<String>? others;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : 'SearchData("$internationalName", $namesNative, code: "$code", '
            'name: "$name", other: "$other", others: "$others")';
}
