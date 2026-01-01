part of "../../model/language/submodels/natural_language.dart";

extension type const _SswFactory._(LangSsw _) implements LangSsw {
  const _SswFactory() : this._(const LangSsw._());
}

/// A class that represents the Swati language.
final class LangSsw extends NaturalLanguage {
  /// {@template sealed_world.language_ssw_constructor}
  /// Creates a instance of [LangSsw] (Swati language).
  ///
  /// ISO 639-2/T code: `SSW`, ISO 639-1 code: `SS`.
  /// {@endtemplate}
  const factory LangSsw() = _SswFactory;

  const LangSsw._()
    : super._(
        name: "Swati",
        code: "SSW",
        codeShort: "SS",
        namesNative: const ["SiSwati"],
        family: const NigerCongo(),
      );
}
