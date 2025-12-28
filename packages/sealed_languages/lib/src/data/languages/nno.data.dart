part of "../../model/language/submodels/natural_language.dart";

extension type const _NnoFactory._(LangNno _) implements LangNno {
  const _NnoFactory() : this._(const LangNno._());
}

/// A class that represents the Norwegian Nynorsk language.
final class LangNno extends NaturalLanguage {
  /// {@template sealed_world.language_nno_constructor}
  /// Creates a instance of [LangNno] (Norwegian Nynorsk language).
  ///
  /// ISO 639-2/T code: `NNO`, ISO 639-1 code: `NN`.
  /// {@endtemplate}
  const factory LangNno() = _NnoFactory;

  const LangNno._()
    : super._(
        name: "Norwegian Nynorsk",
        code: "NNO",
        codeShort: "NN",
        namesNative: const ["Norsk nynorsk"],
        family: const IndoEuropean(),
      );
}
