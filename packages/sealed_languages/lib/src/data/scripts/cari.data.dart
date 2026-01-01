part of "../../model/script/submodels/script.dart";

extension type const _CariFactory._(ScriptCari _) implements ScriptCari {
  const _CariFactory() : this._(const ScriptCari._());
}

/// A class that represents the Carian script.
final class ScriptCari extends Script {
  /// {@template sealed_world.script_cari_constructor}
  /// Creates a instance of [ScriptCari] (Carian script).
  ///
  /// ISO 15924 Alpha-4 code: `Cari`, ISO 15924 Numeric code: `201`.
  /// {@endtemplate}
  const factory ScriptCari() = _CariFactory;

  const ScriptCari._()
    : super._(
        name: "Carian",
        code: "Cari",
        codeNumeric: "201",
        date: "2007-07-02",
        pva: "Carian",
      );
}
