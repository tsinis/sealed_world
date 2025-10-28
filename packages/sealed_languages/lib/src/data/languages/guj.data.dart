part of "../../model/language/language.dart";

extension type const _GujFactory._(LangGuj _) implements LangGuj {
  const _GujFactory() : this._(const LangGuj._());
}

/// A class that represents the Gujarati language.
class LangGuj extends NaturalLanguage {
  /// {@template sealed_world.language_guj_constructor}
  /// Creates a instance of [LangGuj] (Gujarati language).
  ///
  /// ISO 639-2/T code: `GUJ`, ISO 639-1 code: `GU`.
  /// {@endtemplate}
  const factory LangGuj() = _GujFactory;

  const LangGuj._()
    : super(
        name: "Gujarati",
        code: "GUJ",
        codeShort: "GU",
        namesNative: const ["ગુજરાતી"],
        family: const IndoEuropean(),
        scripts: const {ScriptGujr()},
      );
}
