part of "../../model/language/submodels/natural_language.dart";

extension type const _SomFactory._(LangSom _) implements LangSom {
  const _SomFactory() : this._(const LangSom._());
}

/// A class that represents the Somali language.
final class LangSom extends NaturalLanguage {
  /// {@template sealed_world.language_som_constructor}
  /// Creates a instance of [LangSom] (Somali language).
  ///
  /// ISO 639-2/T code: `SOM`, ISO 639-1 code: `SO`.
  /// {@endtemplate}
  const factory LangSom() = _SomFactory;

  const LangSom._()
    : super._(
        name: "Somali",
        code: "SOM",
        codeShort: "SO",
        namesNative: const ["Soomaaliga"],
        family: const AfroAsiatic(),
      );
}
