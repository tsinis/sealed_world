part of "../../model/script/writing_system.dart";

extension type const _AdlmFactory._(ScriptAdlm _) implements ScriptAdlm {
  const _AdlmFactory() : this._(const ScriptAdlm._());
}

/// A class that represents the Adlam script.
class ScriptAdlm extends Script {
  /// {@template sealed_world.script_adlm_constructor}
  /// Creates a instance of [ScriptAdlm] (Adlam script).
  ///
  /// ISO 15924 Alpha-4 code: `Adlm`, ISO 15924 Numeric code: `166`.
  /// {@endtemplate}
  const factory ScriptAdlm() = _AdlmFactory;

  const ScriptAdlm._()
    : super(
        name: "Adlam",
        code: "Adlm",
        codeNumeric: "166",
        date: "2016-12-05",
        pva: "Adlam",
      );
}
