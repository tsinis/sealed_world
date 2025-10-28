part of "../../model/language/language.dart";

extension type const _SmeFactory._(LangSme _) implements LangSme {
  const _SmeFactory() : this._(const LangSme._());
}

/// A class that represents the Northern Sami language.
class LangSme extends NaturalLanguage {
  /// {@template sealed_world.language_sme_constructor}
  /// Creates a instance of [LangSme] (Northern Sami language).
  ///
  /// ISO 639-2/T code: `SME`, ISO 639-1 code: `SE`.
  /// {@endtemplate}
  const factory LangSme() = _SmeFactory;

  const LangSme._()
    : super(
        name: "Northern Sami",
        code: "SME",
        codeShort: "SE",
        namesNative: const ["Davvisámegiella"],
        family: const Uralic(),
      );
}
