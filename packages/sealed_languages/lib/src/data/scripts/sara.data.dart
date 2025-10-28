part of "../../model/script/writing_system.dart";

extension type const _SaraFactory._(ScriptSara _) implements ScriptSara {
  const _SaraFactory() : this._(const ScriptSara._());
}

/// A class that represents the Sarati script.
class ScriptSara extends Script {
  /// {@template sealed_world.script_sara_constructor}
  /// Creates a instance of [ScriptSara] (Sarati script).
  ///
  /// ISO 15924 Alpha-4 code: `Sara`, ISO 15924 Numeric code: `292`.
  /// {@endtemplate}
  const factory ScriptSara() = _SaraFactory;

  const ScriptSara._()
    : super(
        name: "Sarati",
        code: "Sara",
        codeNumeric: "292",
        date: "2004-05-29",
      );
}
