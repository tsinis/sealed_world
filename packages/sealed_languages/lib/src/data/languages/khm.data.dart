part of "../../model/language/language.dart";

extension type const _KhmFactory._(LangKhm _) implements LangKhm {
  const _KhmFactory() : this._(const LangKhm._());
}

/// A class that represents the Khmer language.
class LangKhm extends NaturalLanguage {
  /// {@template sealed_world.language_khm_constructor}
  /// Creates a instance of [LangKhm] (Khmer language).
  ///
  /// ISO 639-2/T code: `KHM`, ISO 639-1 code: `KM`.
  /// {@endtemplate}
  const factory LangKhm() = _KhmFactory;

  const LangKhm._()
    : super(
        name: "Khmer",
        code: "KHM",
        codeShort: "KM",
        namesNative: const ["ខ្មែរ", "ខេមរភាសា", "ភាសាខ្មែរ"],
        family: const Austroasiatic(),
        scripts: const {ScriptKhmr()},
      );
}
