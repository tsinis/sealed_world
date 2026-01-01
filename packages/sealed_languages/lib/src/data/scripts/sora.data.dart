part of "../../model/script/submodels/script.dart";

extension type const _SoraFactory._(ScriptSora _) implements ScriptSora {
  const _SoraFactory() : this._(const ScriptSora._());
}

/// A class that represents the Sora Sompeng script.
final class ScriptSora extends Script {
  /// {@template sealed_world.script_sora_constructor}
  /// Creates a instance of [ScriptSora] (Sora Sompeng script).
  ///
  /// ISO 15924 Alpha-4 code: `Sora`, ISO 15924 Numeric code: `398`.
  /// {@endtemplate}
  const factory ScriptSora() = _SoraFactory;

  const ScriptSora._()
    : super._(
        name: "Sora Sompeng",
        code: "Sora",
        codeNumeric: "398",
        date: "2012-02-06",
        pva: "Sora_Sompeng",
      );
}
