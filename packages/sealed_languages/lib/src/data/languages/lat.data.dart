part of "../../model/language/submodels/natural_language.dart";

extension type const _LatFactory._(LangLat _) implements LangLat {
  const _LatFactory() : this._(const LangLat._());
}

/// A class that represents the Latin language.
final class LangLat extends NaturalLanguage {
  /// {@template sealed_world.language_lat_constructor}
  /// Creates a instance of [LangLat] (Latin language).
  ///
  /// ISO 639-2/T code: `LAT`, ISO 639-1 code: `LA`.
  /// {@endtemplate}
  const factory LangLat() = _LatFactory;

  const LangLat._()
    : super._(
        name: "Latin",
        code: "LAT",
        codeShort: "LA",
        namesNative: const ["Latine", "Lingua latina"],
        family: const IndoEuropean(),
      );
}
