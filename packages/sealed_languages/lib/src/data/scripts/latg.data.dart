part of "../../model/script/writing_system.dart";

extension type const _LatgFactory._(ScriptLatg _) implements ScriptLatg {
  const _LatgFactory() : this._(const ScriptLatg._());
}

/// A class that represents the Latin (Gaelic variant) script.
class ScriptLatg extends Script {
  /// {@template sealed_world.script_latg_constructor}
  /// Creates a instance of [ScriptLatg] (Latin (Gaelic variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Latg`, ISO 15924 Numeric code: `216`.
  /// {@endtemplate}
  const factory ScriptLatg() = _LatgFactory;

  const ScriptLatg._()
    : super(
        name: "Latin (Gaelic variant)",
        code: "Latg",
        codeNumeric: "216",
        date: "2004-05-01",
      );
}
