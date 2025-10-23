part of "../../model/language/language.dart";

extension type const _SagFactory._(LangSag _) implements LangSag {
  const _SagFactory() : this._(const LangSag._());
}

/// A class that represents the Sango language.
class LangSag extends NaturalLanguage {
  /// {@template sealed_world.language_sag_constructor}
  /// Creates a instance of [LangSag] (Sango language).
  ///
  /// ISO 639-2/T code: `SAG`, ISO 639-1 code: `SG`.
  /// {@endtemplate}
  const factory LangSag() = _SagFactory;

  const LangSag._()
    : super(
        name: "Sango",
        code: "SAG",
        codeShort: "SG",
        namesNative: const ["yângâ tî sängö"],
        family: const Creole(),
      );
}
