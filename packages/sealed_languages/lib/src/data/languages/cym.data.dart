part of "../../model/language/language.dart";

extension type const _CymFactory._(LangCym _) implements LangCym {
  const _CymFactory() : this._(const LangCym._());
}

/// A class that represents the Welsh language.
class LangCym extends NaturalLanguage {
  /// {@template sealed_world.language_cym_constructor}
  /// Creates a instance of [LangCym] (Welsh language).
  ///
  /// ISO 639-2/T code: `CYM`, ISO 639-1 code: `CY`.
  /// {@endtemplate}
  const factory LangCym() = _CymFactory;

  const LangCym._()
    : super(
        name: "Welsh",
        code: "CYM",
        codeShort: "CY",
        namesNative: const ["Cymraeg"],
        bibliographicCode: "WEL",
        family: const IndoEuropean(),
      );
}
