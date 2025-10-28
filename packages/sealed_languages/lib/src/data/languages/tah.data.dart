part of "../../model/language/language.dart";

extension type const _TahFactory._(LangTah _) implements LangTah {
  const _TahFactory() : this._(const LangTah._());
}

/// A class that represents the Tahitian language.
class LangTah extends NaturalLanguage {
  /// {@template sealed_world.language_tah_constructor}
  /// Creates a instance of [LangTah] (Tahitian language).
  ///
  /// ISO 639-2/T code: `TAH`, ISO 639-1 code: `TY`.
  /// {@endtemplate}
  const factory LangTah() = _TahFactory;

  const LangTah._()
    : super(
        name: "Tahitian",
        code: "TAH",
        codeShort: "TY",
        namesNative: const ["Reo Tahiti"],
        family: const Austronesian(),
      );
}
