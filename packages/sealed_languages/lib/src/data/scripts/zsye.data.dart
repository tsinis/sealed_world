part of "../../model/script/submodels/script.dart";

extension type const _ZsyeFactory._(ScriptZsye _) implements ScriptZsye {
  const new() : this._(const ScriptZsye._());
}

/// A class that represents the Symbols (Emoji variant) script.
final class ScriptZsye extends Script {
  /// {@template sealed_world.script_zsye_constructor}
  /// Creates a instance of [ScriptZsye] (Symbols (Emoji variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Zsye`, ISO 15924 Numeric code: `993`.
  /// {@endtemplate}
  const factory() = _ZsyeFactory;

  const new _()
    : super._(
        name: "Symbols (Emoji variant)",
        code: "Zsye",
        codeNumeric: "993",
        date: "2015-12-16",
      );
}
