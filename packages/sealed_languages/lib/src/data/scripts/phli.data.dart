part of "../../model/script/submodels/script.dart";

extension type const _PhliFactory._(ScriptPhli _) implements ScriptPhli {
  const _PhliFactory() : this._(const ScriptPhli._());
}

/// A class that represents the Inscriptional Pahlavi script.
final class ScriptPhli extends Script {
  /// {@template sealed_world.script_phli_constructor}
  /// Creates a instance of [ScriptPhli] (Inscriptional Pahlavi script).
  ///
  /// ISO 15924 Alpha-4 code: `Phli`, ISO 15924 Numeric code: `131`.
  /// {@endtemplate}
  const factory ScriptPhli() = _PhliFactory;

  const ScriptPhli._()
    : super._(
        name: "Inscriptional Pahlavi",
        code: "Phli",
        codeNumeric: "131",
        date: "2009-06-01",
        pva: "Inscriptional_Pahlavi",
      );
}
