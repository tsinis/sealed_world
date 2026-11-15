part of "../../model/language/submodels/natural_language.dart";

extension type const _LinFactory._(LangLin _) implements LangLin {
  const new() : this._(const LangLin._());
}

/// A class that represents the Lingala language.
final class LangLin extends NaturalLanguage {
  /// {@template sealed_world.language_lin_constructor}
  /// Creates a instance of [LangLin] (Lingala language).
  ///
  /// ISO 639-2/T code: `LIN`, ISO 639-1 code: `LN`.
  /// {@endtemplate}
  const factory() = _LinFactory;

  const new _()
    : super._(
        name: "Lingala",
        code: "LIN",
        codeShort: "LN",
        namesNative: const ["Lingála"],
        family: const NigerCongo(),
      );
}
