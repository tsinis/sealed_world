/// A record type representing a key for ISO locale mappings.
///
/// Fields:
/// - `isoCode`: The ISO standard code (e.g. language or country code).
/// - `locale`: The locale identifier for the translation.
typedef LocaleKey = ({String isoCode, String locale});

/// A map type that associates [LocaleKey]s with their localized string values.
typedef LocaleMap = Map<LocaleKey, String>;

/// A class that handles mapping between ISO codes and their localized values.
///
/// Type parameter [V] represents the type of values being mapped, must be
/// non-null.
class IsoLocaleMapper<V extends Object> {
  /// Creates an [IsoLocaleMapper] instance.
  ///
  /// Parameters:
  /// - [other]: Optional initial mapping data.
  IsoLocaleMapper({Map<String, V>? other, this.availableLocales = const {}})
    : map = other ?? {};

  /// The internal mapping between ISO codes and their values.
  final Map<String, V> map;

  /// Returns all available locale keys (both lazy and already instantiated).
  final Set<String> availableLocales;

  /// Generates an alternative key by appending a symbol to the original key.
  ///
  /// Parameters:
  /// - [key]: The original ISO code
  /// - [altSymbol]: Symbol to append for alternative key
  ///
  /// Returns null if [altSymbol] is empty, otherwise returns [key] +
  /// [altSymbol].
  String? altKey(String key, String altSymbol) =>
      altSymbol.isEmpty ? null : key + altSymbol;

  /// Extracts values for specified keys from the internal map.
  ///
  /// Parameters:
  /// - [keys]: Optional collection of ISO codes to extract
  /// - [altSymbol]: Symbol used for alternative keys, defaults to empty string
  ///
  /// Returns a map containing the extracted values. If [keys] is null and [map]
  /// is not empty, returns the entire [map].
  Map<String, V> extract(Iterable<String>? keys, {String altSymbol = ""}) {
    final uniqueKeys = keys?.toSet();
    if (uniqueKeys == null && map.isNotEmpty) return map;

    final results = <String, V>{};
    for (final key in uniqueKeys ?? const <String>{}) {
      final value = map[key];
      if (value != null) results[key] = value;
      final secondary = altKey(key, altSymbol);
      if (secondary == null) continue;

      final altValue = map[secondary];
      if (altValue != null) results[secondary] = altValue;
    }

    return results;
  }
}
