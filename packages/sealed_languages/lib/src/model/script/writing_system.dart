import "../../interfaces/named.dart";

/// A class that represents a writing system.
///
/// A writing system is a set of symbols used to represent the sounds of a
/// language. Examples of writing systems include the Latin alphabet, the
/// Cyrillic alphabet, the Chinese script, etc.
// TODO(tsinis): When making this `final`, also hide the
// `SealedWorldIterableExtension` from the public API, see the note there.
@Deprecated.subclass(
  "This class will be marked as `final` in the next major version to support "
  "deep immutability optimizations. Do not extend or implement this class.",
)
class WritingSystem implements Named<String> {
  /// Creates a new instance of [WritingSystem] with the specified name.
  ///
  /// The [name] parameter is a non-empty string that represents the name of
  /// the writing system.
  // ignore: deprecated_consistency, constructor cannot be annotated with it.
  const new({required this.name})
    : assert(name.length > 0, "`name` should not be empty!");

  @override
  final String name;

  @override
  String toString({bool short = true}) => 'WritingSystem(name: "$name")';
}
