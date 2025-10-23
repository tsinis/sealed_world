part of "../../model/script/writing_system.dart";

extension type const _HantFactory._(ScriptHant _) implements ScriptHant {
  const _HantFactory() : this._(const ScriptHant._());
}

/// A class that represents the Han (Traditional variant) script.
class ScriptHant extends Script {
  /// {@template sealed_world.script_hant_constructor}
  /// Creates a instance of [ScriptHant] (Han (Traditional variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hant`, ISO 15924 Numeric code: `502`.
  /// {@endtemplate}
  const factory ScriptHant() = _HantFactory;

  const ScriptHant._()
    : super(
        name: "Han (Traditional variant)",
        code: "Hant",
        codeNumeric: "502",
        date: "2004-05-29",
      );
}
