part of "../../model/script/submodels/script.dart";

extension type const _VaiiFactory._(ScriptVaii _) implements ScriptVaii {
  const _VaiiFactory() : this._(const ScriptVaii._());
}

/// A class that represents the Vai script.
final class ScriptVaii extends Script {
  /// {@template sealed_world.script_vaii_constructor}
  /// Creates a instance of [ScriptVaii] (Vai script).
  ///
  /// ISO 15924 Alpha-4 code: `Vaii`, ISO 15924 Numeric code: `470`.
  /// {@endtemplate}
  const factory ScriptVaii() = _VaiiFactory;

  const ScriptVaii._()
    : super._(
        name: "Vai",
        code: "Vaii",
        codeNumeric: "470",
        date: "2007-07-02",
        pva: "Vai",
      );
}
