part of "../../model/script/writing_system.dart";

extension type const _MteiFactory._(ScriptMtei _) implements ScriptMtei {
  const _MteiFactory() : this._(const ScriptMtei._());
}

/// A class that represents the Meitei Mayek (Meithei, Meetei) script.
class ScriptMtei extends Script {
  /// {@template sealed_world.script_mtei_constructor}
  /// Creates a instance of [ScriptMtei] (Meitei Mayek (Meithei, Meetei) script).
  ///
  /// ISO 15924 Alpha-4 code: `Mtei`, ISO 15924 Numeric code: `337`.
  /// {@endtemplate}
  const factory ScriptMtei() = _MteiFactory;

  const ScriptMtei._()
    : super(
        name: "Meitei Mayek (Meithei, Meetei)",
        code: "Mtei",
        codeNumeric: "337",
        date: "2009-06-01",
        pva: "Meetei_Mayek",
      );
}
