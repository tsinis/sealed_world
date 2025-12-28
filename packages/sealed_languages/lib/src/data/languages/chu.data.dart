part of "../../model/language/submodels/natural_language.dart";

extension type const _ChuFactory._(LangChu _) implements LangChu {
  const _ChuFactory() : this._(const LangChu._());
}

/// A class that represents the (Old) Church Slavonic language.
final class LangChu extends NaturalLanguage {
  /// {@template sealed_world.language_chu_constructor}
  /// Creates a instance of [LangChu] ((Old) Church Slavonic language).
  ///
  /// ISO 639-2/T code: `CHU`, ISO 639-1 code: `CU`.
  /// {@endtemplate}
  const factory LangChu() = _ChuFactory;

  const LangChu._()
    : super._(
        name: "(Old) Church Slavonic",
        code: "CHU",
        codeShort: "CU",
        namesNative: const ["ѩзыкъ словѣньскъ"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrs()},
      );
}
