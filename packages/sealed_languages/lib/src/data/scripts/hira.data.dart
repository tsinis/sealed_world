part of "../../model/script/submodels/script.dart";

extension type const _HiraFactory._(ScriptHira _) implements ScriptHira {
  const _HiraFactory() : this._(const ScriptHira._());
}

/// A class that represents the Hiragana script.
final class ScriptHira extends Script {
  /// {@template sealed_world.script_hira_constructor}
  /// Creates a instance of [ScriptHira] (Hiragana script).
  ///
  /// ISO 15924 Alpha-4 code: `Hira`, ISO 15924 Numeric code: `410`.
  /// {@endtemplate}
  const factory ScriptHira() = _HiraFactory;

  const ScriptHira._()
    : super._(
        name: "Hiragana",
        code: "Hira",
        codeNumeric: "410",
        date: "2004-05-01",
        pva: "Hiragana",
      );
}
