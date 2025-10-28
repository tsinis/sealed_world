part of "../../model/script/writing_system.dart";

extension type const _OsmaFactory._(ScriptOsma _) implements ScriptOsma {
  const _OsmaFactory() : this._(const ScriptOsma._());
}

/// A class that represents the Osmanya script.
class ScriptOsma extends Script {
  /// {@template sealed_world.script_osma_constructor}
  /// Creates a instance of [ScriptOsma] (Osmanya script).
  ///
  /// ISO 15924 Alpha-4 code: `Osma`, ISO 15924 Numeric code: `260`.
  /// {@endtemplate}
  const factory ScriptOsma() = _OsmaFactory;

  const ScriptOsma._()
    : super(
        name: "Osmanya",
        code: "Osma",
        codeNumeric: "260",
        date: "2004-05-01",
        pva: "Osmanya",
      );
}
