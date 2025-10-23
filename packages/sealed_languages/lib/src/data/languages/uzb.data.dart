part of "../../model/language/language.dart";

extension type const _UzbFactory._(LangUzb _) implements LangUzb {
  const _UzbFactory() : this._(const LangUzb._());
}

/// A class that represents the Uzbek language.
class LangUzb extends NaturalLanguage {
  /// {@template sealed_world.language_uzb_constructor}
  /// Creates a instance of [LangUzb] (Uzbek language).
  ///
  /// ISO 639-2/T code: `UZB`, ISO 639-1 code: `UZ`.
  /// {@endtemplate}
  const factory LangUzb() = _UzbFactory;

  const LangUzb._()
    : super(
        name: "Uzbek",
        code: "UZB",
        codeShort: "UZ",
        namesNative: const ["Ўзбек", "أۇزبېك‎", "Oʻzbek"],
        family: const Turkic(),
        scripts: const {ScriptLatn(), ScriptCyrl(), ScriptArab()},
      );
}
