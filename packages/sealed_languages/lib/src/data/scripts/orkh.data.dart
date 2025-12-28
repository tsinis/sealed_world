part of "../../model/script/submodels/script.dart";

extension type const _OrkhFactory._(ScriptOrkh _) implements ScriptOrkh {
  const _OrkhFactory() : this._(const ScriptOrkh._());
}

/// A class that represents the Old Turkic, Orkhon Runic script.
final class ScriptOrkh extends Script {
  /// {@template sealed_world.script_orkh_constructor}
  /// Creates a instance of [ScriptOrkh] (Old Turkic, Orkhon Runic script).
  ///
  /// ISO 15924 Alpha-4 code: `Orkh`, ISO 15924 Numeric code: `175`.
  /// {@endtemplate}
  const factory ScriptOrkh() = _OrkhFactory;

  const ScriptOrkh._()
    : super._(
        name: "Old Turkic, Orkhon Runic",
        code: "Orkh",
        codeNumeric: "175",
        date: "2009-06-01",
        pva: "Old_Turkic",
      );
}
