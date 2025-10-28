part of "../../model/script/writing_system.dart";

extension type const _LinaFactory._(ScriptLina _) implements ScriptLina {
  const _LinaFactory() : this._(const ScriptLina._());
}

/// A class that represents the Linear A script.
class ScriptLina extends Script {
  /// {@template sealed_world.script_lina_constructor}
  /// Creates a instance of [ScriptLina] (Linear A script).
  ///
  /// ISO 15924 Alpha-4 code: `Lina`, ISO 15924 Numeric code: `400`.
  /// {@endtemplate}
  const factory ScriptLina() = _LinaFactory;

  const ScriptLina._()
    : super(
        name: "Linear A",
        code: "Lina",
        codeNumeric: "400",
        date: "2014-11-15",
        pva: "Linear_A",
      );
}
