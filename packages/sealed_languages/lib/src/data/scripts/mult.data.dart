part of "../../model/script/writing_system.dart";

extension type const _MultFactory._(ScriptMult _) implements ScriptMult {
  const _MultFactory() : this._(const ScriptMult._());
}

/// A class that represents the Multani script.
class ScriptMult extends Script {
  /// {@template sealed_world.script_mult_constructor}
  /// Creates a instance of [ScriptMult] (Multani script).
  ///
  /// ISO 15924 Alpha-4 code: `Mult`, ISO 15924 Numeric code: `323`.
  /// {@endtemplate}
  const factory ScriptMult() = _MultFactory;

  const ScriptMult._()
    : super(
        name: "Multani",
        code: "Mult",
        codeNumeric: "323",
        date: "2015-07-07",
        pva: "Multani",
      );
}
