part of "../../model/script/writing_system.dart";

extension type const _ZsyeFactory._(ScriptZsye _) implements ScriptZsye {
  const _ZsyeFactory() : this._(const ScriptZsye._());
}

/// A class that represents the Symbols (Emoji variant) script.
class ScriptZsye extends Script {
  /// {@template sealed_world.script_zsye_constructor}
  /// Creates a instance of [ScriptZsye] (Symbols (Emoji variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Zsye`, ISO 15924 Numeric code: `993`.
  /// {@endtemplate}
  const factory ScriptZsye() = _ZsyeFactory;

  const ScriptZsye._()
    : super(
        name: "Symbols (Emoji variant)",
        code: "Zsye",
        codeNumeric: "993",
        date: "2015-12-16",
      );
}
