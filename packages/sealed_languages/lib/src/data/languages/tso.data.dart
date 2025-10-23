part of "../../model/language/language.dart";

extension type const _TsoFactory._(LangTso _) implements LangTso {
  const _TsoFactory() : this._(const LangTso._());
}

/// A class that represents the Tsonga language.
class LangTso extends NaturalLanguage {
  /// {@template sealed_world.language_tso_constructor}
  /// Creates a instance of [LangTso] (Tsonga language).
  ///
  /// ISO 639-2/T code: `TSO`, ISO 639-1 code: `TS`.
  /// {@endtemplate}
  const factory LangTso() = _TsoFactory;

  const LangTso._()
    : super(
        name: "Tsonga",
        code: "TSO",
        codeShort: "TS",
        namesNative: const ["Xitsonga"],
        family: const NigerCongo(),
      );
}
