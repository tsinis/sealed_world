part of "../../model/script/writing_system.dart";

extension type const _TeluFactory._(ScriptTelu _) implements ScriptTelu {
  const _TeluFactory() : this._(const ScriptTelu._());
}

/// A class that represents the Telugu script.
class ScriptTelu extends Script {
  /// {@template sealed_world.script_telu_constructor}
  /// Creates a instance of [ScriptTelu] (Telugu script).
  ///
  /// ISO 15924 Alpha-4 code: `Telu`, ISO 15924 Numeric code: `340`.
  /// {@endtemplate}
  const factory ScriptTelu() = _TeluFactory;

  const ScriptTelu._()
    : super(
        name: "Telugu",
        code: "Telu",
        codeNumeric: "340",
        date: "2004-05-01",
        pva: "Telugu",
      );
}
