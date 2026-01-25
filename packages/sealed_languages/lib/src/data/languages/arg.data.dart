part of "../../model/language/submodels/natural_language.dart";

extension type const _ArgFactory._(LangArg _) implements LangArg {
  const _ArgFactory() : this._(const LangArg._());
}

/// A class that represents the Aragonese language.
final class LangArg extends NaturalLanguage {
  /// {@template sealed_world.language_arg_constructor}
  /// Creates a instance of [LangArg] (Aragonese language).
  ///
  /// ISO 639-2/T code: `ARG`, ISO 639-1 code: `AN`.
  /// {@endtemplate}
  const factory LangArg() = _ArgFactory;

  const LangArg._()
    : super._(
        name: "Aragonese",
        code: "ARG",
        codeShort: "AN",
        namesNative: const ["Aragonés"],
        family: const IndoEuropean(),
      );
}
