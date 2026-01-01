part of "../../model/language/submodels/natural_language.dart";

extension type const _FasFactory._(LangFas _) implements LangFas {
  const _FasFactory() : this._(const LangFas._());
}

/// A class that represents the Persian (Farsi) language.
final class LangFas extends NaturalLanguage {
  /// {@template sealed_world.language_fas_constructor}
  /// Creates a instance of [LangFas] (Persian (Farsi) language).
  ///
  /// ISO 639-2/T code: `FAS`, ISO 639-1 code: `FA`.
  /// {@endtemplate}
  const factory LangFas() = _FasFactory;

  const LangFas._()
    : super._(
        name: "Persian (Farsi)",
        code: "FAS",
        codeShort: "FA",
        namesNative: const ["فارسی"],
        bibliographicCode: "PER",
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab()},
      );
}
