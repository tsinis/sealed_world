part of "../../model/script/writing_system.dart";

extension type const _LatnFactory._(ScriptLatn _) implements ScriptLatn {
  const _LatnFactory() : this._(const ScriptLatn._());
}

/// A class that represents the Latin script.
class ScriptLatn extends Script {
  /// {@template sealed_world.script_latn_constructor}
  /// Creates a instance of [ScriptLatn] (Latin script).
  ///
  /// ISO 15924 Alpha-4 code: `Latn`, ISO 15924 Numeric code: `215`.
  /// {@endtemplate}
  const factory ScriptLatn() = _LatnFactory;

  const ScriptLatn._()
    : super(
        name: "Latin",
        code: "Latn",
        codeNumeric: "215",
        date: "2004-05-01",
        pva: "Latin",
      );
}
