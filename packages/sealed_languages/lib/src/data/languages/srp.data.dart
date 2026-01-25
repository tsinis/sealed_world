part of "../../model/language/submodels/natural_language.dart";

extension type const _SrpFactory._(LangSrp _) implements LangSrp {
  const _SrpFactory() : this._(const LangSrp._());
}

/// A class that represents the Serbian language.
final class LangSrp extends NaturalLanguage {
  /// {@template sealed_world.language_srp_constructor}
  /// Creates a instance of [LangSrp] (Serbian language).
  ///
  /// ISO 639-2/T code: `SRP`, ISO 639-1 code: `SR`.
  /// {@endtemplate}
  const factory LangSrp() = _SrpFactory;

  const LangSrp._()
    : super._(
        name: "Serbian",
        code: "SRP",
        codeShort: "SR",
        namesNative: const ["Српски језик"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl(), ScriptLatn()},
      );
}
