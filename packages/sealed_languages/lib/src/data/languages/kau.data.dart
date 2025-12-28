part of "../../model/language/submodels/natural_language.dart";

extension type const _KauFactory._(LangKau _) implements LangKau {
  const _KauFactory() : this._(const LangKau._());
}

/// A class that represents the Kanuri language.
final class LangKau extends NaturalLanguage {
  /// {@template sealed_world.language_kau_constructor}
  /// Creates a instance of [LangKau] (Kanuri language).
  ///
  /// ISO 639-2/T code: `KAU`, ISO 639-1 code: `KR`.
  /// {@endtemplate}
  const factory LangKau() = _KauFactory;

  const LangKau._()
    : super._(
        name: "Kanuri",
        code: "KAU",
        codeShort: "KR",
        namesNative: const ["Kanuri"],
        family: const NiloSaharan(),
        scripts: const {ScriptLatn(), ScriptArab()},
      );
}
