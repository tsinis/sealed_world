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

typedef IsoLocaleKey = ({String isoCode, String locale});

typedef LocaleMap = Map<IsoLocaleKey, String>;

typedef LocaleMapFunction<T extends Object> = Map<IsoLocaleKey, String>
    Function(
  Set<String> isoCodes, {
  bool useLanguageFallback,
  String? altSymbol,
  T? mainLocale,
  T? fallbackLocale,
});
