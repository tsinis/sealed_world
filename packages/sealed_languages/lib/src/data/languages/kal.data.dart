part of "../../model/language/submodels/natural_language.dart";

extension type const _KalFactory._(LangKal _) implements LangKal {
  const _KalFactory() : this._(const LangKal._());
}

/// A class that represents the Kalaallisut (Greenlandic) language.
final class LangKal extends NaturalLanguage {
  /// {@template sealed_world.language_kal_constructor}
  /// Creates a instance of [LangKal] (Kalaallisut (Greenlandic) language).
  ///
  /// ISO 639-2/T code: `KAL`, ISO 639-1 code: `KL`.
  /// {@endtemplate}
  const factory LangKal() = _KalFactory;

  const LangKal._()
    : super._(
        name: "Kalaallisut (Greenlandic)",
        code: "KAL",
        codeShort: "KL",
        namesNative: const ["Kalaallisut", "Kalaallit oqaasii"],
        family: const EskimoAleut(),
      );
}
