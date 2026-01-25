part of "../../model/language/submodels/natural_language.dart";

extension type const _WlnFactory._(LangWln _) implements LangWln {
  const _WlnFactory() : this._(const LangWln._());
}

/// A class that represents the Walloon language.
final class LangWln extends NaturalLanguage {
  /// {@template sealed_world.language_wln_constructor}
  /// Creates a instance of [LangWln] (Walloon language).
  ///
  /// ISO 639-2/T code: `WLN`, ISO 639-1 code: `WA`.
  /// {@endtemplate}
  const factory LangWln() = _WlnFactory;

  const LangWln._()
    : super._(
        name: "Walloon",
        code: "WLN",
        codeShort: "WA",
        namesNative: const ["Walon"],
        family: const IndoEuropean(),
      );
}
