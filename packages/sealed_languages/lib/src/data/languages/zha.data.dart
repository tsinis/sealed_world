part of "../../model/language/language.dart";

extension type const _ZhaFactory._(LangZha _) implements LangZha {
  const _ZhaFactory() : this._(const LangZha._());
}

/// A class that represents the Zhuang (Chuang) language.
class LangZha extends NaturalLanguage {
  /// {@template sealed_world.language_zha_constructor}
  /// Creates a instance of [LangZha] (Zhuang (Chuang) language).
  ///
  /// ISO 639-2/T code: `ZHA`, ISO 639-1 code: `ZA`.
  /// {@endtemplate}
  const factory LangZha() = _ZhaFactory;

  const LangZha._()
    : super(
        name: "Zhuang (Chuang)",
        code: "ZHA",
        codeShort: "ZA",
        namesNative: const ["Saɯ cueŋƅ", "Saw cuengh"],
        family: const TaiKadai(),
      );
}
