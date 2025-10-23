part of "../../model/language/language.dart";

extension type const _DivFactory._(LangDiv _) implements LangDiv {
  const _DivFactory() : this._(const LangDiv._());
}

/// A class that represents the Divehi (Dhivehi/Maldivian) language.
class LangDiv extends NaturalLanguage {
  /// {@template sealed_world.language_div_constructor}
  /// Creates a instance of [LangDiv] (Divehi (Dhivehi/Maldivian) language).
  ///
  /// ISO 639-2/T code: `DIV`, ISO 639-1 code: `DV`.
  /// {@endtemplate}
  const factory LangDiv() = _DivFactory;

  const LangDiv._()
    : super(
        name: "Divehi (Dhivehi/Maldivian)",
        code: "DIV",
        codeShort: "DV",
        namesNative: const ["ދިވެހި"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptThaa()},
      );
}
