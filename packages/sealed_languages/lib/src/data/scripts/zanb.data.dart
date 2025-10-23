part of "../../model/script/writing_system.dart";

extension type const _ZanbFactory._(ScriptZanb _) implements ScriptZanb {
  const _ZanbFactory() : this._(const ScriptZanb._());
}

/// A class that represents the Zanabazar Square (Zanabazarin Dörböljin Useg, Xewtee Dörböljin Bicig, Horizontal Square Script) script.
class ScriptZanb extends Script {
  /// {@template sealed_world.script_zanb_constructor}
  /// Creates a instance of [ScriptZanb] (Zanabazar Square (Zanabazarin Dörböljin Useg, Xewtee Dörböljin Bicig, Horizontal Square Script) script).
  ///
  /// ISO 15924 Alpha-4 code: `Zanb`, ISO 15924 Numeric code: `339`.
  /// {@endtemplate}
  const factory ScriptZanb() = _ZanbFactory;

  const ScriptZanb._()
    : super(
        name:
            "Zanabazar Square (Zanabazarin Dörböljin Useg, Xewtee Dörböljin Bicig, Horizontal Square Script)",
        code: "Zanb",
        codeNumeric: "339",
        date: "2017-07-26",
        pva: "Zanabazar_Square",
      );
}
