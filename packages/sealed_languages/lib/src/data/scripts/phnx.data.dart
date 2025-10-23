part of "../../model/script/writing_system.dart";

extension type const _PhnxFactory._(ScriptPhnx _) implements ScriptPhnx {
  const _PhnxFactory() : this._(const ScriptPhnx._());
}

/// A class that represents the Phoenician script.
class ScriptPhnx extends Script {
  /// {@template sealed_world.script_phnx_constructor}
  /// Creates a instance of [ScriptPhnx] (Phoenician script).
  ///
  /// ISO 15924 Alpha-4 code: `Phnx`, ISO 15924 Numeric code: `115`.
  /// {@endtemplate}
  const factory ScriptPhnx() = _PhnxFactory;

  const ScriptPhnx._()
    : super(
        name: "Phoenician",
        code: "Phnx",
        codeNumeric: "115",
        date: "2006-10-10",
        pva: "Phoenician",
      );
}
