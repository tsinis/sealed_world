part of "../../model/language/submodels/natural_language.dart";

extension type const _YorFactory._(LangYor _) implements LangYor {
  const _YorFactory() : this._(const LangYor._());
}

/// A class that represents the Yoruba language.
final class LangYor extends NaturalLanguage {
  /// {@template sealed_world.language_yor_constructor}
  /// Creates a instance of [LangYor] (Yoruba language).
  ///
  /// ISO 639-2/T code: `YOR`, ISO 639-1 code: `YO`.
  /// {@endtemplate}
  const factory LangYor() = _YorFactory;

  const LangYor._()
    : super._(
        name: "Yoruba",
        code: "YOR",
        codeShort: "YO",
        namesNative: const ["Yorùbá"],
        family: const NigerCongo(),
      );
}
