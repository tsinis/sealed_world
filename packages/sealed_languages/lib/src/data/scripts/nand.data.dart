part of "../../model/script/writing_system.dart";

extension type const _NandFactory._(ScriptNand _) implements ScriptNand {
  const _NandFactory() : this._(const ScriptNand._());
}

/// A class that represents the Nandinagari script.
class ScriptNand extends Script {
  /// {@template sealed_world.script_nand_constructor}
  /// Creates a instance of [ScriptNand] (Nandinagari script).
  ///
  /// ISO 15924 Alpha-4 code: `Nand`, ISO 15924 Numeric code: `311`.
  /// {@endtemplate}
  const factory ScriptNand() = _NandFactory;

  const ScriptNand._()
    : super(
        name: "Nandinagari",
        code: "Nand",
        codeNumeric: "311",
        date: "2018-08-26",
        pva: "Nandinagari",
      );
}
