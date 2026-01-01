part of "../../model/script/submodels/script.dart";

extension type const _BatkFactory._(ScriptBatk _) implements ScriptBatk {
  const _BatkFactory() : this._(const ScriptBatk._());
}

/// A class that represents the Batak script.
final class ScriptBatk extends Script {
  /// {@template sealed_world.script_batk_constructor}
  /// Creates a instance of [ScriptBatk] (Batak script).
  ///
  /// ISO 15924 Alpha-4 code: `Batk`, ISO 15924 Numeric code: `365`.
  /// {@endtemplate}
  const factory ScriptBatk() = _BatkFactory;

  const ScriptBatk._()
    : super._(
        name: "Batak",
        code: "Batk",
        codeNumeric: "365",
        date: "2010-07-23",
        pva: "Batak",
      );
}
