part of "../../model/script/submodels/script.dart";

extension type const _DuplFactory._(ScriptDupl _) implements ScriptDupl {
  const _DuplFactory() : this._(const ScriptDupl._());
}

/// A class that represents the Duployan shorthand, Duployan stenography script.
final class ScriptDupl extends Script {
  /// {@template sealed_world.script_dupl_constructor}
  /// Creates a instance of [ScriptDupl] (Duployan shorthand, Duployan stenography script).
  ///
  /// ISO 15924 Alpha-4 code: `Dupl`, ISO 15924 Numeric code: `755`.
  /// {@endtemplate}
  const factory ScriptDupl() = _DuplFactory;

  const ScriptDupl._()
    : super._(
        name: "Duployan shorthand, Duployan stenography",
        code: "Dupl",
        codeNumeric: "755",
        date: "2014-11-15",
        pva: "Duployan",
      );
}
