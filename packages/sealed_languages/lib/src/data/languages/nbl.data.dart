part of "../../model/language/submodels/natural_language.dart";

extension type const _NblFactory._(LangNbl _) implements LangNbl {
  const _NblFactory() : this._(const LangNbl._());
}

/// A class that represents the Southern Ndebele language.
final class LangNbl extends NaturalLanguage {
  /// {@template sealed_world.language_nbl_constructor}
  /// Creates a instance of [LangNbl] (Southern Ndebele language).
  ///
  /// ISO 639-2/T code: `NBL`, ISO 639-1 code: `NR`.
  /// {@endtemplate}
  const factory LangNbl() = _NblFactory;

  const LangNbl._()
    : super._(
        name: "Southern Ndebele",
        code: "NBL",
        codeShort: "NR",
        namesNative: const ["isiNdebele"],
        family: const NigerCongo(),
      );
}
