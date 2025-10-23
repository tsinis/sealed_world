part of "../../model/script/writing_system.dart";

extension type const _SarbFactory._(ScriptSarb _) implements ScriptSarb {
  const _SarbFactory() : this._(const ScriptSarb._());
}

/// A class that represents the Old South Arabian script.
class ScriptSarb extends Script {
  /// {@template sealed_world.script_sarb_constructor}
  /// Creates a instance of [ScriptSarb] (Old South Arabian script).
  ///
  /// ISO 15924 Alpha-4 code: `Sarb`, ISO 15924 Numeric code: `105`.
  /// {@endtemplate}
  const factory ScriptSarb() = _SarbFactory;

  const ScriptSarb._()
    : super(
        name: "Old South Arabian",
        code: "Sarb",
        codeNumeric: "105",
        date: "2009-06-01",
        pva: "Old_South_Arabian",
      );
}
