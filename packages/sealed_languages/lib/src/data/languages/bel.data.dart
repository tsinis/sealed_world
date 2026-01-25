part of "../../model/language/submodels/natural_language.dart";

extension type const _BelFactory._(LangBel _) implements LangBel {
  const _BelFactory() : this._(const LangBel._());
}

/// A class that represents the Belarusian language.
final class LangBel extends NaturalLanguage {
  /// {@template sealed_world.language_bel_constructor}
  /// Creates a instance of [LangBel] (Belarusian language).
  ///
  /// ISO 639-2/T code: `BEL`, ISO 639-1 code: `BE`.
  /// {@endtemplate}
  const factory LangBel() = _BelFactory;

  const LangBel._()
    : super._(
        name: "Belarusian",
        code: "BEL",
        codeShort: "BE",
        namesNative: const ["Беларуская мова"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl()},
      );
}
