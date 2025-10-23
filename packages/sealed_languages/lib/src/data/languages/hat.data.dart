part of "../../model/language/language.dart";

extension type const _HatFactory._(LangHat _) implements LangHat {
  const _HatFactory() : this._(const LangHat._());
}

/// A class that represents the Haitian (Haitian Creole) language.
class LangHat extends NaturalLanguage {
  /// {@template sealed_world.language_hat_constructor}
  /// Creates a instance of [LangHat] (Haitian (Haitian Creole) language).
  ///
  /// ISO 639-2/T code: `HAT`, ISO 639-1 code: `HT`.
  /// {@endtemplate}
  const factory LangHat() = _HatFactory;

  const LangHat._()
    : super(
        name: "Haitian (Haitian Creole)",
        code: "HAT",
        codeShort: "HT",
        namesNative: const ["Kreyòl ayisyen"],
        family: const Creole(),
      );
}
