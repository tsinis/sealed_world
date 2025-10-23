part of "../../model/script/writing_system.dart";

extension type const _HansFactory._(ScriptHans _) implements ScriptHans {
  const _HansFactory() : this._(const ScriptHans._());
}

/// A class that represents the Han (Simplified variant) script.
class ScriptHans extends Script {
  /// {@template sealed_world.script_hans_constructor}
  /// Creates a instance of [ScriptHans] (Han (Simplified variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hans`, ISO 15924 Numeric code: `501`.
  /// {@endtemplate}
  const factory ScriptHans() = _HansFactory;

  const ScriptHans._()
    : super(
        name: "Han (Simplified variant)",
        code: "Hans",
        codeNumeric: "501",
        date: "2004-05-29",
      );
}
