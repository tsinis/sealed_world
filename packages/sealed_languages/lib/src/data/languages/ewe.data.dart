part of "../../model/language/language.dart";

extension type const _EweFactory._(LangEwe _) implements LangEwe {
  const _EweFactory() : this._(const LangEwe._());
}

/// A class that represents the Ewe language.
class LangEwe extends NaturalLanguage {
  /// {@template sealed_world.language_ewe_constructor}
  /// Creates a instance of [LangEwe] (Ewe language).
  ///
  /// ISO 639-2/T code: `EWE`, ISO 639-1 code: `EE`.
  /// {@endtemplate}
  const factory LangEwe() = _EweFactory;

  const LangEwe._()
    : super(
        name: "Ewe",
        code: "EWE",
        codeShort: "EE",
        namesNative: const ["Eʋegbe"],
        family: const NigerCongo(),
      );
}
