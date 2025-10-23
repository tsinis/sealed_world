part of "../../model/script/writing_system.dart";

extension type const _DiakFactory._(ScriptDiak _) implements ScriptDiak {
  const _DiakFactory() : this._(const ScriptDiak._());
}

/// A class that represents the Dives Akuru script.
class ScriptDiak extends Script {
  /// {@template sealed_world.script_diak_constructor}
  /// Creates a instance of [ScriptDiak] (Dives Akuru script).
  ///
  /// ISO 15924 Alpha-4 code: `Diak`, ISO 15924 Numeric code: `342`.
  /// {@endtemplate}
  const factory ScriptDiak() = _DiakFactory;

  const ScriptDiak._()
    : super(
        name: "Dives Akuru",
        code: "Diak",
        codeNumeric: "342",
        date: "2019-08-19",
        pva: "Dives_Akuru",
      );
}
