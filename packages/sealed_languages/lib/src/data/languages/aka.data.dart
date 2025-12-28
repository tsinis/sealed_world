part of "../../model/language/submodels/natural_language.dart";

extension type const _AkaFactory._(LangAka _) implements LangAka {
  const _AkaFactory() : this._(const LangAka._());
}

/// A class that represents the Akan language.
final class LangAka extends NaturalLanguage {
  /// {@template sealed_world.language_aka_constructor}
  /// Creates a instance of [LangAka] (Akan language).
  ///
  /// ISO 639-2/T code: `AKA`, ISO 639-1 code: `AK`.
  /// {@endtemplate}
  const factory LangAka() = _AkaFactory;

  const LangAka._()
    : super._(
        name: "Akan",
        code: "AKA",
        codeShort: "AK",
        namesNative: const ["Akan"],
        family: const NigerCongo(),
      );
}
