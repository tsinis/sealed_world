part of "../../model/language/submodels/natural_language.dart";

extension type const _OciFactory._(LangOci _) implements LangOci {
  const _OciFactory() : this._(const LangOci._());
}

/// A class that represents the Occitan language.
final class LangOci extends NaturalLanguage {
  /// {@template sealed_world.language_oci_constructor}
  /// Creates a instance of [LangOci] (Occitan language).
  ///
  /// ISO 639-2/T code: `OCI`, ISO 639-1 code: `OC`.
  /// {@endtemplate}
  const factory LangOci() = _OciFactory;

  const LangOci._()
    : super._(
        name: "Occitan",
        code: "OCI",
        codeShort: "OC",
        namesNative: const ["occitan", "lenga d'òc"],
        family: const IndoEuropean(),
      );
}
