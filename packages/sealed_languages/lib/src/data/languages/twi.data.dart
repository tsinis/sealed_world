part of "../../model/language/submodels/natural_language.dart";

extension type const _TwiFactory._(LangTwi _) implements LangTwi {
  const new() : this._(const LangTwi._());
}

/// A class that represents the Twi language.
final class LangTwi extends NaturalLanguage {
  /// {@template sealed_world.language_twi_constructor}
  /// Creates a instance of [LangTwi] (Twi language).
  ///
  /// ISO 639-2/T code: `TWI`, ISO 639-1 code: `TW`.
  /// {@endtemplate}
  const factory() = _TwiFactory;

  const new _()
    : super._(
        name: "Twi",
        code: "TWI",
        codeShort: "TW",
        namesNative: const ["Twi"],
        family: const NigerCongo(),
      );
}
