part of "../../model/script/submodels/script.dart";

extension type const _HluwFactory._(ScriptHluw _) implements ScriptHluw {
  const _HluwFactory() : this._(const ScriptHluw._());
}

/// A class that represents the Anatolian Hieroglyphs (Luwian Hieroglyphs, Hittite Hieroglyphs) script.
final class ScriptHluw extends Script {
  /// {@template sealed_world.script_hluw_constructor}
  /// Creates a instance of [ScriptHluw] (Anatolian Hieroglyphs (Luwian Hieroglyphs, Hittite Hieroglyphs) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hluw`, ISO 15924 Numeric code: `080`.
  /// {@endtemplate}
  const factory ScriptHluw() = _HluwFactory;

  const ScriptHluw._()
    : super._(
        name: "Anatolian Hieroglyphs (Luwian Hieroglyphs, Hittite Hieroglyphs)",
        code: "Hluw",
        codeNumeric: "080",
        date: "2015-07-07",
        pva: "Anatolian_Hieroglyphs",
      );
}
