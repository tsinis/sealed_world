part "regional_bloc.dart";

/// The `WorldBloc` class is an abstract class that represents a world
/// bloc. It consists of a `String` values that represents the name and acronym
/// of the WorldBloc. The `name` and `acronym` fields are required and must
/// not be empty (if provided).
/// ```
sealed class WorldBloc {
  /// Creates a new `WorldBloc` object with the given name.
  ///
  /// The `name` and `acronym` parameters are required and must not be empty
  /// (if provided).
  const WorldBloc({required this.name, this.acronym})
      : assert(name.length > 0, "`name` should not be empty!"),
        assert(
          acronym == null || acronym.length > 0,
          "`acronym` should not be empty!",
        );

  /// The acronym of the bloc.
  final String? acronym;

  /// The name of the bloc.
  final String name;

  @override
  String toString() => "WorldBloc(name: $name, acronym: $acronym)";
}
