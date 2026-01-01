part of "../../model/script/submodels/script.dart";

extension type const _AhomFactory._(ScriptAhom _) implements ScriptAhom {
  const _AhomFactory() : this._(const ScriptAhom._());
}

/// A class that represents the Ahom, Tai Ahom script.
final class ScriptAhom extends Script {
  /// {@template sealed_world.script_ahom_constructor}
  /// Creates a instance of [ScriptAhom] (Ahom, Tai Ahom script).
  ///
  /// ISO 15924 Alpha-4 code: `Ahom`, ISO 15924 Numeric code: `338`.
  /// {@endtemplate}
  const factory ScriptAhom() = _AhomFactory;

  const ScriptAhom._()
    : super._(
        name: "Ahom, Tai Ahom",
        code: "Ahom",
        codeNumeric: "338",
        date: "2015-07-07",
        pva: "Ahom",
      );
}
