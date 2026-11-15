part of "../../model/language/submodels/natural_language.dart";

extension type const _FijFactory._(LangFij _) implements LangFij {
  const new() : this._(const LangFij._());
}

/// A class that represents the Fijian language.
final class LangFij extends NaturalLanguage {
  /// {@template sealed_world.language_fij_constructor}
  /// Creates a instance of [LangFij] (Fijian language).
  ///
  /// ISO 639-2/T code: `FIJ`, ISO 639-1 code: `FJ`.
  /// {@endtemplate}
  const factory() = _FijFactory;

  const new _()
    : super._(
        name: "Fijian",
        code: "FIJ",
        codeShort: "FJ",
        namesNative: const ["Vosa Vakaviti"],
        family: const Austronesian(),
      );
}
