part of "../../model/script/writing_system.dart";

extension type const _MlymFactory._(ScriptMlym _) implements ScriptMlym {
  const _MlymFactory() : this._(const ScriptMlym._());
}

/// A class that represents the Malayalam script.
class ScriptMlym extends Script {
  /// {@template sealed_world.script_mlym_constructor}
  /// Creates a instance of [ScriptMlym] (Malayalam script).
  ///
  /// ISO 15924 Alpha-4 code: `Mlym`, ISO 15924 Numeric code: `347`.
  /// {@endtemplate}
  const factory ScriptMlym() = _MlymFactory;

  const ScriptMlym._()
    : super(
        name: "Malayalam",
        code: "Mlym",
        codeNumeric: "347",
        date: "2004-05-01",
        pva: "Malayalam",
      );
}
