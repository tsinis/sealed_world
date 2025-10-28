part of "../../model/script/writing_system.dart";

extension type const _HanoFactory._(ScriptHano _) implements ScriptHano {
  const _HanoFactory() : this._(const ScriptHano._());
}

/// A class that represents the Hanunoo (Hanunóo) script.
class ScriptHano extends Script {
  /// {@template sealed_world.script_hano_constructor}
  /// Creates a instance of [ScriptHano] (Hanunoo (Hanunóo) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hano`, ISO 15924 Numeric code: `371`.
  /// {@endtemplate}
  const factory ScriptHano() = _HanoFactory;

  const ScriptHano._()
    : super(
        name: "Hanunoo (Hanunóo)",
        code: "Hano",
        codeNumeric: "371",
        date: "2004-05-29",
        pva: "Hanunoo",
      );
}
