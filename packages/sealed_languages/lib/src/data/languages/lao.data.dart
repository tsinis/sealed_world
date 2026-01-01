part of "../../model/language/submodels/natural_language.dart";

extension type const _LaoFactory._(LangLao _) implements LangLao {
  const _LaoFactory() : this._(const LangLao._());
}

/// A class that represents the Lao language.
final class LangLao extends NaturalLanguage {
  /// {@template sealed_world.language_lao_constructor}
  /// Creates a instance of [LangLao] (Lao language).
  ///
  /// ISO 639-2/T code: `LAO`, ISO 639-1 code: `LO`.
  /// {@endtemplate}
  const factory LangLao() = _LaoFactory;

  const LangLao._()
    : super._(
        name: "Lao",
        code: "LAO",
        codeShort: "LO",
        namesNative: const ["ພາສາລາວ"],
        family: const TaiKadai(),
        scripts: const {ScriptLaoo()},
      );
}
