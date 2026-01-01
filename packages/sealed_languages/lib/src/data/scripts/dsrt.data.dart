part of "../../model/script/submodels/script.dart";

extension type const _DsrtFactory._(ScriptDsrt _) implements ScriptDsrt {
  const _DsrtFactory() : this._(const ScriptDsrt._());
}

/// A class that represents the Deseret (Mormon) script.
final class ScriptDsrt extends Script {
  /// {@template sealed_world.script_dsrt_constructor}
  /// Creates a instance of [ScriptDsrt] (Deseret (Mormon) script).
  ///
  /// ISO 15924 Alpha-4 code: `Dsrt`, ISO 15924 Numeric code: `250`.
  /// {@endtemplate}
  const factory ScriptDsrt() = _DsrtFactory;

  const ScriptDsrt._()
    : super._(
        name: "Deseret (Mormon)",
        code: "Dsrt",
        codeNumeric: "250",
        date: "2004-05-01",
        pva: "Deseret",
      );
}
