part of "../../model/language/submodels/natural_language.dart";

extension type const _NdeFactory._(LangNde _) implements LangNde {
  const _NdeFactory() : this._(const LangNde._());
}

/// A class that represents the Northern Ndebele language.
final class LangNde extends NaturalLanguage {
  /// {@template sealed_world.language_nde_constructor}
  /// Creates a instance of [LangNde] (Northern Ndebele language).
  ///
  /// ISO 639-2/T code: `NDE`, ISO 639-1 code: `ND`.
  /// {@endtemplate}
  const factory LangNde() = _NdeFactory;

  const LangNde._()
    : super._(
        name: "Northern Ndebele",
        code: "NDE",
        codeShort: "ND",
        namesNative: const ["IsiNdebele"],
        family: const NigerCongo(),
      );
}
