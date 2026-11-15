part of "../../model/language/submodels/natural_language.dart";

extension type const _LimFactory._(LangLim _) implements LangLim {
  const new() : this._(const LangLim._());
}

/// A class that represents the Limburgish (Limburgan/Limburger) language.
final class LangLim extends NaturalLanguage {
  /// {@template sealed_world.language_lim_constructor}
  /// Creates a instance of [LangLim] (Limburgish (Limburgan/Limburger) language).
  ///
  /// ISO 639-2/T code: `LIM`, ISO 639-1 code: `LI`.
  /// {@endtemplate}
  const factory() = _LimFactory;

  const new _()
    : super._(
        name: "Limburgish (Limburgan/Limburger)",
        code: "LIM",
        codeShort: "LI",
        namesNative: const ["Limburgs"],
        family: const IndoEuropean(),
      );
}
