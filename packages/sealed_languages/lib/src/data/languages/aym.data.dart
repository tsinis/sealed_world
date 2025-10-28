part of "../../model/language/language.dart";

extension type const _AymFactory._(LangAym _) implements LangAym {
  const _AymFactory() : this._(const LangAym._());
}

/// A class that represents the Aymara language.
class LangAym extends NaturalLanguage {
  /// {@template sealed_world.language_aym_constructor}
  /// Creates a instance of [LangAym] (Aymara language).
  ///
  /// ISO 639-2/T code: `AYM`, ISO 639-1 code: `AY`.
  /// {@endtemplate}
  const factory LangAym() = _AymFactory;

  const LangAym._()
    : super(
        name: "Aymara",
        code: "AYM",
        codeShort: "AY",
        namesNative: const ["aymar aru"],
        family: const Aymaran(),
      );
}
