part of "../../model/language/language.dart";

extension type const _GrnFactory._(LangGrn _) implements LangGrn {
  const _GrnFactory() : this._(const LangGrn._());
}

/// A class that represents the Guaraní language.
class LangGrn extends NaturalLanguage {
  /// {@template sealed_world.language_grn_constructor}
  /// Creates a instance of [LangGrn] (Guaraní language).
  ///
  /// ISO 639-2/T code: `GRN`, ISO 639-1 code: `GN`.
  /// {@endtemplate}
  const factory LangGrn() = _GrnFactory;

  const LangGrn._()
    : super(
        name: "Guaraní",
        code: "GRN",
        codeShort: "GN",
        namesNative: const ["Avañe'ẽ"],
        family: const Tupian(),
      );
}
