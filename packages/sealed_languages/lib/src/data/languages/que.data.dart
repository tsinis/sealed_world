part of "../../model/language/language.dart";

extension type const _QueFactory._(LangQue _) implements LangQue {
  const _QueFactory() : this._(const LangQue._());
}

/// A class that represents the Quechua language.
class LangQue extends NaturalLanguage {
  /// {@template sealed_world.language_que_constructor}
  /// Creates a instance of [LangQue] (Quechua language).
  ///
  /// ISO 639-2/T code: `QUE`, ISO 639-1 code: `QU`.
  /// {@endtemplate}
  const factory LangQue() = _QueFactory;

  const LangQue._()
    : super(
        name: "Quechua",
        code: "QUE",
        codeShort: "QU",
        namesNative: const ["Runa Simi", "Kichwa"],
        family: const Quechuan(),
      );
}
