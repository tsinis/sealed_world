part of "../../model/script/submodels/script.dart";

extension type const _KitsFactory._(ScriptKits _) implements ScriptKits {
  const _KitsFactory() : this._(const ScriptKits._());
}

/// A class that represents the Khitan small script script.
final class ScriptKits extends Script {
  /// {@template sealed_world.script_kits_constructor}
  /// Creates a instance of [ScriptKits] (Khitan small script script).
  ///
  /// ISO 15924 Alpha-4 code: `Kits`, ISO 15924 Numeric code: `288`.
  /// {@endtemplate}
  const factory ScriptKits() = _KitsFactory;

  const ScriptKits._()
    : super._(
        name: "Khitan small script",
        code: "Kits",
        codeNumeric: "288",
        date: "2015-07-15",
        pva: "Khitan_Small_Script",
      );
}
