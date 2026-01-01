part of "../../model/script/submodels/script.dart";

extension type const _HaniFactory._(ScriptHani _) implements ScriptHani {
  const _HaniFactory() : this._(const ScriptHani._());
}

/// A class that represents the Han (Hanzi, Kanji, Hanja) script.
final class ScriptHani extends Script {
  /// {@template sealed_world.script_hani_constructor}
  /// Creates a instance of [ScriptHani] (Han (Hanzi, Kanji, Hanja) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hani`, ISO 15924 Numeric code: `500`.
  /// {@endtemplate}
  const factory ScriptHani() = _HaniFactory;

  const ScriptHani._()
    : super._(
        name: "Han (Hanzi, Kanji, Hanja)",
        code: "Hani",
        codeNumeric: "500",
        date: "2009-02-23",
        pva: "Han",
      );
}
