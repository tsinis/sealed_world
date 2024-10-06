import "../../model/script/writing_system.dart";

/// Provides extension getters for [Script] class.
/// {@template getters_extension}
/// Contains common getters for ISO related properties of the class,
/// typically those are code getters with ISO standard number,
/// different type converters, etc.
/// {@endtemplate}
extension ScriptGetters on Script {
  /// Returns the ISO 15924 letter code of the script.
  ///
  /// Provides same data as [code].

  String get iso15924Letter => code;

  /// Returns the ISO 15924 numeric code of the script.
  ///
  /// Provides same data as [codeNumeric].

  String get iso15924Numeric => codeNumeric;

  /// Returns a [DateTime] object parsed from the [date] string.
  DateTime get dateTime => DateTime.parse(date);
}
