part of "../../model/language/language.dart";

extension type const _CreFactory._(LangCre _) implements LangCre {
  const _CreFactory() : this._(const LangCre._());
}

/// A class that represents the Cree language.
class LangCre extends NaturalLanguage {
  /// {@template sealed_world.language_cre_constructor}
  /// Creates a instance of [LangCre] (Cree language).
  ///
  /// ISO 639-2/T code: `CRE`, ISO 639-1 code: `CR`.
  /// {@endtemplate}
  const factory LangCre() = _CreFactory;

  const LangCre._()
    : super(
        name: "Cree",
        code: "CRE",
        codeShort: "CR",
        namesNative: const ["ᓀᐦᐃᔭᐍᐏᐣ"],
        family: const Algonquian(),
      );
}
