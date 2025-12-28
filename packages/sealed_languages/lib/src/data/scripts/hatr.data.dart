part of "../../model/script/submodels/script.dart";

extension type const _HatrFactory._(ScriptHatr _) implements ScriptHatr {
  const _HatrFactory() : this._(const ScriptHatr._());
}

/// A class that represents the Hatran script.
final class ScriptHatr extends Script {
  /// {@template sealed_world.script_hatr_constructor}
  /// Creates a instance of [ScriptHatr] (Hatran script).
  ///
  /// ISO 15924 Alpha-4 code: `Hatr`, ISO 15924 Numeric code: `127`.
  /// {@endtemplate}
  const factory ScriptHatr() = _HatrFactory;

  const ScriptHatr._()
    : super._(
        name: "Hatran",
        code: "Hatr",
        codeNumeric: "127",
        date: "2015-07-07",
        pva: "Hatran",
      );
}
