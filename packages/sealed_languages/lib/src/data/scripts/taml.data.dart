part of "../../model/script/writing_system.dart";

extension type const _TamlFactory._(ScriptTaml _) implements ScriptTaml {
  const _TamlFactory() : this._(const ScriptTaml._());
}

/// A class that represents the Tamil script.
class ScriptTaml extends Script {
  /// {@template sealed_world.script_taml_constructor}
  /// Creates a instance of [ScriptTaml] (Tamil script).
  ///
  /// ISO 15924 Alpha-4 code: `Taml`, ISO 15924 Numeric code: `346`.
  /// {@endtemplate}
  const factory ScriptTaml() = _TamlFactory;

  const ScriptTaml._()
    : super(
        name: "Tamil",
        code: "Taml",
        codeNumeric: "346",
        date: "2004-05-01",
        pva: "Tamil",
      );
}
