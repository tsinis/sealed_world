part of "../../model/language/language.dart";

extension type const _VolFactory._(LangVol _) implements LangVol {
  const _VolFactory() : this._(const LangVol._());
}

/// A class that represents the Volapük language.
class LangVol extends NaturalLanguage {
  /// {@template sealed_world.language_vol_constructor}
  /// Creates a instance of [LangVol] (Volapük language).
  ///
  /// ISO 639-2/T code: `VOL`, ISO 639-1 code: `VO`.
  /// {@endtemplate}
  const factory LangVol() = _VolFactory;

  const LangVol._()
    : super(
        name: "Volapük",
        code: "VOL",
        codeShort: "VO",
        namesNative: const ["Volapük"],
        family: const Constructed(),
      );
}
