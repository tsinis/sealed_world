part of "../../model/script/submodels/script.dart";

extension type const _ArabFactory._(ScriptArab _) implements ScriptArab {
  const _ArabFactory() : this._(const ScriptArab._());
}

/// A class that represents the Arabic script.
final class ScriptArab extends Script {
  /// {@template sealed_world.script_arab_constructor}
  /// Creates a instance of [ScriptArab] (Arabic script).
  ///
  /// ISO 15924 Alpha-4 code: `Arab`, ISO 15924 Numeric code: `160`.
  /// {@endtemplate}
  const factory ScriptArab() = _ArabFactory;

  const ScriptArab._()
    : super._(
        name: "Arabic",
        code: "Arab",
        codeNumeric: "160",
        date: "2004-05-01",
        pva: "Arabic",
      );
}
