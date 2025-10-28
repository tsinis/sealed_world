part of "../../model/script/writing_system.dart";

extension type const _CoptFactory._(ScriptCopt _) implements ScriptCopt {
  const _CoptFactory() : this._(const ScriptCopt._());
}

/// A class that represents the Coptic script.
class ScriptCopt extends Script {
  /// {@template sealed_world.script_copt_constructor}
  /// Creates a instance of [ScriptCopt] (Coptic script).
  ///
  /// ISO 15924 Alpha-4 code: `Copt`, ISO 15924 Numeric code: `204`.
  /// {@endtemplate}
  const factory ScriptCopt() = _CoptFactory;

  const ScriptCopt._()
    : super(
        name: "Coptic",
        code: "Copt",
        codeNumeric: "204",
        date: "2006-06-21",
        pva: "Coptic",
      );
}
