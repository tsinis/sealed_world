part of "../../model/script/writing_system.dart";

extension type const _MercFactory._(ScriptMerc _) implements ScriptMerc {
  const _MercFactory() : this._(const ScriptMerc._());
}

/// A class that represents the Meroitic Cursive script.
class ScriptMerc extends Script {
  /// {@template sealed_world.script_merc_constructor}
  /// Creates a instance of [ScriptMerc] (Meroitic Cursive script).
  ///
  /// ISO 15924 Alpha-4 code: `Merc`, ISO 15924 Numeric code: `101`.
  /// {@endtemplate}
  const factory ScriptMerc() = _MercFactory;

  const ScriptMerc._()
    : super(
        name: "Meroitic Cursive",
        code: "Merc",
        codeNumeric: "101",
        date: "2012-02-06",
        pva: "Meroitic_Cursive",
      );
}
