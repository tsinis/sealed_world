part of "../../model/language/language.dart";

extension type const _IslFactory._(LangIsl _) implements LangIsl {
  const _IslFactory() : this._(const LangIsl._());
}

/// A class that represents the Icelandic language.
class LangIsl extends NaturalLanguage {
  /// {@template sealed_world.language_isl_constructor}
  /// Creates a instance of [LangIsl] (Icelandic language).
  ///
  /// ISO 639-2/T code: `ISL`, ISO 639-1 code: `IS`.
  /// {@endtemplate}
  const factory LangIsl() = _IslFactory;

  const LangIsl._()
    : super(
        name: "Icelandic",
        code: "ISL",
        codeShort: "IS",
        namesNative: const ["Íslenska"],
        bibliographicCode: "ICE",
        family: const IndoEuropean(),
      );
}
