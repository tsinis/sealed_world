part of "../../model/language/submodels/natural_language.dart";

extension type const _CesFactory._(LangCes _) implements LangCes {
  const _CesFactory() : this._(const LangCes._());
}

/// A class that represents the Czech language.
final class LangCes extends NaturalLanguage {
  /// {@template sealed_world.language_ces_constructor}
  /// Creates a instance of [LangCes] (Czech language).
  ///
  /// ISO 639-2/T code: `CES`, ISO 639-1 code: `CS`.
  /// {@endtemplate}
  const factory LangCes() = _CesFactory;

  const LangCes._()
    : super._(
        name: "Czech",
        code: "CES",
        codeShort: "CS",
        namesNative: const ["Čeština"],
        bibliographicCode: "CZE",
        family: const IndoEuropean(),
      );
}
