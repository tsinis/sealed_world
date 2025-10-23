part of "../../model/language/language.dart";

extension type const _PusFactory._(LangPus _) implements LangPus {
  const _PusFactory() : this._(const LangPus._());
}

/// A class that represents the Pashto (Pushto) language.
class LangPus extends NaturalLanguage {
  /// {@template sealed_world.language_pus_constructor}
  /// Creates a instance of [LangPus] (Pashto (Pushto) language).
  ///
  /// ISO 639-2/T code: `PUS`, ISO 639-1 code: `PS`.
  /// {@endtemplate}
  const factory LangPus() = _PusFactory;

  const LangPus._()
    : super(
        name: "Pashto (Pushto)",
        code: "PUS",
        codeShort: "PS",
        namesNative: const ["پښتو"],
        family: const IndoEuropean(),
        isRightToLeft: true,
        scripts: const {ScriptArab()},
      );
}
