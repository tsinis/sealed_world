part of "../../model/language/submodels/natural_language.dart";

extension type const _SotFactory._(LangSot _) implements LangSot {
  const _SotFactory() : this._(const LangSot._());
}

/// A class that represents the Southern Sotho language.
final class LangSot extends NaturalLanguage {
  /// {@template sealed_world.language_sot_constructor}
  /// Creates a instance of [LangSot] (Southern Sotho language).
  ///
  /// ISO 639-2/T code: `SOT`, ISO 639-1 code: `ST`.
  /// {@endtemplate}
  const factory LangSot() = _SotFactory;

  const LangSot._()
    : super._(
        name: "Southern Sotho",
        code: "SOT",
        codeShort: "ST",
        namesNative: const ["Sesotho"],
        family: const NigerCongo(),
      );
}
