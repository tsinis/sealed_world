part of "../../model/language/submodels/natural_language.dart";

extension type const _AfrFactory._(LangAfr _) implements LangAfr {
  const _AfrFactory() : this._(const LangAfr._());
}

/// A class that represents the Afrikaans language.
final class LangAfr extends NaturalLanguage {
  /// {@template sealed_world.language_afr_constructor}
  /// Creates a instance of [LangAfr] (Afrikaans language).
  ///
  /// ISO 639-2/T code: `AFR`, ISO 639-1 code: `AF`.
  /// {@endtemplate}
  const factory LangAfr() = _AfrFactory;

  const LangAfr._()
    : super._(
        name: "Afrikaans",
        code: "AFR",
        codeShort: "AF",
        namesNative: const ["Afrikaans"],
        family: const IndoEuropean(),
      );
}
