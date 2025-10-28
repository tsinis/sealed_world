part of "../../model/language/language.dart";

extension type const _NdeFactory._(LangNde _) implements LangNde {
  const _NdeFactory() : this._(const LangNde._());
}

/// A class that represents the Northern Ndebele language.
class LangNde extends NaturalLanguage {
  /// {@template sealed_world.language_nde_constructor}
  /// Creates a instance of [LangNde] (Northern Ndebele language).
  ///
  /// ISO 639-2/T code: `NDE`, ISO 639-1 code: `ND`.
  /// {@endtemplate}
  const factory LangNde() = _NdeFactory;

  const LangNde._()
    : super(
        name: "Northern Ndebele",
        code: "NDE",
        codeShort: "ND",
        namesNative: const ["isiNdebele"],
        family: const NigerCongo(),
      );
}
