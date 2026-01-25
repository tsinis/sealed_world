part of "../../model/language/submodels/natural_language.dart";

extension type const _FaoFactory._(LangFao _) implements LangFao {
  const _FaoFactory() : this._(const LangFao._());
}

/// A class that represents the Faroese language.
final class LangFao extends NaturalLanguage {
  /// {@template sealed_world.language_fao_constructor}
  /// Creates a instance of [LangFao] (Faroese language).
  ///
  /// ISO 639-2/T code: `FAO`, ISO 639-1 code: `FO`.
  /// {@endtemplate}
  const factory LangFao() = _FaoFactory;

  const LangFao._()
    : super._(
        name: "Faroese",
        code: "FAO",
        codeShort: "FO",
        namesNative: const ["Føroyskt"],
        family: const IndoEuropean(),
      );
}
