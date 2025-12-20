import "package:sealed_currencies/sealed_currencies.dart";

import "../../collections/regional_bloc_collections.dart";
import "../../data/regional_bloc/regional_bloc.data.dart";

part "regional_bloc.dart";

/// The [WorldBloc] class is an abstract class that represents a world
/// bloc. It consists of a [String] values that represents the name and acronym
/// of the WorldBloc. The [name] and [acronym] fields are required and must
/// not be empty (if provided).
sealed class WorldBloc implements Named<String> {
  /// Creates a new [WorldBloc] object with the given name.
  ///
  /// The [name] and [acronym] parameters are required and must not be empty
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
  @override
  final String name;

  @override
  String toString({bool short = true}) => short
      ? 'WorldBloc(name: "$name")'
      : '''WorldBloc(name: "$name"${acronym == null ? '' : ', acronym: "$acronym"'})''';
}
