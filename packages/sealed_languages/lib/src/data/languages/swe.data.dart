part of "../../model/language/language.dart";

extension type const _SweFactory._(LangSwe _) implements LangSwe {
  const _SweFactory() : this._(const LangSwe._());
}

/// A class that represents the Swedish language.
class LangSwe extends NaturalLanguage {
  /// {@template sealed_world.language_swe_constructor}
  /// Creates a instance of [LangSwe] (Swedish language).
  ///
  /// ISO 639-2/T code: `SWE`, ISO 639-1 code: `SV`.
  /// {@endtemplate}
  const factory LangSwe() = _SweFactory;

  const LangSwe._()
    : super(
        name: "Swedish",
        code: "SWE",
        codeShort: "SV",
        namesNative: const ["svenska"],
        family: const IndoEuropean(),
      );
}
