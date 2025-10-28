part of "../../model/language/language.dart";

extension type const _IiiFactory._(LangIii _) implements LangIii {
  const _IiiFactory() : this._(const LangIii._());
}

/// A class that represents the Nuosu language.
class LangIii extends NaturalLanguage {
  /// {@template sealed_world.language_iii_constructor}
  /// Creates a instance of [LangIii] (Nuosu language).
  ///
  /// ISO 639-2/T code: `III`, ISO 639-1 code: `II`.
  /// {@endtemplate}
  const factory LangIii() = _IiiFactory;

  const LangIii._()
    : super(
        name: "Nuosu",
        code: "III",
        codeShort: "II",
        namesNative: const ["ꆈꌠ꒿ Nuosuhxop"],
        family: const SinoTibetan(),
        scripts: const {ScriptYiii()},
      );
}
