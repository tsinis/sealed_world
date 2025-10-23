part of "../../model/script/writing_system.dart";

extension type const _PalmFactory._(ScriptPalm _) implements ScriptPalm {
  const _PalmFactory() : this._(const ScriptPalm._());
}

/// A class that represents the Palmyrene script.
class ScriptPalm extends Script {
  /// {@template sealed_world.script_palm_constructor}
  /// Creates a instance of [ScriptPalm] (Palmyrene script).
  ///
  /// ISO 15924 Alpha-4 code: `Palm`, ISO 15924 Numeric code: `126`.
  /// {@endtemplate}
  const factory ScriptPalm() = _PalmFactory;

  const ScriptPalm._()
    : super(
        name: "Palmyrene",
        code: "Palm",
        codeNumeric: "126",
        date: "2014-11-15",
        pva: "Palmyrene",
      );
}
