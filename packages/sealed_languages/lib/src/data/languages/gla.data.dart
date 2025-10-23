part of "../../model/language/language.dart";

extension type const _GlaFactory._(LangGla _) implements LangGla {
  const _GlaFactory() : this._(const LangGla._());
}

/// A class that represents the (Scottish) Gaelic language.
class LangGla extends NaturalLanguage {
  /// {@template sealed_world.language_gla_constructor}
  /// Creates a instance of [LangGla] ((Scottish) Gaelic language).
  ///
  /// ISO 639-2/T code: `GLA`, ISO 639-1 code: `GD`.
  /// {@endtemplate}
  const factory LangGla() = _GlaFactory;

  const LangGla._()
    : super(
        name: "(Scottish) Gaelic",
        code: "GLA",
        codeShort: "GD",
        namesNative: const ["Gàidhlig"],
        family: const IndoEuropean(),
      );
}
