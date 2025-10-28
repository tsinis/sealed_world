part of "../../model/script/writing_system.dart";

extension type const _JamoFactory._(ScriptJamo _) implements ScriptJamo {
  const _JamoFactory() : this._(const ScriptJamo._());
}

/// A class that represents the Jamo (alias for Jamo subset of Hangul) script.
class ScriptJamo extends Script {
  /// {@template sealed_world.script_jamo_constructor}
  /// Creates a instance of [ScriptJamo] (Jamo (alias for Jamo subset of Hangul) script).
  ///
  /// ISO 15924 Alpha-4 code: `Jamo`, ISO 15924 Numeric code: `284`.
  /// {@endtemplate}
  const factory ScriptJamo() = _JamoFactory;

  const ScriptJamo._()
    : super(
        name: "Jamo (alias for Jamo subset of Hangul)",
        code: "Jamo",
        codeNumeric: "284",
        date: "2016-01-19",
      );
}
