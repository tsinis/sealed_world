part of "../../model/language/submodels/natural_language.dart";

extension type const _CosFactory._(LangCos _) implements LangCos {
  const _CosFactory() : this._(const LangCos._());
}

/// A class that represents the Corsican language.
final class LangCos extends NaturalLanguage {
  /// {@template sealed_world.language_cos_constructor}
  /// Creates a instance of [LangCos] (Corsican language).
  ///
  /// ISO 639-2/T code: `COS`, ISO 639-1 code: `CO`.
  /// {@endtemplate}
  const factory LangCos() = _CosFactory;

  const LangCos._()
    : super._(
        name: "Corsican",
        code: "COS",
        codeShort: "CO",
        namesNative: const ["Corsu", "Lingua corsa"],
        family: const IndoEuropean(),
      );
}
