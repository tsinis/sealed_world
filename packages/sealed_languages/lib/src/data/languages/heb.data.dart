part of "../../model/language/submodels/natural_language.dart";

extension type const _HebFactory._(LangHeb _) implements LangHeb {
  const new() : this._(const LangHeb._());
}

/// A class that represents the Hebrew (modern) language.
final class LangHeb extends NaturalLanguage {
  /// {@template sealed_world.language_heb_constructor}
  /// Creates a instance of [LangHeb] (Hebrew (modern) language).
  ///
  /// ISO 639-2/T code: `HEB`, ISO 639-1 code: `HE`.
  /// {@endtemplate}
  const factory() = _HebFactory;

  const new _()
    : super._(
        name: "Hebrew (modern)",
        code: "HEB",
        codeShort: "HE",
        namesNative: const ["עברית"],
        family: const AfroAsiatic(),
        isRightToLeft: true,
        scripts: const {ScriptHebr()},
      );
}
