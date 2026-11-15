part of "../../model/script/submodels/script.dart";

extension type const _MultFactory._(ScriptMult _) implements ScriptMult {
  const new() : this._(const ScriptMult._());
}

/// A class that represents the Multani script.
final class ScriptMult extends Script {
  /// {@template sealed_world.script_mult_constructor}
  /// Creates a instance of [ScriptMult] (Multani script).
  ///
  /// ISO 15924 Alpha-4 code: `Mult`, ISO 15924 Numeric code: `323`.
  /// {@endtemplate}
  const factory() = _MultFactory;

  const new _()
    : super._(
        name: "Multani",
        code: "Mult",
        codeNumeric: "323",
        date: "2015-07-07",
        pva: "Multani",
      );
}
