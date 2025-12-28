part of "../../model/script/submodels/script.dart";

extension type const _HanbFactory._(ScriptHanb _) implements ScriptHanb {
  const _HanbFactory() : this._(const ScriptHanb._());
}

/// A class that represents the Han with Bopomofo (alias for Han + Bopomofo) script.
final class ScriptHanb extends Script {
  /// {@template sealed_world.script_hanb_constructor}
  /// Creates a instance of [ScriptHanb] (Han with Bopomofo (alias for Han + Bopomofo) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hanb`, ISO 15924 Numeric code: `503`.
  /// {@endtemplate}
  const factory ScriptHanb() = _HanbFactory;

  const ScriptHanb._()
    : super._(
        name: "Han with Bopomofo (alias for Han + Bopomofo)",
        code: "Hanb",
        codeNumeric: "503",
        date: "2016-01-19",
      );
}
