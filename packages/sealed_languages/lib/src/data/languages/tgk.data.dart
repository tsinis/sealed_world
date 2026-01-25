part of "../../model/language/submodels/natural_language.dart";

extension type const _TgkFactory._(LangTgk _) implements LangTgk {
  const _TgkFactory() : this._(const LangTgk._());
}

/// A class that represents the Tajik language.
final class LangTgk extends NaturalLanguage {
  /// {@template sealed_world.language_tgk_constructor}
  /// Creates a instance of [LangTgk] (Tajik language).
  ///
  /// ISO 639-2/T code: `TGK`, ISO 639-1 code: `TG`.
  /// {@endtemplate}
  const factory LangTgk() = _TgkFactory;

  const LangTgk._()
    : super._(
        name: "Tajik",
        code: "TGK",
        codeShort: "TG",
        namesNative: const ["Тоҷикӣ", "تاجیکی‎", "Toçikī"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
