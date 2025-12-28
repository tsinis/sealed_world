part of "../../model/script/submodels/script.dart";

extension type const _SundFactory._(ScriptSund _) implements ScriptSund {
  const _SundFactory() : this._(const ScriptSund._());
}

/// A class that represents the Sundanese script.
final class ScriptSund extends Script {
  /// {@template sealed_world.script_sund_constructor}
  /// Creates a instance of [ScriptSund] (Sundanese script).
  ///
  /// ISO 15924 Alpha-4 code: `Sund`, ISO 15924 Numeric code: `362`.
  /// {@endtemplate}
  const factory ScriptSund() = _SundFactory;

  const ScriptSund._()
    : super._(
        name: "Sundanese",
        code: "Sund",
        codeNumeric: "362",
        date: "2007-07-02",
        pva: "Sundanese",
      );
}
