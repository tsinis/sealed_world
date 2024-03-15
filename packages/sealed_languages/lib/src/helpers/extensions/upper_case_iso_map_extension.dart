import "../../interfaces/iso_standardized.dart";
import "../../model/core/upper_case_iso_map.dart";

/// Extension methods for the [UpperCaseIsoMap] class.
extension UpperCaseIsoMapExtension<V extends IsoStandardized>
    on UpperCaseIsoMap<V> {
  /// Retrieves the value associated with the given ISO code.
  ///
  /// Uses the ISO standardized key to look up a value in the map. If the key is
  /// found, the corresponding value is returned. Otherwise, it returns the
  /// [defaultValue] if it is specified (not specified by default),
  /// or `null` if not.
  V? findByCode(Object? code) => this[code];

  /// Creates a copy of [UpperCaseIsoMap] with a new map of ISO codes to values.
  ///
  /// This factory takes an existing map of string keys to [IsoStandardized]
  /// values and creates a new instance of [UpperCaseIsoMap]. The keys in the
  /// provided map are processed to ensure that they are in uppercase and
  /// trimmed of leading and trailing whitespace, following ISO standardized
  /// rules for code representation.
  ///
  /// If a key appears in different cases (e.g., 'en' and 'EN'), the uppercase
  /// version of the key will take precedence, and its associated value will be
  /// used in the resulting [UpperCaseIsoMap]. This ensures case-insensitive
  /// access to the values by their ISO codes.
  ///
  /// The [defaultValue] parameter allows specifying a default value that will
  /// be returned by the [UpperCaseIsoMap] when a key is not found. If not
  /// provided, the default value will be `null`.
  ///
  /// Usage:
  /// ```dart
  /// final originalMap = {'en': LangEng(), 'fr': LangFra()};
  /// final upperCaseIsoMap = UpperCaseIsoMap.copyWith(originalMap,
  /// defaultValue: LangEng());
  ///
  /// // Accessing 'EN' or 'en' will return LangEng()
  /// final english = upperCaseIsoMap['En']; // Returns LangEng()
  /// final french = upperCaseIsoMap['FR'];  // Returns LangFra()
  /// final unknown = upperCaseIsoMap['DE']; // Returns LangEng(): default value
  /// ```
  ///
  /// - Parameters:
  ///   - [map]: The original map of string ISO codes to [IsoStandardized]
  ///     values to be used as the basis for the new [UpperCaseIsoMap].
  ///   - [defaultValue]: An optional default value to return when a key is not
  ///     found within the new [UpperCaseIsoMap].
  /// - Returns: A new instance of [UpperCaseIsoMap] containing the provided ISO
  ///   codes and values, with keys standardized to uppercase.
  UpperCaseIsoMap<V> copyWith(Map<String, V> other, {V? defaultValue}) {
    final upperCase = other.map((k, v) => MapEntry(k.trim().toUpperCase(), v));
    final newMap = Map.fromEntries(entries.followedBy(upperCase.entries));
    final list = List<String>.unmodifiable(newMap.keys);
    final short = list.map((key) => key.length).reduce((a, b) => a < b ? a : b);
    final hasSameLength = list.every((key) => key.length == short);
    final value = defaultValue ?? this.defaultValue;

    if (hasSameLength) {
      return UpperCaseIsoMap(newMap, defaultValue: value, exactLength: short);
    }

    final longest = list.map((k) => k.length).reduce((a, b) => a > b ? a : b);

    return UpperCaseIsoMap(
      newMap,
      defaultValue: value,
      exactLength: null,
      maxLength: longest,
      minLength: short,
    );
  }
}
