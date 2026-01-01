part of "../../model/script/submodels/script.dart";

extension type const _HmnpFactory._(ScriptHmnp _) implements ScriptHmnp {
  const _HmnpFactory() : this._(const ScriptHmnp._());
}

/// A class that represents the Nyiakeng Puachue Hmong script.
final class ScriptHmnp extends Script {
  /// {@template sealed_world.script_hmnp_constructor}
  /// Creates a instance of [ScriptHmnp] (Nyiakeng Puachue Hmong script).
  ///
  /// ISO 15924 Alpha-4 code: `Hmnp`, ISO 15924 Numeric code: `451`.
  /// {@endtemplate}
  const factory ScriptHmnp() = _HmnpFactory;

  const ScriptHmnp._()
    : super._(
        name: "Nyiakeng Puachue Hmong",
        code: "Hmnp",
        codeNumeric: "451",
        date: "2017-07-26",
        pva: "Nyiakeng_Puachue_Hmong",
      );
}
