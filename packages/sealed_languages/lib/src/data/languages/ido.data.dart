part of "../../model/language/submodels/natural_language.dart";

extension type const _IdoFactory._(LangIdo _) implements LangIdo {
  const new() : this._(const LangIdo._());
}

/// A class that represents the Ido language.
final class LangIdo extends NaturalLanguage {
  /// {@template sealed_world.language_ido_constructor}
  /// Creates a instance of [LangIdo] (Ido language).
  ///
  /// ISO 639-2/T code: `IDO`, ISO 639-1 code: `IO`.
  /// {@endtemplate}
  const factory() = _IdoFactory;

  const new _()
    : super._(
        name: "Ido",
        code: "IDO",
        codeShort: "IO",
        namesNative: const ["Ido"],
        family: const Constructed(),
      );
}
