part of "../../model/language/submodels/natural_language.dart";

extension type const _ZulFactory._(LangZul _) implements LangZul {
  const new() : this._(const LangZul._());
}

/// A class that represents the Zulu language.
final class LangZul extends NaturalLanguage {
  /// {@template sealed_world.language_zul_constructor}
  /// Creates a instance of [LangZul] (Zulu language).
  ///
  /// ISO 639-2/T code: `ZUL`, ISO 639-1 code: `ZU`.
  /// {@endtemplate}
  const factory() = _ZulFactory;

  const new _()
    : super._(
        name: "Zulu",
        code: "ZUL",
        codeShort: "ZU",
        namesNative: const ["isiZulu"],
        family: const NigerCongo(),
      );
}
