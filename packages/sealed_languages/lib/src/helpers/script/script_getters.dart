import "../../model/script/writing_system.dart";

extension ScriptGetters on Script {
  /// Returns the ISO 15924 letter code of the script.
  ///
  /// Provides same data as [code].
  String get iso15924Letter => code;

  /// Returns the ISO 15924 numeric code of the script.
  ///
  /// Provides same data as [codeNumeric].
  String get iso15924Numeric => codeNumeric;

  DateTime get dateTime => DateTime.parse(date);
}
