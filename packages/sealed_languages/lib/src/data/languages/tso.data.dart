part of "../../model/language/submodels/natural_language.dart";

extension type const _TsoFactory._(LangTso _) implements LangTso {
  const new() : this._(const LangTso._());
}

/// A class that represents the Tsonga language.
final class LangTso extends NaturalLanguage {
  /// {@template sealed_world.language_tso_constructor}
  /// Creates a instance of [LangTso] (Tsonga language).
  ///
  /// ISO 639-2/T code: `TSO`, ISO 639-1 code: `TS`.
  /// {@endtemplate}
  const factory() = _TsoFactory;

  const new _()
    : super._(
        name: "Tsonga",
        code: "TSO",
        codeShort: "TS",
        namesNative: const ["Xitsonga"],
        family: const NigerCongo(),
      );
}
