part of "../../model/script/writing_system.dart";

extension type const _ArmiFactory._(ScriptArmi _) implements ScriptArmi {
  const _ArmiFactory() : this._(const ScriptArmi._());
}

/// A class that represents the Imperial Aramaic script.
class ScriptArmi extends Script {
  /// {@template sealed_world.script_armi_constructor}
  /// Creates a instance of [ScriptArmi] (Imperial Aramaic script).
  ///
  /// ISO 15924 Alpha-4 code: `Armi`, ISO 15924 Numeric code: `124`.
  /// {@endtemplate}
  const factory ScriptArmi() = _ArmiFactory;

  const ScriptArmi._()
    : super(
        name: "Imperial Aramaic",
        code: "Armi",
        codeNumeric: "124",
        date: "2009-06-01",
        pva: "Imperial_Aramaic",
      );
}
