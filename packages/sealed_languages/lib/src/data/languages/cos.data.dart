part of "../../model/language/language.dart";

extension type const _CosFactory._(LangCos _) implements LangCos {
  const _CosFactory() : this._(const LangCos._());
}

/// A class that represents the Corsican language.
class LangCos extends NaturalLanguage {
  /// {@template sealed_world.language_cos_constructor}
  /// Creates a instance of [LangCos] (Corsican language).
  ///
  /// ISO 639-2/T code: `COS`, ISO 639-1 code: `CO`.
  /// {@endtemplate}
  const factory LangCos() = _CosFactory;

  const LangCos._()
    : super(
        name: "Corsican",
        code: "COS",
        codeShort: "CO",
        namesNative: const ["corsu", "lingua corsa"],
        family: const IndoEuropean(),
      );
}
