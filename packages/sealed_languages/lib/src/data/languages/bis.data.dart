part of "../../model/language/submodels/natural_language.dart";

extension type const _BisFactory._(LangBis _) implements LangBis {
  const _BisFactory() : this._(const LangBis._());
}

/// A class that represents the Bislama language.
final class LangBis extends NaturalLanguage {
  /// {@template sealed_world.language_bis_constructor}
  /// Creates a instance of [LangBis] (Bislama language).
  ///
  /// ISO 639-2/T code: `BIS`, ISO 639-1 code: `BI`.
  /// {@endtemplate}
  const factory LangBis() = _BisFactory;

  const LangBis._()
    : super._(
        name: "Bislama",
        code: "BIS",
        codeShort: "BI",
        namesNative: const ["Bislama"],
        family: const Creole(),
      );
}
