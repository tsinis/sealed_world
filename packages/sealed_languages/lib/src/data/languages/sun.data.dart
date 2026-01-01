part of "../../model/language/submodels/natural_language.dart";

extension type const _SunFactory._(LangSun _) implements LangSun {
  const _SunFactory() : this._(const LangSun._());
}

/// A class that represents the Sundanese language.
final class LangSun extends NaturalLanguage {
  /// {@template sealed_world.language_sun_constructor}
  /// Creates a instance of [LangSun] (Sundanese language).
  ///
  /// ISO 639-2/T code: `SUN`, ISO 639-1 code: `SU`.
  /// {@endtemplate}
  const factory LangSun() = _SunFactory;

  const LangSun._()
    : super._(
        name: "Sundanese",
        code: "SUN",
        codeShort: "SU",
        namesNative: const ["Basa Sunda"],
        family: const Austronesian(),
        scripts: const {ScriptLatn(), ScriptSund()},
      );
}
