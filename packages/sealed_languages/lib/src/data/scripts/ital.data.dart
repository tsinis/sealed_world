part of "../../model/script/writing_system.dart";

extension type const _ItalFactory._(ScriptItal _) implements ScriptItal {
  const _ItalFactory() : this._(const ScriptItal._());
}

/// A class that represents the Old Italic (Etruscan, Oscan, etc.) script.
class ScriptItal extends Script {
  /// {@template sealed_world.script_ital_constructor}
  /// Creates a instance of [ScriptItal] (Old Italic (Etruscan, Oscan, etc.) script).
  ///
  /// ISO 15924 Alpha-4 code: `Ital`, ISO 15924 Numeric code: `210`.
  /// {@endtemplate}
  const factory ScriptItal() = _ItalFactory;

  const ScriptItal._()
    : super(
        name: "Old Italic (Etruscan, Oscan, etc.)",
        code: "Ital",
        codeNumeric: "210",
        date: "2004-05-29",
        pva: "Old_Italic",
      );
}
