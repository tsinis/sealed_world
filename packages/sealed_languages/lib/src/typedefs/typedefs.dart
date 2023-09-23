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
