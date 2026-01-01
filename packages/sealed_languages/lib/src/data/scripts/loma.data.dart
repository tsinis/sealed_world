part of "../../model/script/submodels/script.dart";

extension type const _LomaFactory._(ScriptLoma _) implements ScriptLoma {
  const _LomaFactory() : this._(const ScriptLoma._());
}

/// A class that represents the Loma script.
final class ScriptLoma extends Script {
  /// {@template sealed_world.script_loma_constructor}
  /// Creates a instance of [ScriptLoma] (Loma script).
  ///
  /// ISO 15924 Alpha-4 code: `Loma`, ISO 15924 Numeric code: `437`.
  /// {@endtemplate}
  const factory ScriptLoma() = _LomaFactory;

  const ScriptLoma._()
    : super._(
        name: "Loma",
        code: "Loma",
        codeNumeric: "437",
        date: "2010-03-26",
      );
}
