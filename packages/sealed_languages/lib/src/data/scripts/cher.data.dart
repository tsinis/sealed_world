part of "../../model/script/writing_system.dart";

extension type const _CherFactory._(ScriptCher _) implements ScriptCher {
  const _CherFactory() : this._(const ScriptCher._());
}

/// A class that represents the Cherokee script.
class ScriptCher extends Script {
  /// {@template sealed_world.script_cher_constructor}
  /// Creates a instance of [ScriptCher] (Cherokee script).
  ///
  /// ISO 15924 Alpha-4 code: `Cher`, ISO 15924 Numeric code: `445`.
  /// {@endtemplate}
  const factory ScriptCher() = _CherFactory;

  const ScriptCher._()
    : super(
        name: "Cherokee",
        code: "Cher",
        codeNumeric: "445",
        date: "2004-05-01",
        pva: "Cherokee",
      );
}
