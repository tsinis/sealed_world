part of "../../model/language/submodels/natural_language.dart";

extension type const _TglFactory._(LangTgl _) implements LangTgl {
  const _TglFactory() : this._(const LangTgl._());
}

/// A class that represents the Tagalog language.
final class LangTgl extends NaturalLanguage {
  /// {@template sealed_world.language_tgl_constructor}
  /// Creates a instance of [LangTgl] (Tagalog language).
  ///
  /// ISO 639-2/T code: `TGL`, ISO 639-1 code: `TL`.
  /// {@endtemplate}
  const factory LangTgl() = _TglFactory;

  const LangTgl._()
    : super._(
        name: "Tagalog",
        code: "TGL",
        codeShort: "TL",
        namesNative: const ["Wikang Tagalog"],
        family: const Austronesian(),
      );
}
