part of "../../model/language/submodels/natural_language.dart";

extension type const _MahFactory._(LangMah _) implements LangMah {
  const new() : this._(const LangMah._());
}

/// A class that represents the Marshallese language.
final class LangMah extends NaturalLanguage {
  /// {@template sealed_world.language_mah_constructor}
  /// Creates a instance of [LangMah] (Marshallese language).
  ///
  /// ISO 639-2/T code: `MAH`, ISO 639-1 code: `MH`.
  /// {@endtemplate}
  const factory() = _MahFactory;

  const new _()
    : super._(
        name: "Marshallese",
        code: "MAH",
        codeShort: "MH",
        namesNative: const ["Kajin M̧ajeļ"],
        family: const Austronesian(),
      );
}
