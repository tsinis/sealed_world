part of "../../model/language/submodels/natural_language.dart";

extension type const _BihFactory._(LangBih _) implements LangBih {
  const _BihFactory() : this._(const LangBih._());
}

/// A class that represents the Bihari language.
final class LangBih extends NaturalLanguage {
  /// {@template sealed_world.language_bih_constructor}
  /// Creates a instance of [LangBih] (Bihari language).
  ///
  /// ISO 639-2/T code: `BIH`, ISO 639-1 code: `BH`.
  /// {@endtemplate}
  const factory LangBih() = _BihFactory;

  const LangBih._()
    : super._(
        name: "Bihari",
        code: "BIH",
        codeShort: "BH",
        namesNative: const ["भोजपुरी"],
        family: const IndoEuropean(),
        scripts: const {ScriptDeva()},
      );
}
