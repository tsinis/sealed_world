part of "../../model/language/language.dart";

extension type const _PorFactory._(LangPor _) implements LangPor {
  const _PorFactory() : this._(const LangPor._());
}

/// A class that represents the Portuguese language.
class LangPor extends NaturalLanguage {
  /// {@template sealed_world.language_por_constructor}
  /// Creates a instance of [LangPor] (Portuguese language).
  ///
  /// ISO 639-2/T code: `POR`, ISO 639-1 code: `PT`.
  /// {@endtemplate}
  const factory LangPor() = _PorFactory;

  const LangPor._()
    : super(
        name: "Portuguese",
        code: "POR",
        codeShort: "PT",
        namesNative: const ["Português"],
        family: const IndoEuropean(),
      );
}
