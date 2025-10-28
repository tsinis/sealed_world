part of "../../model/language/language.dart";

extension type const _SanFactory._(LangSan _) implements LangSan {
  const _SanFactory() : this._(const LangSan._());
}

/// A class that represents the Sanskrit (Saṁskṛta) language.
class LangSan extends NaturalLanguage {
  /// {@template sealed_world.language_san_constructor}
  /// Creates a instance of [LangSan] (Sanskrit (Saṁskṛta) language).
  ///
  /// ISO 639-2/T code: `SAN`, ISO 639-1 code: `SA`.
  /// {@endtemplate}
  const factory LangSan() = _SanFactory;

  const LangSan._()
    : super(
        name: "Sanskrit (Saṁskṛta)",
        code: "SAN",
        codeShort: "SA",
        namesNative: const ["संस्कृतम्"],
        family: const IndoEuropean(),
        scripts: const {
          ScriptDeva(),
          ScriptBeng(),
          ScriptGujr(),
          ScriptKnda(),
          ScriptMlym(),
          ScriptOrya(),
          ScriptTelu(),
          ScriptThai(),
          ScriptLatn(),
        },
      );
}
