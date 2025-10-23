part of "../../model/language/language.dart";

extension type const _OrmFactory._(LangOrm _) implements LangOrm {
  const _OrmFactory() : this._(const LangOrm._());
}

/// A class that represents the Oromo language.
class LangOrm extends NaturalLanguage {
  /// {@template sealed_world.language_orm_constructor}
  /// Creates a instance of [LangOrm] (Oromo language).
  ///
  /// ISO 639-2/T code: `ORM`, ISO 639-1 code: `OM`.
  /// {@endtemplate}
  const factory LangOrm() = _OrmFactory;

  const LangOrm._()
    : super(
        name: "Oromo",
        code: "ORM",
        codeShort: "OM",
        namesNative: const ["Afaan Oromoo"],
        family: const AfroAsiatic(),
      );
}
