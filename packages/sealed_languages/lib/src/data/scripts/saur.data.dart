part of "../../model/script/writing_system.dart";

extension type const _SaurFactory._(ScriptSaur _) implements ScriptSaur {
  const _SaurFactory() : this._(const ScriptSaur._());
}

/// A class that represents the Saurashtra script.
class ScriptSaur extends Script {
  /// {@template sealed_world.script_saur_constructor}
  /// Creates a instance of [ScriptSaur] (Saurashtra script).
  ///
  /// ISO 15924 Alpha-4 code: `Saur`, ISO 15924 Numeric code: `344`.
  /// {@endtemplate}
  const factory ScriptSaur() = _SaurFactory;

  const ScriptSaur._()
    : super(
        name: "Saurashtra",
        code: "Saur",
        codeNumeric: "344",
        date: "2007-07-02",
        pva: "Saurashtra",
      );
}
