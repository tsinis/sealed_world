part of "../../model/language/language.dart";

extension type const _KonFactory._(LangKon _) implements LangKon {
  const _KonFactory() : this._(const LangKon._());
}

/// A class that represents the Kongo language.
class LangKon extends NaturalLanguage {
  /// {@template sealed_world.language_kon_constructor}
  /// Creates a instance of [LangKon] (Kongo language).
  ///
  /// ISO 639-2/T code: `KON`, ISO 639-1 code: `KG`.
  /// {@endtemplate}
  const factory LangKon() = _KonFactory;

  const LangKon._()
    : super(
        name: "Kongo",
        code: "KON",
        codeShort: "KG",
        namesNative: const ["Kikongo"],
        family: const NigerCongo(),
      );
}
