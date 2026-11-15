part of "../../model/language/submodels/natural_language.dart";

extension type const _DivFactory._(LangDiv _) implements LangDiv {
  const new() : this._(const LangDiv._());
}

/// A class that represents the Divehi (Dhivehi/Maldivian) language.
final class LangDiv extends NaturalLanguage {
  /// {@template sealed_world.language_div_constructor}
  /// Creates a instance of [LangDiv] (Divehi (Dhivehi/Maldivian) language).
  ///
  /// ISO 639-2/T code: `DIV`, ISO 639-1 code: `DV`.
  /// {@endtemplate}
  const factory() = _DivFactory;

  const new _()
    : super._(
        name: "Divehi (Dhivehi/Maldivian)",
        code: "DIV",
        codeShort: "DV",
        namesNative: const ["ދިވެހި"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptThaa()},
      );
}
