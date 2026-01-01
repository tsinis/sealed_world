import "../../interfaces/named.dart";

/// A class that represents a language.
///
/// A language is a system of communication consisting of sounds, words, and
/// grammar that is used by a group of people to communicate with each other.
class Language implements Named<String> {
  /// Creates a new instance of the [Language] class.
  ///
  /// The [name] parameter is required and should be a non-empty [String]
  /// representing the name of the language.
  const Language({required this.name})
    : assert(name.length > 0, "`name` should not be empty!");

  /// The name of the language.
  @override
  final String name;

  /// Returns a string representation of this [Language] object.
  @override
  String toString({bool short = true}) => 'Language(name: "$name")';
}
