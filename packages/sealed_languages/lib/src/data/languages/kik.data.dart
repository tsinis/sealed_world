part of "../../model/language/language.dart";

extension type const _KikFactory._(LangKik _) implements LangKik {
  const _KikFactory() : this._(const LangKik._());
}

/// A class that represents the Kikuyu (Gikuyu) language.
class LangKik extends NaturalLanguage {
  /// {@template sealed_world.language_kik_constructor}
  /// Creates a instance of [LangKik] (Kikuyu (Gikuyu) language).
  ///
  /// ISO 639-2/T code: `KIK`, ISO 639-1 code: `KI`.
  /// {@endtemplate}
  const factory LangKik() = _KikFactory;

  const LangKik._()
    : super(
        name: "Kikuyu (Gikuyu)",
        code: "KIK",
        codeShort: "KI",
        namesNative: const ["Gĩkũyũ"],
        family: const NigerCongo(),
      );
}
