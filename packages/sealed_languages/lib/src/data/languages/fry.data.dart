part of "../../model/language/language.dart";

extension type const _FryFactory._(LangFry _) implements LangFry {
  const _FryFactory() : this._(const LangFry._());
}

/// A class that represents the Western Frisian language.
class LangFry extends NaturalLanguage {
  /// {@template sealed_world.language_fry_constructor}
  /// Creates a instance of [LangFry] (Western Frisian language).
  ///
  /// ISO 639-2/T code: `FRY`, ISO 639-1 code: `FY`.
  /// {@endtemplate}
  const factory LangFry() = _FryFactory;

  const LangFry._()
    : super(
        name: "Western Frisian",
        code: "FRY",
        codeShort: "FY",
        namesNative: const ["Frysk"],
        family: const IndoEuropean(),
      );
}
