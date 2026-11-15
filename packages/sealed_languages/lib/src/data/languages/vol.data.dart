part of "../../model/language/submodels/natural_language.dart";

extension type const _VolFactory._(LangVol _) implements LangVol {
  const new() : this._(const LangVol._());
}

/// A class that represents the Volapük language.
final class LangVol extends NaturalLanguage {
  /// {@template sealed_world.language_vol_constructor}
  /// Creates a instance of [LangVol] (Volapük language).
  ///
  /// ISO 639-2/T code: `VOL`, ISO 639-1 code: `VO`.
  /// {@endtemplate}
  const factory() = _VolFactory;

  const new _()
    : super._(
        name: "Volapük",
        code: "VOL",
        codeShort: "VO",
        namesNative: const ["Volapük"],
        family: const Constructed(),
      );
}
