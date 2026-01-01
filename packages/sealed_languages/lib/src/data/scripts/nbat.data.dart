part of "../../model/script/submodels/script.dart";

extension type const _NbatFactory._(ScriptNbat _) implements ScriptNbat {
  const _NbatFactory() : this._(const ScriptNbat._());
}

/// A class that represents the Nabataean script.
final class ScriptNbat extends Script {
  /// {@template sealed_world.script_nbat_constructor}
  /// Creates a instance of [ScriptNbat] (Nabataean script).
  ///
  /// ISO 15924 Alpha-4 code: `Nbat`, ISO 15924 Numeric code: `159`.
  /// {@endtemplate}
  const factory ScriptNbat() = _NbatFactory;

  const ScriptNbat._()
    : super._(
        name: "Nabataean",
        code: "Nbat",
        codeNumeric: "159",
        date: "2014-11-15",
        pva: "Nabataean",
      );
}
