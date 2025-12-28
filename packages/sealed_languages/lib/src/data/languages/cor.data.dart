part of "../../model/language/submodels/natural_language.dart";

extension type const _CorFactory._(LangCor _) implements LangCor {
  const _CorFactory() : this._(const LangCor._());
}

/// A class that represents the Cornish language.
final class LangCor extends NaturalLanguage {
  /// {@template sealed_world.language_cor_constructor}
  /// Creates a instance of [LangCor] (Cornish language).
  ///
  /// ISO 639-2/T code: `COR`, ISO 639-1 code: `KW`.
  /// {@endtemplate}
  const factory LangCor() = _CorFactory;

  const LangCor._()
    : super._(
        name: "Cornish",
        code: "COR",
        codeShort: "KW",
        namesNative: const ["Kernewek"],
        family: const IndoEuropean(),
      );
}
