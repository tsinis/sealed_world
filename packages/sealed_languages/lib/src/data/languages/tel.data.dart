part of "../../model/language/submodels/natural_language.dart";

extension type const _TelFactory._(LangTel _) implements LangTel {
  const new() : this._(const LangTel._());
}

/// A class that represents the Telugu language.
final class LangTel extends NaturalLanguage {
  /// {@template sealed_world.language_tel_constructor}
  /// Creates a instance of [LangTel] (Telugu language).
  ///
  /// ISO 639-2/T code: `TEL`, ISO 639-1 code: `TE`.
  /// {@endtemplate}
  const factory() = _TelFactory;

  const new _()
    : super._(
        name: "Telugu",
        code: "TEL",
        codeShort: "TE",
        namesNative: const ["తెలుగు"],
        family: const Dravidian(),
        scripts: const {ScriptTelu()},
      );
}
