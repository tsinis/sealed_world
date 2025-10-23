part of "../../model/script/writing_system.dart";

extension type const _PiqdFactory._(ScriptPiqd _) implements ScriptPiqd {
  const _PiqdFactory() : this._(const ScriptPiqd._());
}

/// A class that represents the Klingon (KLI pIqaD) script.
class ScriptPiqd extends Script {
  /// {@template sealed_world.script_piqd_constructor}
  /// Creates a instance of [ScriptPiqd] (Klingon (KLI pIqaD) script).
  ///
  /// ISO 15924 Alpha-4 code: `Piqd`, ISO 15924 Numeric code: `293`.
  /// {@endtemplate}
  const factory ScriptPiqd() = _PiqdFactory;

  const ScriptPiqd._()
    : super(
        name: "Klingon (KLI pIqaD)",
        code: "Piqd",
        codeNumeric: "293",
        date: "2015-12-16",
      );
}
