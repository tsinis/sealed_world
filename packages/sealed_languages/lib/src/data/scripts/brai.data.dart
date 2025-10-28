part of "../../model/script/writing_system.dart";

extension type const _BraiFactory._(ScriptBrai _) implements ScriptBrai {
  const _BraiFactory() : this._(const ScriptBrai._());
}

/// A class that represents the Braille script.
class ScriptBrai extends Script {
  /// {@template sealed_world.script_brai_constructor}
  /// Creates a instance of [ScriptBrai] (Braille script).
  ///
  /// ISO 15924 Alpha-4 code: `Brai`, ISO 15924 Numeric code: `570`.
  /// {@endtemplate}
  const factory ScriptBrai() = _BraiFactory;

  const ScriptBrai._()
    : super(
        name: "Braille",
        code: "Brai",
        codeNumeric: "570",
        date: "2004-05-01",
        pva: "Braille",
      );
}
