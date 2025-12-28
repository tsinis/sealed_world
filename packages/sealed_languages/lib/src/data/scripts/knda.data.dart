part of "../../model/script/submodels/script.dart";

extension type const _KndaFactory._(ScriptKnda _) implements ScriptKnda {
  const _KndaFactory() : this._(const ScriptKnda._());
}

/// A class that represents the Kannada script.
final class ScriptKnda extends Script {
  /// {@template sealed_world.script_knda_constructor}
  /// Creates a instance of [ScriptKnda] (Kannada script).
  ///
  /// ISO 15924 Alpha-4 code: `Knda`, ISO 15924 Numeric code: `345`.
  /// {@endtemplate}
  const factory ScriptKnda() = _KndaFactory;

  const ScriptKnda._()
    : super._(
        name: "Kannada",
        code: "Knda",
        codeNumeric: "345",
        date: "2004-05-29",
        pva: "Kannada",
      );
}
