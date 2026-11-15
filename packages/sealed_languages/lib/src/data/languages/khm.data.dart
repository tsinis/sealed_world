part of "../../model/language/submodels/natural_language.dart";

extension type const _KhmFactory._(LangKhm _) implements LangKhm {
  const new() : this._(const LangKhm._());
}

/// A class that represents the Khmer language.
final class LangKhm extends NaturalLanguage {
  /// {@template sealed_world.language_khm_constructor}
  /// Creates a instance of [LangKhm] (Khmer language).
  ///
  /// ISO 639-2/T code: `KHM`, ISO 639-1 code: `KM`.
  /// {@endtemplate}
  const factory() = _KhmFactory;

  const new _()
    : super._(
        name: "Khmer",
        code: "KHM",
        codeShort: "KM",
        namesNative: const ["ខ្មែរ", "ខេមរភាសា", "ភាសាខ្មែរ"],
        family: const Austroasiatic(),
        scripts: const {ScriptKhmr()},
      );
}
