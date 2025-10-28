part of "../../model/script/writing_system.dart";

extension type const _KaliFactory._(ScriptKali _) implements ScriptKali {
  const _KaliFactory() : this._(const ScriptKali._());
}

/// A class that represents the Kayah Li script.
class ScriptKali extends Script {
  /// {@template sealed_world.script_kali_constructor}
  /// Creates a instance of [ScriptKali] (Kayah Li script).
  ///
  /// ISO 15924 Alpha-4 code: `Kali`, ISO 15924 Numeric code: `357`.
  /// {@endtemplate}
  const factory ScriptKali() = _KaliFactory;

  const ScriptKali._()
    : super(
        name: "Kayah Li",
        code: "Kali",
        codeNumeric: "357",
        date: "2007-07-02",
        pva: "Kayah_Li",
      );
}
