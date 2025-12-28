part of "../../model/script/submodels/script.dart";

extension type const _OugrFactory._(ScriptOugr _) implements ScriptOugr {
  const _OugrFactory() : this._(const ScriptOugr._());
}

/// A class that represents the Old Uyghur script.
final class ScriptOugr extends Script {
  /// {@template sealed_world.script_ougr_constructor}
  /// Creates a instance of [ScriptOugr] (Old Uyghur script).
  ///
  /// ISO 15924 Alpha-4 code: `Ougr`, ISO 15924 Numeric code: `143`.
  /// {@endtemplate}
  const factory ScriptOugr() = _OugrFactory;

  const ScriptOugr._()
    : super._(
        name: "Old Uyghur",
        code: "Ougr",
        codeNumeric: "143",
        date: "2021-01-25",
        pva: "Old_Uyghur",
      );
}
