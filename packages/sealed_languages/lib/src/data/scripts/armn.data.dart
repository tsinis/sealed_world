part of "../../model/script/writing_system.dart";

extension type const _ArmnFactory._(ScriptArmn _) implements ScriptArmn {
  const _ArmnFactory() : this._(const ScriptArmn._());
}

/// A class that represents the Armenian script.
class ScriptArmn extends Script {
  /// {@template sealed_world.script_armn_constructor}
  /// Creates a instance of [ScriptArmn] (Armenian script).
  ///
  /// ISO 15924 Alpha-4 code: `Armn`, ISO 15924 Numeric code: `230`.
  /// {@endtemplate}
  const factory ScriptArmn() = _ArmnFactory;

  const ScriptArmn._()
    : super(
        name: "Armenian",
        code: "Armn",
        codeNumeric: "230",
        date: "2004-05-01",
        pva: "Armenian",
      );
}
