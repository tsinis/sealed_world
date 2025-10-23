part of "../../model/language/language.dart";

extension type const _IpkFactory._(LangIpk _) implements LangIpk {
  const _IpkFactory() : this._(const LangIpk._());
}

/// A class that represents the Inupiaq language.
class LangIpk extends NaturalLanguage {
  /// {@template sealed_world.language_ipk_constructor}
  /// Creates a instance of [LangIpk] (Inupiaq language).
  ///
  /// ISO 639-2/T code: `IPK`, ISO 639-1 code: `IK`.
  /// {@endtemplate}
  const factory LangIpk() = _IpkFactory;

  const LangIpk._()
    : super(
        name: "Inupiaq",
        code: "IPK",
        codeShort: "IK",
        namesNative: const ["Iñupiaq", "Iñupiatun"],
        family: const EskimoAleut(),
      );
}
