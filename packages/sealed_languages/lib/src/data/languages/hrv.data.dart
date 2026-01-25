part of "../../model/language/submodels/natural_language.dart";

extension type const _HrvFactory._(LangHrv _) implements LangHrv {
  const _HrvFactory() : this._(const LangHrv._());
}

/// A class that represents the Croatian language.
final class LangHrv extends NaturalLanguage {
  /// {@template sealed_world.language_hrv_constructor}
  /// Creates a instance of [LangHrv] (Croatian language).
  ///
  /// ISO 639-2/T code: `HRV`, ISO 639-1 code: `HR`.
  /// {@endtemplate}
  const factory LangHrv() = _HrvFactory;

  const LangHrv._()
    : super._(
        name: "Croatian",
        code: "HRV",
        codeShort: "HR",
        namesNative: const ["Hrvatski jezik"],
        family: const IndoEuropean(),
      );
}
