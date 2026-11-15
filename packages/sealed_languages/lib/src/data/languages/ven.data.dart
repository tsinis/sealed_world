part of "../../model/language/submodels/natural_language.dart";

extension type const _VenFactory._(LangVen _) implements LangVen {
  const new() : this._(const LangVen._());
}

/// A class that represents the Venda language.
final class LangVen extends NaturalLanguage {
  /// {@template sealed_world.language_ven_constructor}
  /// Creates a instance of [LangVen] (Venda language).
  ///
  /// ISO 639-2/T code: `VEN`, ISO 639-1 code: `VE`.
  /// {@endtemplate}
  const factory() = _VenFactory;

  const new _()
    : super._(
        name: "Venda",
        code: "VEN",
        codeShort: "VE",
        namesNative: const ["Tshivenḓa"],
        family: const NigerCongo(),
      );
}
