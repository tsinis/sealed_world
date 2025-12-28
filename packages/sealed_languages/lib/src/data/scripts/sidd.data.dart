part of "../../model/script/submodels/script.dart";

extension type const _SiddFactory._(ScriptSidd _) implements ScriptSidd {
  const _SiddFactory() : this._(const ScriptSidd._());
}

/// A class that represents the Siddham, Siddhaṃ, Siddhamātṛkā script.
final class ScriptSidd extends Script {
  /// {@template sealed_world.script_sidd_constructor}
  /// Creates a instance of [ScriptSidd] (Siddham, Siddhaṃ, Siddhamātṛkā script).
  ///
  /// ISO 15924 Alpha-4 code: `Sidd`, ISO 15924 Numeric code: `302`.
  /// {@endtemplate}
  const factory ScriptSidd() = _SiddFactory;

  const ScriptSidd._()
    : super._(
        name: "Siddham, Siddhaṃ, Siddhamātṛkā",
        code: "Sidd",
        codeNumeric: "302",
        date: "2014-11-15",
        pva: "Siddham",
      );
}
