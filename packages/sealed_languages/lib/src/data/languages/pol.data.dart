part of "../../model/language/language.dart";

extension type const _PolFactory._(LangPol _) implements LangPol {
  const _PolFactory() : this._(const LangPol._());
}

/// A class that represents the Polish language.
class LangPol extends NaturalLanguage {
  /// {@template sealed_world.language_pol_constructor}
  /// Creates a instance of [LangPol] (Polish language).
  ///
  /// ISO 639-2/T code: `POL`, ISO 639-1 code: `PL`.
  /// {@endtemplate}
  const factory LangPol() = _PolFactory;

  const LangPol._()
    : super(
        name: "Polish",
        code: "POL",
        codeShort: "PL",
        namesNative: const ["polski", "polszczyzna"],
        family: const IndoEuropean(),
      );
}
