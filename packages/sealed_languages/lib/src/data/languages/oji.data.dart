part of "../../model/language/submodels/natural_language.dart";

extension type const _OjiFactory._(LangOji _) implements LangOji {
  const _OjiFactory() : this._(const LangOji._());
}

/// A class that represents the Ojibwe (Ojibwa) language.
final class LangOji extends NaturalLanguage {
  /// {@template sealed_world.language_oji_constructor}
  /// Creates a instance of [LangOji] (Ojibwe (Ojibwa) language).
  ///
  /// ISO 639-2/T code: `OJI`, ISO 639-1 code: `OJ`.
  /// {@endtemplate}
  const factory LangOji() = _OjiFactory;

  const LangOji._()
    : super._(
        name: "Ojibwe (Ojibwa)",
        code: "OJI",
        codeShort: "OJ",
        namesNative: const ["ᐊᓂᔑᓈᐯᒧᐎᓐ"],
        family: const Algonquian(),
      );
}
