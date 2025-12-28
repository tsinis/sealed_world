part of "../../model/script/submodels/script.dart";

extension type const _LanaFactory._(ScriptLana _) implements ScriptLana {
  const _LanaFactory() : this._(const ScriptLana._());
}

/// A class that represents the Tai Tham (Lanna) script.
final class ScriptLana extends Script {
  /// {@template sealed_world.script_lana_constructor}
  /// Creates a instance of [ScriptLana] (Tai Tham (Lanna) script).
  ///
  /// ISO 15924 Alpha-4 code: `Lana`, ISO 15924 Numeric code: `351`.
  /// {@endtemplate}
  const factory ScriptLana() = _LanaFactory;

  const ScriptLana._()
    : super._(
        name: "Tai Tham (Lanna)",
        code: "Lana",
        codeNumeric: "351",
        date: "2009-06-01",
        pva: "Tai_Tham",
      );
}
