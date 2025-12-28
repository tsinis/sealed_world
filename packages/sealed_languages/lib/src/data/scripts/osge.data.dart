part of "../../model/script/submodels/script.dart";

extension type const _OsgeFactory._(ScriptOsge _) implements ScriptOsge {
  const _OsgeFactory() : this._(const ScriptOsge._());
}

/// A class that represents the Osage script.
final class ScriptOsge extends Script {
  /// {@template sealed_world.script_osge_constructor}
  /// Creates a instance of [ScriptOsge] (Osage script).
  ///
  /// ISO 15924 Alpha-4 code: `Osge`, ISO 15924 Numeric code: `219`.
  /// {@endtemplate}
  const factory ScriptOsge() = _OsgeFactory;

  const ScriptOsge._()
    : super._(
        name: "Osage",
        code: "Osge",
        codeNumeric: "219",
        date: "2016-12-05",
        pva: "Osage",
      );
}
