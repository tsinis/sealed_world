part of "../../model/script/writing_system.dart";

extension type const _CakmFactory._(ScriptCakm _) implements ScriptCakm {
  const _CakmFactory() : this._(const ScriptCakm._());
}

/// A class that represents the Chakma script.
class ScriptCakm extends Script {
  /// {@template sealed_world.script_cakm_constructor}
  /// Creates a instance of [ScriptCakm] (Chakma script).
  ///
  /// ISO 15924 Alpha-4 code: `Cakm`, ISO 15924 Numeric code: `349`.
  /// {@endtemplate}
  const factory ScriptCakm() = _CakmFactory;

  const ScriptCakm._()
    : super(
        name: "Chakma",
        code: "Cakm",
        codeNumeric: "349",
        date: "2012-02-06",
        pva: "Chakma",
      );
}
