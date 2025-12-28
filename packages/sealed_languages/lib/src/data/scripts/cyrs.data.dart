part of "../../model/script/submodels/script.dart";

extension type const _CyrsFactory._(ScriptCyrs _) implements ScriptCyrs {
  const _CyrsFactory() : this._(const ScriptCyrs._());
}

/// A class that represents the Cyrillic (Old Church Slavonic variant) script.
final class ScriptCyrs extends Script {
  /// {@template sealed_world.script_cyrs_constructor}
  /// Creates a instance of [ScriptCyrs] (Cyrillic (Old Church Slavonic variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Cyrs`, ISO 15924 Numeric code: `221`.
  /// {@endtemplate}
  const factory ScriptCyrs() = _CyrsFactory;

  const ScriptCyrs._()
    : super._(
        name: "Cyrillic (Old Church Slavonic variant)",
        code: "Cyrs",
        codeNumeric: "221",
        date: "2004-05-01",
      );
}
