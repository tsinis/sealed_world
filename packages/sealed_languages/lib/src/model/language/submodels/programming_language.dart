part of "../language.dart";

/// A class that represents a programming language.
///
/// A programming language is a formal language that is used to write computer
/// programs. Examples of programming languages include C++, Java, Python, Dart.
class ProgrammingLanguage extends Language {
  /// Creates a new instance of the [ProgrammingLanguage] class.
  ///
  /// The [name] parameter is required and should be a non-empty string
  /// representing the name of the programming language. The optional
  /// [isCompiled] parameter specifies whether the language is compiled
  /// (defaults to `true`). The optional [isLowLevel] parameter specifies
  /// whether the language is low-level (defaults to `false`).
  const ProgrammingLanguage({
    required super.name,
    this.isCompiled = true,
    this.isLowLevel = false,
  });

  /// Whether the programming language is compiled.
  final bool isCompiled;

  /// Whether the programming language is low-level.
  final bool isLowLevel;

  /// Returns a string representation of this [ProgrammingLanguage] object.
  ///
  /// The optional [short] parameter specifies whether to use a short format
  /// (defaults to `true`). If [short] is `true`, this method returns the same
  /// string as the [Language.toString] method. If [short] is `false`, this
  /// method returns a string that includes the [isCompiled] and [isLowLevel]
  /// properties of the programming language.
  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """ProgrammingLanguage(name: $name, isCompiled: $isCompiled, isLowLevel: $isLowLevel)""";
}
