part of "../../model/script/submodels/script.dart";

extension type const _QabxFactory._(ScriptQabx _) implements ScriptQabx {
  const _QabxFactory() : this._(const ScriptQabx._());
}

/// A class that represents the Reserved for private use (end) script.
final class ScriptQabx extends Script {
  /// {@template sealed_world.script_qabx_constructor}
  /// Creates a instance of [ScriptQabx]
  /// (Reserved for private use (end) script).
  ///
  /// ISO 15924 Alpha-4 code: `Qabx`, ISO 15924 Numeric code: `949`.
  /// {@endtemplate}
  const factory ScriptQabx() = _QabxFactory;

  const ScriptQabx._()
    : super._(
        name: "Reserved for private use (end)",
        code: "Qabx",
        codeNumeric: "949",
        date: "2004-05-29",
      );
}
