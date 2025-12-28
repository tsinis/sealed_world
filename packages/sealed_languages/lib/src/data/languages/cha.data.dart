part of "../../model/language/submodels/natural_language.dart";

extension type const _ChaFactory._(LangCha _) implements LangCha {
  const _ChaFactory() : this._(const LangCha._());
}

/// A class that represents the Chamorro language.
final class LangCha extends NaturalLanguage {
  /// {@template sealed_world.language_cha_constructor}
  /// Creates a instance of [LangCha] (Chamorro language).
  ///
  /// ISO 639-2/T code: `CHA`, ISO 639-1 code: `CH`.
  /// {@endtemplate}
  const factory LangCha() = _ChaFactory;

  const LangCha._()
    : super._(
        name: "Chamorro",
        code: "CHA",
        codeShort: "CH",
        namesNative: const ["Chamoru"],
        family: const Austronesian(),
      );
}
