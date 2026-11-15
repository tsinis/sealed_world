part of "../../model/language/submodels/natural_language.dart";

extension type const _NauFactory._(LangNau _) implements LangNau {
  const new() : this._(const LangNau._());
}

/// A class that represents the Nauruan language.
final class LangNau extends NaturalLanguage {
  /// {@template sealed_world.language_nau_constructor}
  /// Creates a instance of [LangNau] (Nauruan language).
  ///
  /// ISO 639-2/T code: `NAU`, ISO 639-1 code: `NA`.
  /// {@endtemplate}
  const factory() = _NauFactory;

  const new _()
    : super._(
        name: "Nauruan",
        code: "NAU",
        codeShort: "NA",
        namesNative: const ["Dorerin Naoero"],
        family: const Austronesian(),
      );
}
