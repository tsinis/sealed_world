part of "../../model/language/language.dart";

extension type const _RonFactory._(LangRon _) implements LangRon {
  const _RonFactory() : this._(const LangRon._());
}

/// A class that represents the Romanian language.
class LangRon extends NaturalLanguage {
  /// {@template sealed_world.language_ron_constructor}
  /// Creates a instance of [LangRon] (Romanian language).
  ///
  /// ISO 639-2/T code: `RON`, ISO 639-1 code: `RO`.
  /// {@endtemplate}
  const factory LangRon() = _RonFactory;

  const LangRon._()
    : super(
        name: "Romanian",
        code: "RON",
        codeShort: "RO",
        namesNative: const ["Română"],
        bibliographicCode: "RUM",
        family: const IndoEuropean(),
      );
}
