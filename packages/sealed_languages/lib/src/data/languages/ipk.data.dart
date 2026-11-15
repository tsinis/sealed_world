part of "../../model/language/submodels/natural_language.dart";

extension type const _IpkFactory._(LangIpk _) implements LangIpk {
  const new() : this._(const LangIpk._());
}

/// A class that represents the Inupiaq language.
final class LangIpk extends NaturalLanguage {
  /// {@template sealed_world.language_ipk_constructor}
  /// Creates a instance of [LangIpk] (Inupiaq language).
  ///
  /// ISO 639-2/T code: `IPK`, ISO 639-1 code: `IK`.
  /// {@endtemplate}
  const factory() = _IpkFactory;

  const new _()
    : super._(
        name: "Inupiaq",
        code: "IPK",
        codeShort: "IK",
        namesNative: const ["Iñupiaq", "Iñupiatun"],
        family: const EskimoAleut(),
      );
}
