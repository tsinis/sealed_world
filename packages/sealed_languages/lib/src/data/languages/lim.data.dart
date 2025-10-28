part of "../../model/language/language.dart";

extension type const _LimFactory._(LangLim _) implements LangLim {
  const _LimFactory() : this._(const LangLim._());
}

/// A class that represents the Limburgish (Limburgan/Limburger) language.
class LangLim extends NaturalLanguage {
  /// {@template sealed_world.language_lim_constructor}
  /// Creates a instance of [LangLim] (Limburgish (Limburgan/Limburger) language).
  ///
  /// ISO 639-2/T code: `LIM`, ISO 639-1 code: `LI`.
  /// {@endtemplate}
  const factory LangLim() = _LimFactory;

  const LangLim._()
    : super(
        name: "Limburgish (Limburgan/Limburger)",
        code: "LIM",
        codeShort: "LI",
        namesNative: const ["Limburgs"],
        family: const IndoEuropean(),
      );
}
