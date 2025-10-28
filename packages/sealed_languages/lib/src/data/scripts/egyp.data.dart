part of "../../model/script/writing_system.dart";

extension type const _EgypFactory._(ScriptEgyp _) implements ScriptEgyp {
  const _EgypFactory() : this._(const ScriptEgyp._());
}

/// A class that represents the Egyptian hieroglyphs script.
class ScriptEgyp extends Script {
  /// {@template sealed_world.script_egyp_constructor}
  /// Creates a instance of [ScriptEgyp] (Egyptian hieroglyphs script).
  ///
  /// ISO 15924 Alpha-4 code: `Egyp`, ISO 15924 Numeric code: `050`.
  /// {@endtemplate}
  const factory ScriptEgyp() = _EgypFactory;

  const ScriptEgyp._()
    : super(
        name: "Egyptian hieroglyphs",
        code: "Egyp",
        codeNumeric: "050",
        date: "2009-06-01",
        pva: "Egyptian_Hieroglyphs",
      );
}
