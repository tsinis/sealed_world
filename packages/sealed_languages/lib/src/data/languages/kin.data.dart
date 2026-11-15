part of "../../model/language/submodels/natural_language.dart";

extension type const _KinFactory._(LangKin _) implements LangKin {
  const new() : this._(const LangKin._());
}

/// A class that represents the Kinyarwanda language.
final class LangKin extends NaturalLanguage {
  /// {@template sealed_world.language_kin_constructor}
  /// Creates a instance of [LangKin] (Kinyarwanda language).
  ///
  /// ISO 639-2/T code: `KIN`, ISO 639-1 code: `RW`.
  /// {@endtemplate}
  const factory() = _KinFactory;

  const new _()
    : super._(
        name: "Kinyarwanda",
        code: "KIN",
        codeShort: "RW",
        namesNative: const ["Ikinyarwanda"],
        family: const NigerCongo(),
      );
}
