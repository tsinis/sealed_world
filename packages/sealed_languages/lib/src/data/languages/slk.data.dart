part of "../../model/language/language.dart";

extension type const _SlkFactory._(LangSlk _) implements LangSlk {
  const _SlkFactory() : this._(const LangSlk._());
}

/// A class that represents the Slovak language.
class LangSlk extends NaturalLanguage {
  /// {@template sealed_world.language_slk_constructor}
  /// Creates a instance of [LangSlk] (Slovak language).
  ///
  /// ISO 639-2/T code: `SLK`, ISO 639-1 code: `SK`.
  /// {@endtemplate}
  const factory LangSlk() = _SlkFactory;

  const LangSlk._()
    : super(
        name: "Slovak",
        code: "SLK",
        codeShort: "SK",
        namesNative: const ["slovenčina"],
        bibliographicCode: "SLO",
        family: const IndoEuropean(),
      );
}
