part of "../../model/language/language.dart";

extension type const _UkrFactory._(LangUkr _) implements LangUkr {
  const _UkrFactory() : this._(const LangUkr._());
}

/// A class that represents the Ukrainian language.
class LangUkr extends NaturalLanguage {
  /// {@template sealed_world.language_ukr_constructor}
  /// Creates a instance of [LangUkr] (Ukrainian language).
  ///
  /// ISO 639-2/T code: `UKR`, ISO 639-1 code: `UK`.
  /// {@endtemplate}
  const factory LangUkr() = _UkrFactory;

  const LangUkr._()
    : super(
        name: "Ukrainian",
        code: "UKR",
        codeShort: "UK",
        namesNative: const ["Українська"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
