part of "../../model/language/language.dart";

extension type const _VieFactory._(LangVie _) implements LangVie {
  const _VieFactory() : this._(const LangVie._());
}

/// A class that represents the Vietnamese language.
class LangVie extends NaturalLanguage {
  /// {@template sealed_world.language_vie_constructor}
  /// Creates a instance of [LangVie] (Vietnamese language).
  ///
  /// ISO 639-2/T code: `VIE`, ISO 639-1 code: `VI`.
  /// {@endtemplate}
  const factory LangVie() = _VieFactory;

  const LangVie._()
    : super(
        name: "Vietnamese",
        code: "VIE",
        codeShort: "VI",
        namesNative: const ["Tiếng Việt"],
        family: const Austroasiatic(),
      );
}
