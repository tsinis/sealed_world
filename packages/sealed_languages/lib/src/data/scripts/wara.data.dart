part of "../../model/script/submodels/script.dart";

extension type const _WaraFactory._(ScriptWara _) implements ScriptWara {
  const _WaraFactory() : this._(const ScriptWara._());
}

/// A class that represents the Warang Citi (Varang Kshiti) script.
final class ScriptWara extends Script {
  /// {@template sealed_world.script_wara_constructor}
  /// Creates a instance of [ScriptWara] (Warang Citi (Varang Kshiti) script).
  ///
  /// ISO 15924 Alpha-4 code: `Wara`, ISO 15924 Numeric code: `262`.
  /// {@endtemplate}
  const factory ScriptWara() = _WaraFactory;

  const ScriptWara._()
    : super._(
        name: "Warang Citi (Varang Kshiti)",
        code: "Wara",
        codeNumeric: "262",
        date: "2014-11-15",
        pva: "Warang_Citi",
      );
}
