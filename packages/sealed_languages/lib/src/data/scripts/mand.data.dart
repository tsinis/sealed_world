part of "../../model/script/writing_system.dart";

extension type const _MandFactory._(ScriptMand _) implements ScriptMand {
  const _MandFactory() : this._(const ScriptMand._());
}

/// A class that represents the Mandaic, Mandaean script.
class ScriptMand extends Script {
  /// {@template sealed_world.script_mand_constructor}
  /// Creates a instance of [ScriptMand] (Mandaic, Mandaean script).
  ///
  /// ISO 15924 Alpha-4 code: `Mand`, ISO 15924 Numeric code: `140`.
  /// {@endtemplate}
  const factory ScriptMand() = _MandFactory;

  const ScriptMand._()
    : super(
        name: "Mandaic, Mandaean",
        code: "Mand",
        codeNumeric: "140",
        date: "2010-07-23",
        pva: "Mandaic",
      );
}
