part of "../../model/language/submodels/natural_language.dart";

extension type const _LubFactory._(LangLub _) implements LangLub {
  const _LubFactory() : this._(const LangLub._());
}

/// A class that represents the Luba-Katanga language.
final class LangLub extends NaturalLanguage {
  /// {@template sealed_world.language_lub_constructor}
  /// Creates a instance of [LangLub] (Luba-Katanga language).
  ///
  /// ISO 639-2/T code: `LUB`, ISO 639-1 code: `LU`.
  /// {@endtemplate}
  const factory LangLub() = _LubFactory;

  const LangLub._()
    : super._(
        name: "Luba-Katanga",
        code: "LUB",
        codeShort: "LU",
        namesNative: const ["Tshiluba"],
        family: const NigerCongo(),
      );
}
