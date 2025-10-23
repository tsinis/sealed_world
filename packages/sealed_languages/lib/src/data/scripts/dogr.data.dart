part of "../../model/script/writing_system.dart";

extension type const _DogrFactory._(ScriptDogr _) implements ScriptDogr {
  const _DogrFactory() : this._(const ScriptDogr._());
}

/// A class that represents the Dogra script.
class ScriptDogr extends Script {
  /// {@template sealed_world.script_dogr_constructor}
  /// Creates a instance of [ScriptDogr] (Dogra script).
  ///
  /// ISO 15924 Alpha-4 code: `Dogr`, ISO 15924 Numeric code: `328`.
  /// {@endtemplate}
  const factory ScriptDogr() = _DogrFactory;

  const ScriptDogr._()
    : super(
        name: "Dogra",
        code: "Dogr",
        codeNumeric: "328",
        date: "2016-12-05",
        pva: "Dogra",
      );
}
