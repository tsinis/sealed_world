part of "../../model/language/language.dart";

extension type const _XhoFactory._(LangXho _) implements LangXho {
  const _XhoFactory() : this._(const LangXho._());
}

/// A class that represents the Xhosa language.
class LangXho extends NaturalLanguage {
  /// {@template sealed_world.language_xho_constructor}
  /// Creates a instance of [LangXho] (Xhosa language).
  ///
  /// ISO 639-2/T code: `XHO`, ISO 639-1 code: `XH`.
  /// {@endtemplate}
  const factory LangXho() = _XhoFactory;

  const LangXho._()
    : super(
        name: "Xhosa",
        code: "XHO",
        codeShort: "XH",
        namesNative: const ["isiXhosa"],
        family: const NigerCongo(),
      );
}
