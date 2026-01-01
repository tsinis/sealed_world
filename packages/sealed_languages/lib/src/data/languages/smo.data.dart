part of "../../model/language/submodels/natural_language.dart";

extension type const _SmoFactory._(LangSmo _) implements LangSmo {
  const _SmoFactory() : this._(const LangSmo._());
}

/// A class that represents the Samoan language.
final class LangSmo extends NaturalLanguage {
  /// {@template sealed_world.language_smo_constructor}
  /// Creates a instance of [LangSmo] (Samoan language).
  ///
  /// ISO 639-2/T code: `SMO`, ISO 639-1 code: `SM`.
  /// {@endtemplate}
  const factory LangSmo() = _SmoFactory;

  const LangSmo._()
    : super._(
        name: "Samoan",
        code: "SMO",
        codeShort: "SM",
        namesNative: const ["gagana fa'a Samoa"],
        family: const Austronesian(),
      );
}
