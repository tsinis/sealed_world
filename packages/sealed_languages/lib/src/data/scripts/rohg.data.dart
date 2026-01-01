part of "../../model/script/submodels/script.dart";

extension type const _RohgFactory._(ScriptRohg _) implements ScriptRohg {
  const _RohgFactory() : this._(const ScriptRohg._());
}

/// A class that represents the Hanifi Rohingya script.
final class ScriptRohg extends Script {
  /// {@template sealed_world.script_rohg_constructor}
  /// Creates a instance of [ScriptRohg] (Hanifi Rohingya script).
  ///
  /// ISO 15924 Alpha-4 code: `Rohg`, ISO 15924 Numeric code: `167`.
  /// {@endtemplate}
  const factory ScriptRohg() = _RohgFactory;

  const ScriptRohg._()
    : super._(
        name: "Hanifi Rohingya",
        code: "Rohg",
        codeNumeric: "167",
        date: "2017-11-21",
        pva: "Hanifi_Rohingya",
      );
}
