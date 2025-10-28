part of "../../model/script/writing_system.dart";

extension type const _ModiFactory._(ScriptModi _) implements ScriptModi {
  const _ModiFactory() : this._(const ScriptModi._());
}

/// A class that represents the Modi, Moḍī script.
class ScriptModi extends Script {
  /// {@template sealed_world.script_modi_constructor}
  /// Creates a instance of [ScriptModi] (Modi, Moḍī script).
  ///
  /// ISO 15924 Alpha-4 code: `Modi`, ISO 15924 Numeric code: `324`.
  /// {@endtemplate}
  const factory ScriptModi() = _ModiFactory;

  const ScriptModi._()
    : super(
        name: "Modi, Moḍī",
        code: "Modi",
        codeNumeric: "324",
        date: "2014-11-15",
        pva: "Modi",
      );
}
