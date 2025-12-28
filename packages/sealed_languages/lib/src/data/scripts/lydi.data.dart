part of "../../model/script/submodels/script.dart";

extension type const _LydiFactory._(ScriptLydi _) implements ScriptLydi {
  const _LydiFactory() : this._(const ScriptLydi._());
}

/// A class that represents the Lydian script.
final class ScriptLydi extends Script {
  /// {@template sealed_world.script_lydi_constructor}
  /// Creates a instance of [ScriptLydi] (Lydian script).
  ///
  /// ISO 15924 Alpha-4 code: `Lydi`, ISO 15924 Numeric code: `116`.
  /// {@endtemplate}
  const factory ScriptLydi() = _LydiFactory;

  const ScriptLydi._()
    : super._(
        name: "Lydian",
        code: "Lydi",
        codeNumeric: "116",
        date: "2007-07-02",
        pva: "Lydian",
      );
}
