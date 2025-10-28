part of "../../model/language/language.dart";

extension type const _TsnFactory._(LangTsn _) implements LangTsn {
  const _TsnFactory() : this._(const LangTsn._());
}

/// A class that represents the Tswana language.
class LangTsn extends NaturalLanguage {
  /// {@template sealed_world.language_tsn_constructor}
  /// Creates a instance of [LangTsn] (Tswana language).
  ///
  /// ISO 639-2/T code: `TSN`, ISO 639-1 code: `TN`.
  /// {@endtemplate}
  const factory LangTsn() = _TsnFactory;

  const LangTsn._()
    : super(
        name: "Tswana",
        code: "TSN",
        codeShort: "TN",
        namesNative: const ["Setswana"],
        family: const NigerCongo(),
      );
}
