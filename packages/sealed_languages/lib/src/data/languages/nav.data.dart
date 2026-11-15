part of "../../model/language/submodels/natural_language.dart";

extension type const _NavFactory._(LangNav _) implements LangNav {
  const new() : this._(const LangNav._());
}

/// A class that represents the Navajo (Navaho) language.
final class LangNav extends NaturalLanguage {
  /// {@template sealed_world.language_nav_constructor}
  /// Creates a instance of [LangNav] (Navajo (Navaho) language).
  ///
  /// ISO 639-2/T code: `NAV`, ISO 639-1 code: `NV`.
  /// {@endtemplate}
  const factory() = _NavFactory;

  const new _()
    : super._(
        name: "Navajo (Navaho)",
        code: "NAV",
        codeShort: "NV",
        namesNative: const ["Diné bizaad"],
        family: const DeneYeniseian(),
      );
}
