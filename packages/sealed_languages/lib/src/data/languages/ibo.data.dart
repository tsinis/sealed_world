part of "../../model/language/submodels/natural_language.dart";

extension type const _IboFactory._(LangIbo _) implements LangIbo {
  const _IboFactory() : this._(const LangIbo._());
}

/// A class that represents the Igbo language.
final class LangIbo extends NaturalLanguage {
  /// {@template sealed_world.language_ibo_constructor}
  /// Creates a instance of [LangIbo] (Igbo language).
  ///
  /// ISO 639-2/T code: `IBO`, ISO 639-1 code: `IG`.
  /// {@endtemplate}
  const factory LangIbo() = _IboFactory;

  const LangIbo._()
    : super._(
        name: "Igbo",
        code: "IBO",
        codeShort: "IG",
        namesNative: const ["Asụsụ Igbo"],
        family: const NigerCongo(),
      );
}
