part of "../../model/language/language.dart";

extension type const _NyaFactory._(LangNya _) implements LangNya {
  const _NyaFactory() : this._(const LangNya._());
}

/// A class that represents the Chichewa (Chewa/Nyanja) language.
class LangNya extends NaturalLanguage {
  /// {@template sealed_world.language_nya_constructor}
  /// Creates a instance of [LangNya] (Chichewa (Chewa/Nyanja) language).
  ///
  /// ISO 639-2/T code: `NYA`, ISO 639-1 code: `NY`.
  /// {@endtemplate}
  const factory LangNya() = _NyaFactory;

  const LangNya._()
    : super(
        name: "Chichewa (Chewa/Nyanja)",
        code: "NYA",
        codeShort: "NY",
        namesNative: const ["chiCheŵa", "chinyanja"],
        family: const NigerCongo(),
      );
}
