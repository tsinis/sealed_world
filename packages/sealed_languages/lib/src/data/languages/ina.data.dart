part of "../../model/language/language.dart";

extension type const _InaFactory._(LangIna _) implements LangIna {
  const _InaFactory() : this._(const LangIna._());
}

/// A class that represents the Interlingua language.
class LangIna extends NaturalLanguage {
  /// {@template sealed_world.language_ina_constructor}
  /// Creates a instance of [LangIna] (Interlingua language).
  ///
  /// ISO 639-2/T code: `INA`, ISO 639-1 code: `IA`.
  /// {@endtemplate}
  const factory LangIna() = _InaFactory;

  const LangIna._()
    : super(
        name: "Interlingua",
        code: "INA",
        codeShort: "IA",
        namesNative: const ["Interlingua"],
        family: const Constructed(),
      );
}
