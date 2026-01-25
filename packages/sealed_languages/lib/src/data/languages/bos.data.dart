part of "../../model/language/submodels/natural_language.dart";

extension type const _BosFactory._(LangBos _) implements LangBos {
  const _BosFactory() : this._(const LangBos._());
}

/// A class that represents the Bosnian language.
final class LangBos extends NaturalLanguage {
  /// {@template sealed_world.language_bos_constructor}
  /// Creates a instance of [LangBos] (Bosnian language).
  ///
  /// ISO 639-2/T code: `BOS`, ISO 639-1 code: `BS`.
  /// {@endtemplate}
  const factory LangBos() = _BosFactory;

  const LangBos._()
    : super._(
        name: "Bosnian",
        code: "BOS",
        codeShort: "BS",
        namesNative: const ["Bosanski jezik"],
        family: const IndoEuropean(),
        scripts: const {ScriptLatn(), ScriptCyrl()},
      );
}
