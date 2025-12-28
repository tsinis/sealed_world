part of "../../model/script/submodels/script.dart";

extension type const _NarbFactory._(ScriptNarb _) implements ScriptNarb {
  const _NarbFactory() : this._(const ScriptNarb._());
}

/// A class that represents the Old North Arabian (Ancient North Arabian) script.
final class ScriptNarb extends Script {
  /// {@template sealed_world.script_narb_constructor}
  /// Creates a instance of [ScriptNarb] (Old North Arabian (Ancient North Arabian) script).
  ///
  /// ISO 15924 Alpha-4 code: `Narb`, ISO 15924 Numeric code: `106`.
  /// {@endtemplate}
  const factory ScriptNarb() = _NarbFactory;

  const ScriptNarb._()
    : super._(
        name: "Old North Arabian (Ancient North Arabian)",
        code: "Narb",
        codeNumeric: "106",
        date: "2014-11-15",
        pva: "Old_North_Arabian",
      );
}
