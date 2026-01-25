part of "../../model/language/submodels/natural_language.dart";

extension type const _OssFactory._(LangOss _) implements LangOss {
  const _OssFactory() : this._(const LangOss._());
}

/// A class that represents the Ossetian (Ossetic) language.
final class LangOss extends NaturalLanguage {
  /// {@template sealed_world.language_oss_constructor}
  /// Creates a instance of [LangOss] (Ossetian (Ossetic) language).
  ///
  /// ISO 639-2/T code: `OSS`, ISO 639-1 code: `OS`.
  /// {@endtemplate}
  const factory LangOss() = _OssFactory;

  const LangOss._()
    : super._(
        name: "Ossetian (Ossetic)",
        code: "OSS",
        codeShort: "OS",
        namesNative: const ["Ирон æвзаг"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
