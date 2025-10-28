part of "../../model/language/language.dart";

extension type const _KalFactory._(LangKal _) implements LangKal {
  const _KalFactory() : this._(const LangKal._());
}

/// A class that represents the Kalaallisut (Greenlandic) language.
class LangKal extends NaturalLanguage {
  /// {@template sealed_world.language_kal_constructor}
  /// Creates a instance of [LangKal] (Kalaallisut (Greenlandic) language).
  ///
  /// ISO 639-2/T code: `KAL`, ISO 639-1 code: `KL`.
  /// {@endtemplate}
  const factory LangKal() = _KalFactory;

  const LangKal._()
    : super(
        name: "Kalaallisut (Greenlandic)",
        code: "KAL",
        codeShort: "KL",
        namesNative: const ["kalaallisut", "kalaallit oqaasii"],
        family: const EskimoAleut(),
      );
}
