part of "../../model/language/submodels/natural_language.dart";

extension type const _NyaFactory._(LangNya _) implements LangNya {
  const new() : this._(const LangNya._());
}

/// A class that represents the Chichewa (Chewa/Nyanja) language.
final class LangNya extends NaturalLanguage {
  /// {@template sealed_world.language_nya_constructor}
  /// Creates a instance of [LangNya] (Chichewa (Chewa/Nyanja) language).
  ///
  /// ISO 639-2/T code: `NYA`, ISO 639-1 code: `NY`.
  /// {@endtemplate}
  const factory() = _NyaFactory;

  const new _()
    : super._(
        name: "Chichewa (Chewa/Nyanja)",
        code: "NYA",
        codeShort: "NY",
        namesNative: const ["ChiCheŵa", "Chinyanja"],
        family: const NigerCongo(),
      );
}
