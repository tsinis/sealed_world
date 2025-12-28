part of "../../model/language/submodels/natural_language.dart";

extension type const _BamFactory._(LangBam _) implements LangBam {
  const _BamFactory() : this._(const LangBam._());
}

/// A class that represents the Bambara language.
final class LangBam extends NaturalLanguage {
  /// {@template sealed_world.language_bam_constructor}
  /// Creates a instance of [LangBam] (Bambara language).
  ///
  /// ISO 639-2/T code: `BAM`, ISO 639-1 code: `BM`.
  /// {@endtemplate}
  const factory LangBam() = _BamFactory;

  const LangBam._()
    : super._(
        name: "Bambara",
        code: "BAM",
        codeShort: "BM",
        namesNative: const ["bamanankan"],
        family: const NigerCongo(),
      );
}
