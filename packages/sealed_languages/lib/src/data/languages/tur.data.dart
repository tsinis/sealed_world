part of "../../model/language/language.dart";

extension type const _TurFactory._(LangTur _) implements LangTur {
  const _TurFactory() : this._(const LangTur._());
}

/// A class that represents the Turkish language.
class LangTur extends NaturalLanguage {
  /// {@template sealed_world.language_tur_constructor}
  /// Creates a instance of [LangTur] (Turkish language).
  ///
  /// ISO 639-2/T code: `TUR`, ISO 639-1 code: `TR`.
  /// {@endtemplate}
  const factory LangTur() = _TurFactory;

  const LangTur._()
    : super(
        name: "Turkish",
        code: "TUR",
        codeShort: "TR",
        namesNative: const ["Türkçe"],
        family: const Turkic(),
      );
}
