part of "../../model/language/submodels/natural_language.dart";

extension type const _OriFactory._(LangOri _) implements LangOri {
  const _OriFactory() : this._(const LangOri._());
}

/// A class that represents the Oriya language.
final class LangOri extends NaturalLanguage {
  /// {@template sealed_world.language_ori_constructor}
  /// Creates a instance of [LangOri] (Oriya language).
  ///
  /// ISO 639-2/T code: `ORI`, ISO 639-1 code: `OR`.
  /// {@endtemplate}
  const factory LangOri() = _OriFactory;

  const LangOri._()
    : super._(
        name: "Oriya",
        code: "ORI",
        codeShort: "OR",
        namesNative: const ["ଓଡ଼ିଆ"],
        family: const IndoEuropean(),
        scripts: const {ScriptOrya()},
      );
}
