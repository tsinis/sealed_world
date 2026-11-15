part of "../../model/language/submodels/natural_language.dart";

extension type const _SagFactory._(LangSag _) implements LangSag {
  const new() : this._(const LangSag._());
}

/// A class that represents the Sango language.
final class LangSag extends NaturalLanguage {
  /// {@template sealed_world.language_sag_constructor}
  /// Creates a instance of [LangSag] (Sango language).
  ///
  /// ISO 639-2/T code: `SAG`, ISO 639-1 code: `SG`.
  /// {@endtemplate}
  const factory() = _SagFactory;

  const new _()
    : super._(
        name: "Sango",
        code: "SAG",
        codeShort: "SG",
        namesNative: const ["Yângâ tî sängö"],
        family: const Creole(),
      );
}
