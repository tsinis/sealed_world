part of "../../model/language/submodels/natural_language.dart";

extension type const _RunFactory._(LangRun _) implements LangRun {
  const _RunFactory() : this._(const LangRun._());
}

/// A class that represents the Kirundi language.
final class LangRun extends NaturalLanguage {
  /// {@template sealed_world.language_run_constructor}
  /// Creates a instance of [LangRun] (Kirundi language).
  ///
  /// ISO 639-2/T code: `RUN`, ISO 639-1 code: `RN`.
  /// {@endtemplate}
  const factory LangRun() = _RunFactory;

  const LangRun._()
    : super._(
        name: "Kirundi",
        code: "RUN",
        codeShort: "RN",
        namesNative: const ["Ikirundi"],
        family: const NigerCongo(),
      );
}
