part of "../../model/language/submodels/natural_language.dart";

extension type const _ChvFactory._(LangChv _) implements LangChv {
  const _ChvFactory() : this._(const LangChv._());
}

/// A class that represents the Chuvash language.
final class LangChv extends NaturalLanguage {
  /// {@template sealed_world.language_chv_constructor}
  /// Creates a instance of [LangChv] (Chuvash language).
  ///
  /// ISO 639-2/T code: `CHV`, ISO 639-1 code: `CV`.
  /// {@endtemplate}
  const factory LangChv() = _ChvFactory;

  const LangChv._()
    : super._(
        name: "Chuvash",
        code: "CHV",
        codeShort: "CV",
        namesNative: const ["чӑваш чӗлхи"],
        family: const Turkic(),
        scripts: const {ScriptCyrl()},
      );
}
