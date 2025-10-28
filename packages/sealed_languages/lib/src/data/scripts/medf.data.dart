part of "../../model/script/writing_system.dart";

extension type const _MedfFactory._(ScriptMedf _) implements ScriptMedf {
  const _MedfFactory() : this._(const ScriptMedf._());
}

/// A class that represents the Medefaidrin (Oberi Okaime, Oberi Ɔkaimɛ) script.
class ScriptMedf extends Script {
  /// {@template sealed_world.script_medf_constructor}
  /// Creates a instance of [ScriptMedf] (Medefaidrin (Oberi Okaime, Oberi Ɔkaimɛ) script).
  ///
  /// ISO 15924 Alpha-4 code: `Medf`, ISO 15924 Numeric code: `265`.
  /// {@endtemplate}
  const factory ScriptMedf() = _MedfFactory;

  const ScriptMedf._()
    : super(
        name: "Medefaidrin (Oberi Okaime, Oberi Ɔkaimɛ)",
        code: "Medf",
        codeNumeric: "265",
        date: "2016-12-05",
        pva: "Medefaidrin",
      );
}
