part of "../../model/language/submodels/natural_language.dart";

extension type const _IleFactory._(LangIle _) implements LangIle {
  const _IleFactory() : this._(const LangIle._());
}

/// A class that represents the Interlingue language.
final class LangIle extends NaturalLanguage {
  /// {@template sealed_world.language_ile_constructor}
  /// Creates a instance of [LangIle] (Interlingue language).
  ///
  /// ISO 639-2/T code: `ILE`, ISO 639-1 code: `IE`.
  /// {@endtemplate}
  const factory LangIle() = _IleFactory;

  const LangIle._()
    : super._(
        name: "Interlingue",
        code: "ILE",
        codeShort: "IE",
        namesNative: const ["Interlingue", "Occidental"],
        family: const Constructed(),
      );
}
