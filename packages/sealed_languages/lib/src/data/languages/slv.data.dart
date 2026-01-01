part of "../../model/language/submodels/natural_language.dart";

extension type const _SlvFactory._(LangSlv _) implements LangSlv {
  const _SlvFactory() : this._(const LangSlv._());
}

/// A class that represents the Slovene language.
final class LangSlv extends NaturalLanguage {
  /// {@template sealed_world.language_slv_constructor}
  /// Creates a instance of [LangSlv] (Slovene language).
  ///
  /// ISO 639-2/T code: `SLV`, ISO 639-1 code: `SL`.
  /// {@endtemplate}
  const factory LangSlv() = _SlvFactory;

  const LangSlv._()
    : super._(
        name: "Slovene",
        code: "SLV",
        codeShort: "SL",
        namesNative: const ["slovenščina"],
        family: const IndoEuropean(),
      );
}
