part of "../../model/language/submodels/natural_language.dart";

extension type const _SanFactory._(LangSan _) implements LangSan {
  const new() : this._(const LangSan._());
}

/// A class that represents the Sanskrit (Saṁskṛta) language.
final class LangSan extends NaturalLanguage {
  /// {@template sealed_world.language_san_constructor}
  /// Creates a instance of [LangSan] (Sanskrit (Saṁskṛta) language).
  ///
  /// ISO 639-2/T code: `SAN`, ISO 639-1 code: `SA`.
  /// {@endtemplate}
  const factory() = _SanFactory;

  const new _()
    : super._(
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
