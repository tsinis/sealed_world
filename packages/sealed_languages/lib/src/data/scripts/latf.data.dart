part of "../../model/script/submodels/script.dart";

extension type const _LatfFactory._(ScriptLatf _) implements ScriptLatf {
  const _LatfFactory() : this._(const ScriptLatf._());
}

/// A class that represents the Latin (Fraktur variant) script.
final class ScriptLatf extends Script {
  /// {@template sealed_world.script_latf_constructor}
  /// Creates a instance of [ScriptLatf] (Latin (Fraktur variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Latf`, ISO 15924 Numeric code: `217`.
  /// {@endtemplate}
  const factory ScriptLatf() = _LatfFactory;

  const ScriptLatf._()
    : super._(
        name: "Latin (Fraktur variant)",
        code: "Latf",
        codeNumeric: "217",
        date: "2004-05-01",
      );
}
