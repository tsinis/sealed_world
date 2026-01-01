part of "../../model/script/submodels/script.dart";

extension type const _BopoFactory._(ScriptBopo _) implements ScriptBopo {
  const _BopoFactory() : this._(const ScriptBopo._());
}

/// A class that represents the Bopomofo script.
final class ScriptBopo extends Script {
  /// {@template sealed_world.script_bopo_constructor}
  /// Creates a instance of [ScriptBopo] (Bopomofo script).
  ///
  /// ISO 15924 Alpha-4 code: `Bopo`, ISO 15924 Numeric code: `285`.
  /// {@endtemplate}
  const factory ScriptBopo() = _BopoFactory;

  const ScriptBopo._()
    : super._(
        name: "Bopomofo",
        code: "Bopo",
        codeNumeric: "285",
        date: "2004-05-01",
        pva: "Bopomofo",
      );
}
