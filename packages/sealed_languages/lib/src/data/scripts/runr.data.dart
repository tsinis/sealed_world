part of "../../model/script/submodels/script.dart";

extension type const _RunrFactory._(ScriptRunr _) implements ScriptRunr {
  const _RunrFactory() : this._(const ScriptRunr._());
}

/// A class that represents the Runic script.
final class ScriptRunr extends Script {
  /// {@template sealed_world.script_runr_constructor}
  /// Creates a instance of [ScriptRunr] (Runic script).
  ///
  /// ISO 15924 Alpha-4 code: `Runr`, ISO 15924 Numeric code: `211`.
  /// {@endtemplate}
  const factory ScriptRunr() = _RunrFactory;

  const ScriptRunr._()
    : super._(
        name: "Runic",
        code: "Runr",
        codeNumeric: "211",
        date: "2004-05-01",
        pva: "Runic",
      );
}
