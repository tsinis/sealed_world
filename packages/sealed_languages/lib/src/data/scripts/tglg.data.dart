part of "../../model/script/submodels/script.dart";

extension type const _TglgFactory._(ScriptTglg _) implements ScriptTglg {
  const _TglgFactory() : this._(const ScriptTglg._());
}

/// A class that represents the Tagalog (Baybayin, Alibata) script.
final class ScriptTglg extends Script {
  /// {@template sealed_world.script_tglg_constructor}
  /// Creates a instance of [ScriptTglg] (Tagalog (Baybayin, Alibata) script).
  ///
  /// ISO 15924 Alpha-4 code: `Tglg`, ISO 15924 Numeric code: `370`.
  /// {@endtemplate}
  const factory ScriptTglg() = _TglgFactory;

  const ScriptTglg._()
    : super._(
        name: "Tagalog (Baybayin, Alibata)",
        code: "Tglg",
        codeNumeric: "370",
        date: "2009-02-23",
        pva: "Tagalog",
      );
}
