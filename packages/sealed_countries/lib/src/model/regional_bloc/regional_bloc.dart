part of "world_bloc.dart";

/// The `RegionalBloc` class is an non-abstract class that represents a regional
/// bloc. It consists of a `String` values that represents the name and acronym
/// of the regional bloc. The `name` and `acronym` fields are required and must
/// not be empty. The `otherAcronyms` and `otherNames` fields are non-required.
///
/// Example usage:
///
/// ```dart
/// class SomeBloc extends RegionalBloc {
///   const SomeBloc({required super.name});
/// }
///
/// final bloc = SomeBloc(name: "Some Bloc", acronym: "SB");
/// print(bloc.name); // Prints: "Some Bloc"
/// ```
class RegionalBloc extends WorldBloc {
  /// Creates a new `RegionalBloc` object with the given name.
  ///
  /// The `name` and `acronym` parameters are required and must not be empty.
  const RegionalBloc({
    required String acronym,
    required super.name,
    this.otherAcronyms,
    this.otherNames,
  }) : super(acronym: acronym);

  /// Creates a new `RegionalBloc` object from its acronym.
  factory RegionalBloc.fromAcronym(String acronym) => list.firstWhere(
        (bloc) => bloc.acronym == acronym.trim().toUpperCase(),
      );

  /// Creates a new `RegionalBloc` object from its name.
  factory RegionalBloc.fromName(String name) => list.firstWhere(
        (bloc) => bloc.name.toUpperCase() == name.trim().toUpperCase(),
      );

  /// Other acronyms of the regional bloc.
  final List<String>? otherAcronyms;

  /// Other names of the regional bloc.
  final List<String>? otherNames;

  @override
  // ignore: avoid-non-null-assertion, field is non-nullable in this class.
  String get acronym => super.acronym!;

  @override
  String toString({bool short = true}) => short
      ? super.toString()
      : """RegionalBloc(acronym: $acronym, name: $name, otherAcronyms: $otherAcronyms, otherNames: $otherNames)""";

  /// Creates a new `RegionalBloc` object from a value.
  ///
  /// The `value` parameter is the value to be compared to the acronym of each
  /// RegionalBloc in the `RegionalBlocs` list. If the `value` parameter matches
  /// the acronym of a RegionalBloc, a new `RegionalBloc` object representing
  /// that regional bloc is returned. If there is no match, `null` is returned.
  /// If the `where` parameter is provided, it is used to determine the value to
  /// compare for each regional bloc.
  ///
  /// The `regionalBlocs` parameter is the list of regional blocs to search. If
  /// no value is provided, the `list` constant is used.
  static RegionalBloc? maybeFromValue<T extends Object>(
    T value, {
    T? Function(RegionalBloc regionalBloc)? where,
    Iterable<RegionalBloc> regionalBlocs = list,
  }) {
    assert(regionalBlocs.isNotEmpty, "`regionalBlocs` should not be empty!");
    for (final regionalBloc in regionalBlocs) {
      final expectedValue = where?.call(regionalBloc) ?? regionalBloc.acronym;
      if (expectedValue == value) return regionalBloc;
    }

    return null;
  }

  /// The list of all regional blocs in the world.
  static const list = [
    BlocAL(),
    BlocASEAN(),
    BlocAU(),
    BlocCAIS(),
    BlocCARICOM(),
    BlocCEFTA(),
    BlocEEU(),
    BlocEFTA(),
    BlocEU(),
    BlocNAFTA(),
    BlocPA(),
    BlocSAARC(),
    BlocUSAN(),
  ];
}
