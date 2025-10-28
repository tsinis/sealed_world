part of "../../model/script/writing_system.dart";

extension type const _UgarFactory._(ScriptUgar _) implements ScriptUgar {
  const _UgarFactory() : this._(const ScriptUgar._());
}

/// A class that represents the Ugaritic script.
class ScriptUgar extends Script {
  /// {@template sealed_world.script_ugar_constructor}
  /// Creates a instance of [ScriptUgar] (Ugaritic script).
  ///
  /// ISO 15924 Alpha-4 code: `Ugar`, ISO 15924 Numeric code: `040`.
  /// {@endtemplate}
  const factory ScriptUgar() = _UgarFactory;

  const ScriptUgar._()
    : super(
        name: "Ugaritic",
        code: "Ugar",
        codeNumeric: "040",
        date: "2004-05-01",
        pva: "Ugaritic",
      );
}
