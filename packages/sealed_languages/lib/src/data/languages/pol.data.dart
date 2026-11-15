part of "../../model/language/submodels/natural_language.dart";

extension type const _PolFactory._(LangPol _) implements LangPol {
  const new() : this._(const LangPol._());
}

/// A class that represents the Polish language.
final class LangPol extends NaturalLanguage {
  /// {@template sealed_world.language_pol_constructor}
  /// Creates a instance of [LangPol] (Polish language).
  ///
  /// ISO 639-2/T code: `POL`, ISO 639-1 code: `PL`.
  /// {@endtemplate}
  const factory() = _PolFactory;

  const new _()
    : super._(
        name: "Polish",
        code: "POL",
        codeShort: "PL",
        namesNative: const ["Polski", "Polszczyzna"],
        family: const IndoEuropean(),
      );
}
