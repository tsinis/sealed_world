part of "../../model/language/submodels/natural_language.dart";

extension type const _PusFactory._(LangPus _) implements LangPus {
  const new() : this._(const LangPus._());
}

/// A class that represents the Pashto (Pushto) language.
final class LangPus extends NaturalLanguage {
  /// {@template sealed_world.language_pus_constructor}
  /// Creates a instance of [LangPus] (Pashto (Pushto) language).
  ///
  /// ISO 639-2/T code: `PUS`, ISO 639-1 code: `PS`.
  /// {@endtemplate}
  const factory() = _PusFactory;

  const new _()
    : super._(
        name: "Pashto (Pushto)",
        code: "PUS",
        codeShort: "PS",
        namesNative: const ["پښتو"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab()},
      );
}
