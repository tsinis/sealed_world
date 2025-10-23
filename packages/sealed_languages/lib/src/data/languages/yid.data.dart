part of "../../model/language/language.dart";

extension type const _YidFactory._(LangYid _) implements LangYid {
  const _YidFactory() : this._(const LangYid._());
}

/// A class that represents the Yiddish language.
class LangYid extends NaturalLanguage {
  /// {@template sealed_world.language_yid_constructor}
  /// Creates a instance of [LangYid] (Yiddish language).
  ///
  /// ISO 639-2/T code: `YID`, ISO 639-1 code: `YI`.
  /// {@endtemplate}
  const factory LangYid() = _YidFactory;

  const LangYid._()
    : super(
        name: "Yiddish",
        code: "YID",
        codeShort: "YI",
        namesNative: const ["ייִדיש"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptHebr()},
      );
}
