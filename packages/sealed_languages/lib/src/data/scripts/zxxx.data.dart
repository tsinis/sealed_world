part of "../../model/script/writing_system.dart";

extension type const _ZxxxFactory._(ScriptZxxx _) implements ScriptZxxx {
  const _ZxxxFactory() : this._(const ScriptZxxx._());
}

/// A class that represents the Code for unwritten documents script.
class ScriptZxxx extends Script {
  /// {@template sealed_world.script_zxxx_constructor}
  /// Creates a instance of [ScriptZxxx] (Code for unwritten documents script).
  ///
  /// ISO 15924 Alpha-4 code: `Zxxx`, ISO 15924 Numeric code: `997`.
  /// {@endtemplate}
  const factory ScriptZxxx() = _ZxxxFactory;

  const ScriptZxxx._()
    : super(
        name: "Code for unwritten documents",
        code: "Zxxx",
        codeNumeric: "997",
        date: "2011-06-21",
      );
}
