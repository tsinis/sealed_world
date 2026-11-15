part of "../../model/language/submodels/natural_language.dart";

extension type const _DanFactory._(LangDan _) implements LangDan {
  const new() : this._(const LangDan._());
}

/// A class that represents the Danish language.
final class LangDan extends NaturalLanguage {
  /// {@template sealed_world.language_dan_constructor}
  /// Creates a instance of [LangDan] (Danish language).
  ///
  /// ISO 639-2/T code: `DAN`, ISO 639-1 code: `DA`.
  /// {@endtemplate}
  const factory() = _DanFactory;

  const new _()
    : super._(
        name: "Danish",
        code: "DAN",
        codeShort: "DA",
        namesNative: const ["Dansk"],
        family: const IndoEuropean(),
      );
}
