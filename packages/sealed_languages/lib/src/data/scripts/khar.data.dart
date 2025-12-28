part of "../../model/script/submodels/script.dart";

extension type const _KharFactory._(ScriptKhar _) implements ScriptKhar {
  const _KharFactory() : this._(const ScriptKhar._());
}

/// A class that represents the Kharoshthi script.
final class ScriptKhar extends Script {
  /// {@template sealed_world.script_khar_constructor}
  /// Creates a instance of [ScriptKhar] (Kharoshthi script).
  ///
  /// ISO 15924 Alpha-4 code: `Khar`, ISO 15924 Numeric code: `305`.
  /// {@endtemplate}
  const factory ScriptKhar() = _KharFactory;

  const ScriptKhar._()
    : super._(
        name: "Kharoshthi",
        code: "Khar",
        codeNumeric: "305",
        date: "2006-06-21",
        pva: "Kharoshthi",
      );
}
