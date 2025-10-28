part of "../../model/script/writing_system.dart";

extension type const _AghbFactory._(ScriptAghb _) implements ScriptAghb {
  const _AghbFactory() : this._(const ScriptAghb._());
}

/// A class that represents the Caucasian Albanian script.
class ScriptAghb extends Script {
  /// {@template sealed_world.script_aghb_constructor}
  /// Creates a instance of [ScriptAghb] (Caucasian Albanian script).
  ///
  /// ISO 15924 Alpha-4 code: `Aghb`, ISO 15924 Numeric code: `239`.
  /// {@endtemplate}
  const factory ScriptAghb() = _AghbFactory;

  const ScriptAghb._()
    : super(
        name: "Caucasian Albanian",
        code: "Aghb",
        codeNumeric: "239",
        date: "2014-11-15",
        pva: "Caucasian_Albanian",
      );
}
