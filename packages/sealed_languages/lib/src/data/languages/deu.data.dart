part of "../../model/language/submodels/natural_language.dart";

extension type const _DeuFactory._(LangDeu _) implements LangDeu {
  const _DeuFactory() : this._(const LangDeu._());
}

/// A class that represents the German language.
final class LangDeu extends NaturalLanguage {
  /// {@template sealed_world.language_deu_constructor}
  /// Creates a instance of [LangDeu] (German language).
  ///
  /// ISO 639-2/T code: `DEU`, ISO 639-1 code: `DE`.
  /// {@endtemplate}
  const factory LangDeu() = _DeuFactory;

  const LangDeu._()
    : super._(
        name: "German",
        code: "DEU",
        codeShort: "DE",
        namesNative: const ["Deutsch"],
        bibliographicCode: "GER",
        family: const IndoEuropean(),
      );
}
