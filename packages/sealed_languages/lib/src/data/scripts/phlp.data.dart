part of "../../model/script/writing_system.dart";

extension type const _PhlpFactory._(ScriptPhlp _) implements ScriptPhlp {
  const _PhlpFactory() : this._(const ScriptPhlp._());
}

/// A class that represents the Psalter Pahlavi script.
class ScriptPhlp extends Script {
  /// {@template sealed_world.script_phlp_constructor}
  /// Creates a instance of [ScriptPhlp] (Psalter Pahlavi script).
  ///
  /// ISO 15924 Alpha-4 code: `Phlp`, ISO 15924 Numeric code: `132`.
  /// {@endtemplate}
  const factory ScriptPhlp() = _PhlpFactory;

  const ScriptPhlp._()
    : super(
        name: "Psalter Pahlavi",
        code: "Phlp",
        codeNumeric: "132",
        date: "2014-11-15",
        pva: "Psalter_Pahlavi",
      );
}
