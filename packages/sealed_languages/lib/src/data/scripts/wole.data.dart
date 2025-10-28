part of "../../model/script/writing_system.dart";

extension type const _WoleFactory._(ScriptWole _) implements ScriptWole {
  const _WoleFactory() : this._(const ScriptWole._());
}

/// A class that represents the Woleai script.
class ScriptWole extends Script {
  /// {@template sealed_world.script_wole_constructor}
  /// Creates a instance of [ScriptWole] (Woleai script).
  ///
  /// ISO 15924 Alpha-4 code: `Wole`, ISO 15924 Numeric code: `480`.
  /// {@endtemplate}
  const factory ScriptWole() = _WoleFactory;

  const ScriptWole._()
    : super(
        name: "Woleai",
        code: "Wole",
        codeNumeric: "480",
        date: "2010-12-21",
      );
}
