part of "../../model/script/writing_system.dart";

extension type const _EthiFactory._(ScriptEthi _) implements ScriptEthi {
  const _EthiFactory() : this._(const ScriptEthi._());
}

/// A class that represents the Ethiopic (Geʻez) script.
class ScriptEthi extends Script {
  /// {@template sealed_world.script_ethi_constructor}
  /// Creates a instance of [ScriptEthi] (Ethiopic (Geʻez) script).
  ///
  /// ISO 15924 Alpha-4 code: `Ethi`, ISO 15924 Numeric code: `430`.
  /// {@endtemplate}
  const factory ScriptEthi() = _EthiFactory;

  const ScriptEthi._()
    : super(
        name: "Ethiopic (Geʻez)",
        code: "Ethi",
        codeNumeric: "430",
        date: "2004-10-25",
        pva: "Ethiopic",
      );
}
