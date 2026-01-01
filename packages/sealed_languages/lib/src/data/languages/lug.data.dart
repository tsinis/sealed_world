part of "../../model/language/submodels/natural_language.dart";

extension type const _LugFactory._(LangLug _) implements LangLug {
  const _LugFactory() : this._(const LangLug._());
}

/// A class that represents the Ganda language.
final class LangLug extends NaturalLanguage {
  /// {@template sealed_world.language_lug_constructor}
  /// Creates a instance of [LangLug] (Ganda language).
  ///
  /// ISO 639-2/T code: `LUG`, ISO 639-1 code: `LG`.
  /// {@endtemplate}
  const factory LangLug() = _LugFactory;

  const LangLug._()
    : super._(
        name: "Ganda",
        code: "LUG",
        codeShort: "LG",
        namesNative: const ["Luganda"],
        family: const NigerCongo(),
      );
}
