part of "../../model/language/submodels/natural_language.dart";

extension type const _BenFactory._(LangBen _) implements LangBen {
  const _BenFactory() : this._(const LangBen._());
}

/// A class that represents the Bengali (Bangla) language.
final class LangBen extends NaturalLanguage {
  /// {@template sealed_world.language_ben_constructor}
  /// Creates a instance of [LangBen] (Bengali (Bangla) language).
  ///
  /// ISO 639-2/T code: `BEN`, ISO 639-1 code: `BN`.
  /// {@endtemplate}
  const factory LangBen() = _BenFactory;

  const LangBen._()
    : super._(
        name: "Bengali (Bangla)",
        code: "BEN",
        codeShort: "BN",
        namesNative: const ["বাংলা"],
        family: const IndoEuropean(),
        scripts: const {ScriptBeng()},
      );
}
