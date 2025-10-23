part of "../../model/script/writing_system.dart";

extension type const _LimbFactory._(ScriptLimb _) implements ScriptLimb {
  const _LimbFactory() : this._(const ScriptLimb._());
}

/// A class that represents the Limbu script.
class ScriptLimb extends Script {
  /// {@template sealed_world.script_limb_constructor}
  /// Creates a instance of [ScriptLimb] (Limbu script).
  ///
  /// ISO 15924 Alpha-4 code: `Limb`, ISO 15924 Numeric code: `336`.
  /// {@endtemplate}
  const factory ScriptLimb() = _LimbFactory;

  const ScriptLimb._()
    : super(
        name: "Limbu",
        code: "Limb",
        codeNumeric: "336",
        date: "2004-05-29",
        pva: "Limbu",
      );
}
