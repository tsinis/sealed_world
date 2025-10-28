part of "../../model/language/language.dart";

extension type const _EusFactory._(LangEus _) implements LangEus {
  const _EusFactory() : this._(const LangEus._());
}

/// A class that represents the Basque language.
class LangEus extends NaturalLanguage {
  /// {@template sealed_world.language_eus_constructor}
  /// Creates a instance of [LangEus] (Basque language).
  ///
  /// ISO 639-2/T code: `EUS`, ISO 639-1 code: `EU`.
  /// {@endtemplate}
  const factory LangEus() = _EusFactory;

  const LangEus._()
    : super(
        name: "Basque",
        code: "EUS",
        codeShort: "EU",
        namesNative: const ["euskara", "euskera"],
        bibliographicCode: "BAQ",
        family: const LanguageIsolate(),
      );
}
