part of "../../model/language/submodels/natural_language.dart";

extension type const _TonFactory._(LangTon _) implements LangTon {
  const _TonFactory() : this._(const LangTon._());
}

/// A class that represents the Tonga (Tonga Islands) language.
final class LangTon extends NaturalLanguage {
  /// {@template sealed_world.language_ton_constructor}
  /// Creates a instance of [LangTon] (Tonga (Tonga Islands) language).
  ///
  /// ISO 639-2/T code: `TON`, ISO 639-1 code: `TO`.
  /// {@endtemplate}
  const factory LangTon() = _TonFactory;

  const LangTon._()
    : super._(
        name: "Tonga (Tonga Islands)",
        code: "TON",
        codeShort: "TO",
        namesNative: const ["faka Tonga"],
        family: const Austronesian(),
      );
}
