part of "../../model/language/submodels/natural_language.dart";

extension type const _JpnFactory._(LangJpn _) implements LangJpn {
  const _JpnFactory() : this._(const LangJpn._());
}

/// A class that represents the Japanese language.
final class LangJpn extends NaturalLanguage {
  /// {@template sealed_world.language_jpn_constructor}
  /// Creates a instance of [LangJpn] (Japanese language).
  ///
  /// ISO 639-2/T code: `JPN`, ISO 639-1 code: `JA`.
  /// {@endtemplate}
  const factory LangJpn() = _JpnFactory;

  const LangJpn._()
    : super._(
        name: "Japanese",
        code: "JPN",
        codeShort: "JA",
        namesNative: const ["日本語 (にほんご)"],
        family: const Japonic(),
        scripts: const {ScriptJpan()},
      );
}
