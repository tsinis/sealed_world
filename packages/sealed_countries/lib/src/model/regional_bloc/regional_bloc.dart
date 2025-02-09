part of "world_bloc.dart";

/// The [RegionalBloc] class is an non-abstract class that represents a regional
/// bloc. It consists of a [String] values that represents the name and acronym
/// of the regional bloc. The [name] and [acronym] fields are required and must
/// not be empty. The [otherAcronyms] and [otherNames] fields are optional.
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
  /// Creates a new [RegionalBloc] object with the given name.
  ///
  /// The [name] and [acronym] parameters are required and must not be empty.
  const RegionalBloc({
    required String super.acronym,
    required super.name,
    this.otherAcronyms,
    this.otherNames,
  });

  /// Creates a new [RegionalBloc] object from its [acronym].
  ///
  /// The [acronym] parameter is required and must be a valid bloc acronym.
  /// {@macro any_code_object}
  /// Returns a [RegionalBloc] object that represents the bloc with the given
  /// code or throws a [StateError] if no such bloc exists.
  ///
  /// The optional [blocs] parameter can be used to specify a list of
  /// [RegionalBloc] objects to search through.
  /// {@macro optional_instances_array_parameter}
  factory RegionalBloc.fromAcronym(
    Object acronym, [
    Iterable<RegionalBloc>? blocs,
    // ignore: avoid-non-empty-constructor-bodies, more clear for factory methods.
  ]) {
    final string = acronym.toUpperCaseIsoCode();
    if (blocs == null) return map[string]!;

    return list.firstWhere((bloc) => bloc.acronym == string);
  }

  /// Creates a new [RegionalBloc] object from its name.
  factory RegionalBloc.fromName(String name) => list.firstWhere(
        (bloc) => bloc.name.toUpperCase() == name.toUpperCaseIsoCode(),
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
      : 'RegionalBloc(acronym: "$acronym", name: "$name", '
          "otherAcronyms: ${jsonEncode(otherAcronyms)}, "
          "otherNames: ${jsonEncode(otherNames)})";

  /// Creates a new [RegionalBloc] object from its acronym.
  ///
  /// Returns an [RegionalBloc] object from the given [acronym], or `null`
  /// if not found.
  ///
  /// The [acronym] parameter is required and must be a valid bloc acronym.
  /// {@macro any_code_object}
  /// Returns a [RegionalBloc] object that represents the bloc with the given
  /// code if no such bloc exists.
  ///
  /// The optional [blocs] parameter can be used to specify a list of
  /// [RegionalBloc] objects to search through.
  /// {@macro optional_instances_array_parameter}
  static RegionalBloc? maybeFromAcronym(
    Object? acronym, [
    Iterable<RegionalBloc>? blocs,
  ]) {
    if (acronym == null) return null;
    final string = acronym.toUpperCaseIsoCode();
    if (blocs == null) return map[string];

    for (final bloc in blocs) {
      if (bloc.acronym == string) return bloc;
    }

    return null;
  }

  /// Creates a new [RegionalBloc] object from a value.
  ///
  /// The [value] parameter is the value to be compared to the acronym of each
  /// regional bloc in the [RegionalBloc]s list. If the [value] parameter
  /// matches the acronym of a RegionalBloc, a new [RegionalBloc] object
  /// representing that regional bloc is returned. If there is no match, `null`
  /// is returned. If the [where] parameter is provided, it is used to determine
  /// the value to compare for each regional bloc.
  ///
  /// The [regionalBlocs] parameter is the list of regional blocs to search. If
  /// no value is provided, the `RegionalBloc.list` constant is used.
  static RegionalBloc? maybeFromValue<T extends Object>(
    T value, {
    Iterable<RegionalBloc> regionalBlocs = list,
    T? Function(RegionalBloc regionalBloc)? where,
  }) {
    regionalBlocs.assertNotEmpty();

    for (final regionalBloc in regionalBlocs) {
      final expectedValue = where?.call(regionalBloc) ?? regionalBloc.acronym;
      if (expectedValue == value) return regionalBloc;
    }

    return null;
  }

  /// A map of all the regional blocs with their corresponding acronyms.
  static const map = UpperCaseMap(regionalBlocAcronymMap);

  /// A list of all the regional blocs currently
  /// supported by the [RegionalBloc] class.
  static const list = regionalBlocList;
}
