part of "../../model/script/writing_system.dart";

extension type const _SyrcFactory._(ScriptSyrc _) implements ScriptSyrc {
  const _SyrcFactory() : this._(const ScriptSyrc._());
}

/// A class that represents the Syriac script.
class ScriptSyrc extends Script {
  /// {@template sealed_world.script_syrc_constructor}
  /// Creates a instance of [ScriptSyrc] (Syriac script).
  ///
  /// ISO 15924 Alpha-4 code: `Syrc`, ISO 15924 Numeric code: `135`.
  /// {@endtemplate}
  const factory ScriptSyrc() = _SyrcFactory;

  const ScriptSyrc._()
    : super(
        name: "Syriac",
        code: "Syrc",
        codeNumeric: "135",
        date: "2004-05-01",
        pva: "Syriac",
      );
}
