part of "../../model/language/submodels/natural_language.dart";

extension type const _SnaFactory._(LangSna _) implements LangSna {
  const _SnaFactory() : this._(const LangSna._());
}

/// A class that represents the Shona language.
final class LangSna extends NaturalLanguage {
  /// {@template sealed_world.language_sna_constructor}
  /// Creates a instance of [LangSna] (Shona language).
  ///
  /// ISO 639-2/T code: `SNA`, ISO 639-1 code: `SN`.
  /// {@endtemplate}
  const factory LangSna() = _SnaFactory;

  const LangSna._()
    : super._(
        name: "Shona",
        code: "SNA",
        codeShort: "SN",
        namesNative: const ["ChiShona"],
        family: const NigerCongo(),
      );
}
