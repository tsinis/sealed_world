part of "../../model/script/writing_system.dart";

extension type const _PlrdFactory._(ScriptPlrd _) implements ScriptPlrd {
  const _PlrdFactory() : this._(const ScriptPlrd._());
}

/// A class that represents the Miao (Pollard) script.
class ScriptPlrd extends Script {
  /// {@template sealed_world.script_plrd_constructor}
  /// Creates a instance of [ScriptPlrd] (Miao (Pollard) script).
  ///
  /// ISO 15924 Alpha-4 code: `Plrd`, ISO 15924 Numeric code: `282`.
  /// {@endtemplate}
  const factory ScriptPlrd() = _PlrdFactory;

  const ScriptPlrd._()
    : super(
        name: "Miao (Pollard)",
        code: "Plrd",
        codeNumeric: "282",
        date: "2012-02-06",
        pva: "Miao",
      );
}
