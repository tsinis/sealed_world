part of "../../model/language/submodels/natural_language.dart";

extension type const _PanFactory._(LangPan _) implements LangPan {
  const _PanFactory() : this._(const LangPan._());
}

/// A class that represents the (Eastern) Punjabi language.
final class LangPan extends NaturalLanguage {
  /// {@template sealed_world.language_pan_constructor}
  /// Creates a instance of [LangPan] ((Eastern) Punjabi language).
  ///
  /// ISO 639-2/T code: `PAN`, ISO 639-1 code: `PA`.
  /// {@endtemplate}
  const factory LangPan() = _PanFactory;

  const LangPan._()
    : super._(
        name: "(Eastern) Punjabi",
        code: "PAN",
        codeShort: "PA",
        namesNative: const ["ਪੰਜਾਬੀ"],
        family: const IndoEuropean(),
        scripts: const {ScriptGuru()},
      );
}
