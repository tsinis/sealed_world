import "dart:convert" show JsonCodec;

/// An interface that represents an object that can be encoded to JSON.
///
/// The [JsonEncodable] interface is used to represent objects that can be
/// encoded to JSON. The interface defines a `toJson` method that returns a
/// JSON-encoded string representation of the object.
///
/// The [T] type parameter is used to specify the type of the object that is
/// being encoded to JSON.
///
/// Example usage:
///
/// ```dart
/// class Person implements JsonEncodable<Person> {
///   const Person({
///     required this.name,
///     required this.age,
///   });
///
///   final String name;
///   final int age;
///
///   @override
///   String toJson({JsonCodec codec = const JsonCodec()}) {
///     return codec.encode({
///       'name': name,
///       'age': age,
///     });
///   }
/// }
/// ```
///
/// In this example, the `Person` class implements the `JsonEncodable`
/// interface with a `Person` type parameter. The class defines properties for
/// the person's name and age, and implements the `toJson` method to encode the
/// object to JSON.
abstract interface class JsonEncodable<T extends Object> {
  /// Returns a JSON-encoded string representation of the object.
  ///
  /// The optional [codec] parameter specifies the JSON codec to use for
  /// encoding the object (defaults to `JsonCodec()`).
  String toJson({JsonCodec codec = const JsonCodec()});

  /// A string separator used, for example, for joining JSON-encoded arrays.
  static const String separator = ",";
}
