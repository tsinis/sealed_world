part of "../../model/language/language.dart";

extension type const _HerFactory._(LangHer _) implements LangHer {
  const _HerFactory() : this._(const LangHer._());
}

/// A class that represents the Herero language.
class LangHer extends NaturalLanguage {
  /// {@template sealed_world.language_her_constructor}
  /// Creates a instance of [LangHer] (Herero language).
  ///
  /// ISO 639-2/T code: `HER`, ISO 639-1 code: `HZ`.
  /// {@endtemplate}
  const factory LangHer() = _HerFactory;

  const LangHer._()
    : super(
        name: "Herero",
        code: "HER",
        codeShort: "HZ",
        namesNative: const ["Otjiherero"],
        family: const NigerCongo(),
      );
}
