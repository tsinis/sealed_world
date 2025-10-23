part of "../../model/script/writing_system.dart";

extension type const _TnsaFactory._(ScriptTnsa _) implements ScriptTnsa {
  const _TnsaFactory() : this._(const ScriptTnsa._());
}

/// A class that represents the Tangsa script.
class ScriptTnsa extends Script {
  /// {@template sealed_world.script_tnsa_constructor}
  /// Creates a instance of [ScriptTnsa] (Tangsa script).
  ///
  /// ISO 15924 Alpha-4 code: `Tnsa`, ISO 15924 Numeric code: `275`.
  /// {@endtemplate}
  const factory ScriptTnsa() = _TnsaFactory;

  const ScriptTnsa._()
    : super(
        name: "Tangsa",
        code: "Tnsa",
        codeNumeric: "275",
        date: "2021-02-17",
        pva: "Tangsa",
      );
}
