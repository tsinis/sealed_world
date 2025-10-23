part of "../../model/script/writing_system.dart";

extension type const _MeroFactory._(ScriptMero _) implements ScriptMero {
  const _MeroFactory() : this._(const ScriptMero._());
}

/// A class that represents the Meroitic Hieroglyphs script.
class ScriptMero extends Script {
  /// {@template sealed_world.script_mero_constructor}
  /// Creates a instance of [ScriptMero] (Meroitic Hieroglyphs script).
  ///
  /// ISO 15924 Alpha-4 code: `Mero`, ISO 15924 Numeric code: `100`.
  /// {@endtemplate}
  const factory ScriptMero() = _MeroFactory;

  const ScriptMero._()
    : super(
        name: "Meroitic Hieroglyphs",
        code: "Mero",
        codeNumeric: "100",
        date: "2012-02-06",
        pva: "Meroitic_Hieroglyphs",
      );
}
