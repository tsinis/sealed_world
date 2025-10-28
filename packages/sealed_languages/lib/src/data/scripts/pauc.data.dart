part of "../../model/script/writing_system.dart";

extension type const _PaucFactory._(ScriptPauc _) implements ScriptPauc {
  const _PaucFactory() : this._(const ScriptPauc._());
}

/// A class that represents the Pau Cin Hau script.
class ScriptPauc extends Script {
  /// {@template sealed_world.script_pauc_constructor}
  /// Creates a instance of [ScriptPauc] (Pau Cin Hau script).
  ///
  /// ISO 15924 Alpha-4 code: `Pauc`, ISO 15924 Numeric code: `263`.
  /// {@endtemplate}
  const factory ScriptPauc() = _PaucFactory;

  const ScriptPauc._()
    : super(
        name: "Pau Cin Hau",
        code: "Pauc",
        codeNumeric: "263",
        date: "2014-11-15",
        pva: "Pau_Cin_Hau",
      );
}
