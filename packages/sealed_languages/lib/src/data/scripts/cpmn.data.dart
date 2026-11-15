part of "../../model/script/submodels/script.dart";

extension type const _CpmnFactory._(ScriptCpmn _) implements ScriptCpmn {
  const new() : this._(const ScriptCpmn._());
}

/// A class that represents the Cypro-Minoan script.
final class ScriptCpmn extends Script {
  /// {@template sealed_world.script_cpmn_constructor}
  /// Creates a instance of [ScriptCpmn] (Cypro-Minoan script).
  ///
  /// ISO 15924 Alpha-4 code: `Cpmn`, ISO 15924 Numeric code: `402`.
  /// {@endtemplate}
  const factory() = _CpmnFactory;

  const new _()
    : super._(
        name: "Cypro-Minoan",
        code: "Cpmn",
        codeNumeric: "402",
        date: "2017-07-26",
        pva: "Cypro_Minoan",
      );
}
