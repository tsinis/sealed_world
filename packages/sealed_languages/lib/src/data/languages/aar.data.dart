part of "../../model/language/submodels/natural_language.dart";

extension type const _AarFactory._(LangAar _) implements LangAar {
  const _AarFactory() : this._(const LangAar._());
}

/// A class that represents the Afar language.
final class LangAar extends NaturalLanguage {
  /// {@template sealed_world.language_aar_constructor}
  /// Creates a instance of [LangAar] (Afar language).
  ///
  /// ISO 639-2/T code: `AAR`, ISO 639-1 code: `AA`.
  /// {@endtemplate}
  const factory LangAar() = _AarFactory;

  const LangAar._()
    : super._(
        name: "Afar",
        code: "AAR",
        codeShort: "AA",
        namesNative: const ["Afaraf"],
        family: const AfroAsiatic(),
      );
}
