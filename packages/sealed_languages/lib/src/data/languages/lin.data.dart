part of "../../model/language/language.dart";

extension type const _LinFactory._(LangLin _) implements LangLin {
  const _LinFactory() : this._(const LangLin._());
}

/// A class that represents the Lingala language.
class LangLin extends NaturalLanguage {
  /// {@template sealed_world.language_lin_constructor}
  /// Creates a instance of [LangLin] (Lingala language).
  ///
  /// ISO 639-2/T code: `LIN`, ISO 639-1 code: `LN`.
  /// {@endtemplate}
  const factory LangLin() = _LinFactory;

  const LangLin._()
    : super(
        name: "Lingala",
        code: "LIN",
        codeShort: "LN",
        namesNative: const ["Lingála"],
        family: const NigerCongo(),
      );
}
