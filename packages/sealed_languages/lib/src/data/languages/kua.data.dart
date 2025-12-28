part of "../../model/language/submodels/natural_language.dart";

extension type const _KuaFactory._(LangKua _) implements LangKua {
  const _KuaFactory() : this._(const LangKua._());
}

/// A class that represents the Kwanyama (Kuanyama) language.
final class LangKua extends NaturalLanguage {
  /// {@template sealed_world.language_kua_constructor}
  /// Creates a instance of [LangKua] (Kwanyama (Kuanyama) language).
  ///
  /// ISO 639-2/T code: `KUA`, ISO 639-1 code: `KJ`.
  /// {@endtemplate}
  const factory LangKua() = _KuaFactory;

  const LangKua._()
    : super._(
        name: "Kwanyama (Kuanyama)",
        code: "KUA",
        codeShort: "KJ",
        namesNative: const ["Kuanyama"],
        family: const NigerCongo(),
      );
}
