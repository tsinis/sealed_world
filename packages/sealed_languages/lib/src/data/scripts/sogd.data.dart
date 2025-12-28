part of "../../model/script/submodels/script.dart";

extension type const _SogdFactory._(ScriptSogd _) implements ScriptSogd {
  const _SogdFactory() : this._(const ScriptSogd._());
}

/// A class that represents the Sogdian script.
final class ScriptSogd extends Script {
  /// {@template sealed_world.script_sogd_constructor}
  /// Creates a instance of [ScriptSogd] (Sogdian script).
  ///
  /// ISO 15924 Alpha-4 code: `Sogd`, ISO 15924 Numeric code: `141`.
  /// {@endtemplate}
  const factory ScriptSogd() = _SogdFactory;

  const ScriptSogd._()
    : super._(
        name: "Sogdian",
        code: "Sogd",
        codeNumeric: "141",
        date: "2017-11-21",
        pva: "Sogdian",
      );
}
