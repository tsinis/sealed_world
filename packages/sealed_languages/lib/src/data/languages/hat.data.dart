part of "../../model/language/submodels/natural_language.dart";

extension type const _HatFactory._(LangHat _) implements LangHat {
  const new() : this._(const LangHat._());
}

/// A class that represents the Haitian (Haitian Creole) language.
final class LangHat extends NaturalLanguage {
  /// {@template sealed_world.language_hat_constructor}
  /// Creates a instance of [LangHat] (Haitian (Haitian Creole) language).
  ///
  /// ISO 639-2/T code: `HAT`, ISO 639-1 code: `HT`.
  /// {@endtemplate}
  const factory() = _HatFactory;

  const new _()
    : super._(
        name: "Haitian (Haitian Creole)",
        code: "HAT",
        codeShort: "HT",
        namesNative: const ["Kreyòl ayisyen"],
        family: const Creole(),
      );
}
