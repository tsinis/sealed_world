part of "../../model/script/submodels/script.dart";

extension type const _DevaFactory._(ScriptDeva _) implements ScriptDeva {
  const _DevaFactory() : this._(const ScriptDeva._());
}

/// A class that represents the Devanagari (Nagari) script.
final class ScriptDeva extends Script {
  /// {@template sealed_world.script_deva_constructor}
  /// Creates a instance of [ScriptDeva] (Devanagari (Nagari) script).
  ///
  /// ISO 15924 Alpha-4 code: `Deva`, ISO 15924 Numeric code: `315`.
  /// {@endtemplate}
  const factory ScriptDeva() = _DevaFactory;

  const ScriptDeva._()
    : super._(
        name: "Devanagari (Nagari)",
        code: "Deva",
        codeNumeric: "315",
        date: "2004-05-01",
        pva: "Devanagari",
      );
}
