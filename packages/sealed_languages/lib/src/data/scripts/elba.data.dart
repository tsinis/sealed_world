part of "../../model/script/writing_system.dart";

extension type const _ElbaFactory._(ScriptElba _) implements ScriptElba {
  const _ElbaFactory() : this._(const ScriptElba._());
}

/// A class that represents the Elbasan script.
class ScriptElba extends Script {
  /// {@template sealed_world.script_elba_constructor}
  /// Creates a instance of [ScriptElba] (Elbasan script).
  ///
  /// ISO 15924 Alpha-4 code: `Elba`, ISO 15924 Numeric code: `226`.
  /// {@endtemplate}
  const factory ScriptElba() = _ElbaFactory;

  const ScriptElba._()
    : super(
        name: "Elbasan",
        code: "Elba",
        codeNumeric: "226",
        date: "2014-11-15",
        pva: "Elbasan",
      );
}
