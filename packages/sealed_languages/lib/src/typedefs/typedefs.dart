/// A type alias for a JSON-encoded map.
///
/// The [JsonMap] type alias is used to represent a map that has been encoded to
/// JSON. The map should have string keys and dynamic values.
///
/// Example usage:
///
/// ```dart
/// final json = '{"name": "John", "age": 30}';
/// final map = jsonDecode(json) as JsonMap;
///
/// print(map['name']); // Output: John
/// print(map['age']); // Output: 30
/// ```
///
/// In this example, the `JsonMap` type alias is used to represent a map that
/// has been encoded to JSON. The `jsonDecode` function is used to decode a JSON
/// string into a `JsonMap` object. The `map` object can then be accessed using
/// string keys to retrieve the values.
typedef JsonMap = Map<String, dynamic>;

/// A typedef representing a JSON-encoded map with string keys and [Object?]
/// values.
///
/// The `JsonObjectMap` type is used to represent a map-like structure commonly
/// found in JSON-encoded data. It has string keys and [Object?] values, where
/// [Object?] represents a nullable value of any type. This typedef is typically
/// used to improve code readability and provide a more expressive type
/// annotation.
///
/// Example usage:
/// ```dart
/// JsonObjectMap user = {
///   'name': 'John Doe',
///   'age': 30,
///   'email': null,
/// };
/// ```
///
/// Note: JSON-encoded maps can contain values of different types, including
/// null. The [Object?] type allows for flexibility in handling different value
/// types.
///
/// See also:
///   - [Map], the built-in Dart class representing a map.
///   - [JsonMap], the type alias for a JSON-encoded map.
typedef JsonObjectMap = Map<String, Object?>;

/// A record type representing a key for ISO locale mappings.
///
/// Fields:
/// - `isoCode`: The ISO standard code (e.g. country or currency code).
/// - `locale`: The Unicode locale identifier for the translation.
typedef IsoLocaleKey = ({String isoCode, String locale});

/// A map type that associates [IsoLocaleKey]s with their localized string
/// values.
typedef LocaleMap = Map<IsoLocaleKey, String>;

/// A function type that maps ISO codes to their localized strings.
///
/// Type parameter [T] represents the type of locale identifier.
///
/// Parameters:
/// - [isoCodes]: Set of ISO codes to be mapped.
/// - [useLanguageFallback]: Whether to try language-only codes if specific
/// locale not found.
/// - [altSymbol]: Symbol used to mark alternative names.
/// - [mainLocale]: Primary locale for translation lookup.
/// - [fallbackLocale]: Secondary locale used when translation not found in main
/// locale.
///
/// Returns a [LocaleMap] containing the mapped localized strings.
///
/// Example:
/// ```dart
/// {
///   (isoCode: 'USA', locale: 'en_US'): 'United States',
///   (isoCode: 'USA', locale: 'es'): 'Estados Unidos',
/// }
/// ```
typedef LocaleMapFunction<T extends Object> =
    Map<IsoLocaleKey, String> Function(
      Set<String> isoCodes, {
      bool useLanguageFallback,
      String? altSymbol,
      T? mainLocale,
      T? fallbackLocale,
    });
