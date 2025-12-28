part of "../../model/language/submodels/natural_language.dart";

extension type const _UrdFactory._(LangUrd _) implements LangUrd {
  const _UrdFactory() : this._(const LangUrd._());
}

/// A class that represents the Urdu language.
final class LangUrd extends NaturalLanguage {
  /// {@template sealed_world.language_urd_constructor}
  /// Creates a instance of [LangUrd] (Urdu language).
  ///
  /// ISO 639-2/T code: `URD`, ISO 639-1 code: `UR`.
  /// {@endtemplate}
  const factory LangUrd() = _UrdFactory;

  const LangUrd._()
    : super._(
        name: "Urdu",
        code: "URD",
        codeShort: "UR",
        namesNative: const ["اردو"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab()},
      );
}
