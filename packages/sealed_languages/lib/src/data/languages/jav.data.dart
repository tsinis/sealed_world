part of "../../model/language/submodels/natural_language.dart";

extension type const _JavFactory._(LangJav _) implements LangJav {
  const _JavFactory() : this._(const LangJav._());
}

/// A class that represents the Javanese language.
final class LangJav extends NaturalLanguage {
  /// {@template sealed_world.language_jav_constructor}
  /// Creates a instance of [LangJav] (Javanese language).
  ///
  /// ISO 639-2/T code: `JAV`, ISO 639-1 code: `JV`.
  /// {@endtemplate}
  const factory LangJav() = _JavFactory;

  const LangJav._()
    : super._(
        name: "Javanese",
        code: "JAV",
        codeShort: "JV",
        namesNative: const ["ꦧꦱꦗꦮ", "Basa Jawa"],
        family: const Austronesian(),
        scripts: const {ScriptLatn(), ScriptJava()},
      );
}
