part of "../../model/language/submodels/natural_language.dart";

extension type const _SlkFactory._(LangSlk _) implements LangSlk {
  const new() : this._(const LangSlk._());
}

/// A class that represents the Slovak language.
final class LangSlk extends NaturalLanguage {
  /// {@template sealed_world.language_slk_constructor}
  /// Creates a instance of [LangSlk] (Slovak language).
  ///
  /// ISO 639-2/T code: `SLK`, ISO 639-1 code: `SK`.
  /// {@endtemplate}
  const factory() = _SlkFactory;

  const new _()
    : super._(
        name: "Slovak",
        code: "SLK",
        codeShort: "SK",
        namesNative: const ["Slovenčina"],
        bibliographicCode: "SLO",
        family: const IndoEuropean(),
      );
}
