part of "../../model/script/writing_system.dart";

extension type const _MendFactory._(ScriptMend _) implements ScriptMend {
  const _MendFactory() : this._(const ScriptMend._());
}

/// A class that represents the Mende Kikakui script.
class ScriptMend extends Script {
  /// {@template sealed_world.script_mend_constructor}
  /// Creates a instance of [ScriptMend] (Mende Kikakui script).
  ///
  /// ISO 15924 Alpha-4 code: `Mend`, ISO 15924 Numeric code: `438`.
  /// {@endtemplate}
  const factory ScriptMend() = _MendFactory;

  const ScriptMend._()
    : super(
        name: "Mende Kikakui",
        code: "Mend",
        codeNumeric: "438",
        date: "2014-11-15",
        pva: "Mende_Kikakui",
      );
}
