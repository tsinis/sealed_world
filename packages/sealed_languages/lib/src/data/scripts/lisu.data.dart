part of "../../model/script/submodels/script.dart";

extension type const _LisuFactory._(ScriptLisu _) implements ScriptLisu {
  const _LisuFactory() : this._(const ScriptLisu._());
}

/// A class that represents the Lisu (Fraser) script.
final class ScriptLisu extends Script {
  /// {@template sealed_world.script_lisu_constructor}
  /// Creates a instance of [ScriptLisu] (Lisu (Fraser) script).
  ///
  /// ISO 15924 Alpha-4 code: `Lisu`, ISO 15924 Numeric code: `399`.
  /// {@endtemplate}
  const factory ScriptLisu() = _LisuFactory;

  const ScriptLisu._()
    : super._(
        name: "Lisu (Fraser)",
        code: "Lisu",
        codeNumeric: "399",
        date: "2009-06-01",
        pva: "Lisu",
      );
}
