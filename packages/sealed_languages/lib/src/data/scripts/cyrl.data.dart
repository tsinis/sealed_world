part of "../../model/script/writing_system.dart";

extension type const _CyrlFactory._(ScriptCyrl _) implements ScriptCyrl {
  const _CyrlFactory() : this._(const ScriptCyrl._());
}

/// A class that represents the Cyrillic script.
class ScriptCyrl extends Script {
  /// {@template sealed_world.script_cyrl_constructor}
  /// Creates a instance of [ScriptCyrl] (Cyrillic script).
  ///
  /// ISO 15924 Alpha-4 code: `Cyrl`, ISO 15924 Numeric code: `220`.
  /// {@endtemplate}
  const factory ScriptCyrl() = _CyrlFactory;

  const ScriptCyrl._()
    : super(
        name: "Cyrillic",
        code: "Cyrl",
        codeNumeric: "220",
        date: "2004-05-01",
        pva: "Cyrillic",
      );
}
