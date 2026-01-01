part of "../../model/script/submodels/script.dart";

extension type const _KanaFactory._(ScriptKana _) implements ScriptKana {
  const _KanaFactory() : this._(const ScriptKana._());
}

/// A class that represents the Katakana script.
final class ScriptKana extends Script {
  /// {@template sealed_world.script_kana_constructor}
  /// Creates a instance of [ScriptKana] (Katakana script).
  ///
  /// ISO 15924 Alpha-4 code: `Kana`, ISO 15924 Numeric code: `411`.
  /// {@endtemplate}
  const factory ScriptKana() = _KanaFactory;

  const ScriptKana._()
    : super._(
        name: "Katakana",
        code: "Kana",
        codeNumeric: "411",
        date: "2004-05-01",
        pva: "Katakana",
      );
}
