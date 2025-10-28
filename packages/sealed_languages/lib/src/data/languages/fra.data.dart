part of "../../model/language/language.dart";

extension type const _FraFactory._(LangFra _) implements LangFra {
  const _FraFactory() : this._(const LangFra._());
}

/// A class that represents the French language.
class LangFra extends NaturalLanguage {
  /// {@template sealed_world.language_fra_constructor}
  /// Creates a instance of [LangFra] (French language).
  ///
  /// ISO 639-2/T code: `FRA`, ISO 639-1 code: `FR`.
  /// {@endtemplate}
  const factory LangFra() = _FraFactory;

  const LangFra._()
    : super(
        name: "French",
        code: "FRA",
        codeShort: "FR",
        namesNative: const ["français", "langue française"],
        bibliographicCode: "FRE",
        family: const IndoEuropean(),
      );
}
