part of "../../model/script/writing_system.dart";

extension type const _ThaaFactory._(ScriptThaa _) implements ScriptThaa {
  const _ThaaFactory() : this._(const ScriptThaa._());
}

/// A class that represents the Thaana script.
class ScriptThaa extends Script {
  /// {@template sealed_world.script_thaa_constructor}
  /// Creates a instance of [ScriptThaa] (Thaana script).
  ///
  /// ISO 15924 Alpha-4 code: `Thaa`, ISO 15924 Numeric code: `170`.
  /// {@endtemplate}
  const factory ScriptThaa() = _ThaaFactory;

  const ScriptThaa._()
    : super(
        name: "Thaana",
        code: "Thaa",
        codeNumeric: "170",
        date: "2004-05-01",
        pva: "Thaana",
      );
}
