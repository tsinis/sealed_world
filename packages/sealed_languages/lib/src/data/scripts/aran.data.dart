part of "../../model/script/writing_system.dart";

extension type const _AranFactory._(ScriptAran _) implements ScriptAran {
  const _AranFactory() : this._(const ScriptAran._());
}

/// A class that represents the Arabic (Nastaliq variant) script.
class ScriptAran extends Script {
  /// {@template sealed_world.script_aran_constructor}
  /// Creates a instance of [ScriptAran] (Arabic (Nastaliq variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Aran`, ISO 15924 Numeric code: `161`.
  /// {@endtemplate}
  const factory ScriptAran() = _AranFactory;

  const ScriptAran._()
    : super(
        name: "Arabic (Nastaliq variant)",
        code: "Aran",
        codeNumeric: "161",
        date: "2014-11-15",
      );
}
