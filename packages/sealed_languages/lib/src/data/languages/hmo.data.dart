part of "../../model/language/language.dart";

extension type const _HmoFactory._(LangHmo _) implements LangHmo {
  const _HmoFactory() : this._(const LangHmo._());
}

/// A class that represents the Hiri Motu language.
class LangHmo extends NaturalLanguage {
  /// {@template sealed_world.language_hmo_constructor}
  /// Creates a instance of [LangHmo] (Hiri Motu language).
  ///
  /// ISO 639-2/T code: `HMO`, ISO 639-1 code: `HO`.
  /// {@endtemplate}
  const factory LangHmo() = _HmoFactory;

  const LangHmo._()
    : super(
        name: "Hiri Motu",
        code: "HMO",
        codeShort: "HO",
        namesNative: const ["Hiri Motu"],
        family: const Austronesian(),
      );
}
