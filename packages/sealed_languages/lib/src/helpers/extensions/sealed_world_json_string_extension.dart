import "dart:convert";

import "../../typedefs/typedefs.dart";

/// Extension on [String] that provides methods for parsing JSON strings.
extension SealedWorldJsonStringExtension on String {
  /// Parses the JSON string into an object of type [T].
  ///
  /// The [fromJson] function is used to convert the JSON map into an object of
  /// type [T]. The optional [codec] parameter can be used to specify a custom
  /// [JsonCodec] to use for decoding the JSON string.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jsonString = '{"name": "John", "age": 30}';
  /// final person = jsonString.parse(Person.fromJson);
  /// ```
  T parse<T>(
    T Function(JsonMap map) fromJson, {
    JsonCodec codec = const JsonCodec(),
  }) =>
      // ignore: avoid-type-casts, nature of JSON decoding
      fromJson(codec.decode(this) as JsonMap);

  /// Tries to parse the JSON string into an object of type [T].
  ///
  /// The [fromJson] function is used to convert the JSON map into an object of
  /// type [T]. The optional [codec] parameter can be used to specify a custom
  /// [JsonCodec] to use for decoding the JSON string.
  ///
  /// If the JSON string cannot be parsed, this method returns `null` exposing
  /// an exception occurred during parse process.
  ///
  /// Example usage:
  ///
  /// ```dart
  /// final jsonString = '{"name": "John", "age": 30}';
  /// final maybePerson = jsonString.tryParse(Person.fromJson);
  /// ```
  T? tryParse<T>(T? Function(JsonMap map)? fromJson, {JsonCodec? codec}) {
    final decoderCodec = codec ?? const JsonCodec();
    try {
      // ignore: avoid-type-casts, nature of JSON decoding
      final jsonMap = decoderCodec.decode(this) as JsonMap;

      return fromJson?.call(jsonMap);
      // ignore: avoid_catches_without_on_clauses, it's just some exception.
    } catch (_) {
      return null;
    }
  }
}
