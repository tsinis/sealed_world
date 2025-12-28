part of "../../model/script/submodels/script.dart";

extension type const _GeorFactory._(ScriptGeor _) implements ScriptGeor {
  const _GeorFactory() : this._(const ScriptGeor._());
}

/// A class that represents the Georgian (Mkhedruli and Mtavruli) script.
final class ScriptGeor extends Script {
  /// {@template sealed_world.script_geor_constructor}
  /// Creates a instance of [ScriptGeor] (Georgian (Mkhedruli and Mtavruli) script).
  ///
  /// ISO 15924 Alpha-4 code: `Geor`, ISO 15924 Numeric code: `240`.
  /// {@endtemplate}
  const factory ScriptGeor() = _GeorFactory;

  const ScriptGeor._()
    : super._(
        name: "Georgian (Mkhedruli and Mtavruli)",
        code: "Geor",
        codeNumeric: "240",
        date: "2016-12-05",
        pva: "Georgian",
      );
}
