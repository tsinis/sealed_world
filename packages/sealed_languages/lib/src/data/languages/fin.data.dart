part of "../../model/language/submodels/natural_language.dart";

extension type const _FinFactory._(LangFin _) implements LangFin {
  const _FinFactory() : this._(const LangFin._());
}

/// A class that represents the Finnish language.
final class LangFin extends NaturalLanguage {
  /// {@template sealed_world.language_fin_constructor}
  /// Creates a instance of [LangFin] (Finnish language).
  ///
  /// ISO 639-2/T code: `FIN`, ISO 639-1 code: `FI`.
  /// {@endtemplate}
  const factory LangFin() = _FinFactory;

  const LangFin._()
    : super._(
        name: "Finnish",
        code: "FIN",
        codeShort: "FI",
        namesNative: const ["Suomi", "Suomen kieli"],
        family: const Uralic(),
      );
}
