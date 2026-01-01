part of "../../model/script/submodels/script.dart";

extension type const _LinbFactory._(ScriptLinb _) implements ScriptLinb {
  const _LinbFactory() : this._(const ScriptLinb._());
}

/// A class that represents the Linear B script.
final class ScriptLinb extends Script {
  /// {@template sealed_world.script_linb_constructor}
  /// Creates a instance of [ScriptLinb] (Linear B script).
  ///
  /// ISO 15924 Alpha-4 code: `Linb`, ISO 15924 Numeric code: `401`.
  /// {@endtemplate}
  const factory ScriptLinb() = _LinbFactory;

  const ScriptLinb._()
    : super._(
        name: "Linear B",
        code: "Linb",
        codeNumeric: "401",
        date: "2004-05-29",
        pva: "Linear_B",
      );
}
