part of "../../model/language/submodels/natural_language.dart";

extension type const _NdoFactory._(LangNdo _) implements LangNdo {
  const new() : this._(const LangNdo._());
}

/// A class that represents the Ndonga language.
final class LangNdo extends NaturalLanguage {
  /// {@template sealed_world.language_ndo_constructor}
  /// Creates a instance of [LangNdo] (Ndonga language).
  ///
  /// ISO 639-2/T code: `NDO`, ISO 639-1 code: `NG`.
  /// {@endtemplate}
  const factory() = _NdoFactory;

  const new _()
    : super._(
        name: "Ndonga",
        code: "NDO",
        codeShort: "NG",
        namesNative: const ["Owambo"],
        family: const NigerCongo(),
      );
}
