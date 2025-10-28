part of "../../model/script/writing_system.dart";

extension type const _XpeoFactory._(ScriptXpeo _) implements ScriptXpeo {
  const _XpeoFactory() : this._(const ScriptXpeo._());
}

/// A class that represents the Old Persian script.
class ScriptXpeo extends Script {
  /// {@template sealed_world.script_xpeo_constructor}
  /// Creates a instance of [ScriptXpeo] (Old Persian script).
  ///
  /// ISO 15924 Alpha-4 code: `Xpeo`, ISO 15924 Numeric code: `030`.
  /// {@endtemplate}
  const factory ScriptXpeo() = _XpeoFactory;

  const ScriptXpeo._()
    : super(
        name: "Old Persian",
        code: "Xpeo",
        codeNumeric: "030",
        date: "2006-06-21",
        pva: "Old_Persian",
      );
}
