part of "../../model/language/language.dart";

extension type const _SrpFactory._(LangSrp _) implements LangSrp {
  const _SrpFactory() : this._(const LangSrp._());
}

/// A class that represents the Serbian language.
class LangSrp extends NaturalLanguage {
  /// {@template sealed_world.language_srp_constructor}
  /// Creates a instance of [LangSrp] (Serbian language).
  ///
  /// ISO 639-2/T code: `SRP`, ISO 639-1 code: `SR`.
  /// {@endtemplate}
  const factory LangSrp() = _SrpFactory;

  const LangSrp._()
    : super(
        name: "Serbian",
        code: "SRP",
        codeShort: "SR",
        namesNative: const ["српски језик"],
        family: const IndoEuropean(),
        scripts: const {ScriptCyrl(), ScriptLatn()},
      );
}
