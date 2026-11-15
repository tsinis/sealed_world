part of "../../model/language/submodels/natural_language.dart";

extension type const _IndFactory._(LangInd _) implements LangInd {
  const new() : this._(const LangInd._());
}

/// A class that represents the Indonesian language.
final class LangInd extends NaturalLanguage {
  /// {@template sealed_world.language_ind_constructor}
  /// Creates a instance of [LangInd] (Indonesian language).
  ///
  /// ISO 639-2/T code: `IND`, ISO 639-1 code: `ID`.
  /// {@endtemplate}
  const factory() = _IndFactory;

  const new _()
    : super._(
        name: "Indonesian",
        code: "IND",
        codeShort: "ID",
        namesNative: const ["Bahasa Indonesia"],
        family: const Austronesian(),
      );
}
