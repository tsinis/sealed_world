part of "../../model/language/submodels/natural_language.dart";

extension type const _SrdFactory._(LangSrd _) implements LangSrd {
  const _SrdFactory() : this._(const LangSrd._());
}

/// A class that represents the Sardinian language.
final class LangSrd extends NaturalLanguage {
  /// {@template sealed_world.language_srd_constructor}
  /// Creates a instance of [LangSrd] (Sardinian language).
  ///
  /// ISO 639-2/T code: `SRD`, ISO 639-1 code: `SC`.
  /// {@endtemplate}
  const factory LangSrd() = _SrdFactory;

  const LangSrd._()
    : super._(
        name: "Sardinian",
        code: "SRD",
        codeShort: "SC",
        namesNative: const ["sardu"],
        family: const IndoEuropean(),
      );
}
