part of "../../model/script/submodels/script.dart";

extension type const _HrktFactory._(ScriptHrkt _) implements ScriptHrkt {
  const new() : this._(const ScriptHrkt._());
}

/// A class that represents the Japanese syllabaries
/// (alias for Hiragana + Katakana) script.
final class ScriptHrkt extends Script {
  /// {@template sealed_world.script_hrkt_constructor}
  /// Creates a instance of [ScriptHrkt] (Japanese syllabaries
  /// (alias for Hiragana + Katakana) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hrkt`, ISO 15924 Numeric code: `412`.
  /// {@endtemplate}
  const factory() = _HrktFactory;

  const new _()
    : super._(
        name: "Japanese syllabaries (alias for Hiragana + Katakana)",
        code: "Hrkt",
        codeNumeric: "412",
        date: "2011-06-21",
        pva: "Katakana_Or_Hiragana",
      );
}
