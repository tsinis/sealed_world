part of "../../model/language/language.dart";

extension type const _IkuFactory._(LangIku _) implements LangIku {
  const _IkuFactory() : this._(const LangIku._());
}

/// A class that represents the Inuktitut language.
class LangIku extends NaturalLanguage {
  /// {@template sealed_world.language_iku_constructor}
  /// Creates a instance of [LangIku] (Inuktitut language).
  ///
  /// ISO 639-2/T code: `IKU`, ISO 639-1 code: `IU`.
  /// {@endtemplate}
  const factory LangIku() = _IkuFactory;

  const LangIku._()
    : super(
        name: "Inuktitut",
        code: "IKU",
        codeShort: "IU",
        namesNative: const ["ᐃᓄᒃᑎᑐᑦ"],
        family: const EskimoAleut(),
      );
}
