part of "../../model/script/writing_system.dart";

extension type const _ChamFactory._(ScriptCham _) implements ScriptCham {
  const _ChamFactory() : this._(const ScriptCham._());
}

/// A class that represents the Cham script.
class ScriptCham extends Script {
  /// {@template sealed_world.script_cham_constructor}
  /// Creates a instance of [ScriptCham] (Cham script).
  ///
  /// ISO 15924 Alpha-4 code: `Cham`, ISO 15924 Numeric code: `358`.
  /// {@endtemplate}
  const factory ScriptCham() = _ChamFactory;

  const ScriptCham._()
    : super(
        name: "Cham",
        code: "Cham",
        codeNumeric: "358",
        date: "2009-11-11",
        pva: "Cham",
      );
}
