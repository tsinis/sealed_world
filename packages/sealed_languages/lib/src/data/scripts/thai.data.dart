part of "../../model/script/submodels/script.dart";

extension type const _ThaiFactory._(ScriptThai _) implements ScriptThai {
  const _ThaiFactory() : this._(const ScriptThai._());
}

/// A class that represents the Thai script.
final class ScriptThai extends Script {
  /// {@template sealed_world.script_thai_constructor}
  /// Creates a instance of [ScriptThai] (Thai script).
  ///
  /// ISO 15924 Alpha-4 code: `Thai`, ISO 15924 Numeric code: `352`.
  /// {@endtemplate}
  const factory ScriptThai() = _ThaiFactory;

  const ScriptThai._()
    : super._(
        name: "Thai",
        code: "Thai",
        codeNumeric: "352",
        date: "2004-05-01",
        pva: "Thai",
      );
}
