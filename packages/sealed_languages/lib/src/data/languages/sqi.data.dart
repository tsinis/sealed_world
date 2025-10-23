part of "../../model/language/language.dart";

extension type const _SqiFactory._(LangSqi _) implements LangSqi {
  const _SqiFactory() : this._(const LangSqi._());
}

/// A class that represents the Albanian language.
class LangSqi extends NaturalLanguage {
  /// {@template sealed_world.language_sqi_constructor}
  /// Creates a instance of [LangSqi] (Albanian language).
  ///
  /// ISO 639-2/T code: `SQI`, ISO 639-1 code: `SQ`.
  /// {@endtemplate}
  const factory LangSqi() = _SqiFactory;

  const LangSqi._()
    : super(
        name: "Albanian",
        code: "SQI",
        codeShort: "SQ",
        namesNative: const ["Shqip"],
        bibliographicCode: "ALB",
        family: const IndoEuropean(),
      );
}
