part of "../../model/language/submodels/natural_language.dart";

extension type const _ItaFactory._(LangIta _) implements LangIta {
  const _ItaFactory() : this._(const LangIta._());
}

/// A class that represents the Italian language.
final class LangIta extends NaturalLanguage {
  /// {@template sealed_world.language_ita_constructor}
  /// Creates a instance of [LangIta] (Italian language).
  ///
  /// ISO 639-2/T code: `ITA`, ISO 639-1 code: `IT`.
  /// {@endtemplate}
  const factory LangIta() = _ItaFactory;

  const LangIta._()
    : super._(
        name: "Italian",
        code: "ITA",
        codeShort: "IT",
        namesNative: const ["Italiano"],
        family: const IndoEuropean(),
      );
}
