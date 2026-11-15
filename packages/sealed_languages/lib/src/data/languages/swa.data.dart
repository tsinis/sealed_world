part of "../../model/language/submodels/natural_language.dart";

extension type const _SwaFactory._(LangSwa _) implements LangSwa {
  const new() : this._(const LangSwa._());
}

/// A class that represents the Swahili language.
final class LangSwa extends NaturalLanguage {
  /// {@template sealed_world.language_swa_constructor}
  /// Creates a instance of [LangSwa] (Swahili language).
  ///
  /// ISO 639-2/T code: `SWA`, ISO 639-1 code: `SW`.
  /// {@endtemplate}
  const factory() = _SwaFactory;

  const new _()
    : super._(
        name: "Swahili",
        code: "SWA",
        codeShort: "SW",
        namesNative: const ["Kiswahili"],
        family: const NigerCongo(),
      );
}
