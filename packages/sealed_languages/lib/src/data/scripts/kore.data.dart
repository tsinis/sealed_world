part of "../../model/script/submodels/script.dart";

extension type const _KoreFactory._(ScriptKore _) implements ScriptKore {
  const new() : this._(const ScriptKore._());
}

/// A class that represents the Korean (alias for Hangul + Han) script.
final class ScriptKore extends Script {
  /// {@template sealed_world.script_kore_constructor}
  /// Creates a instance of [ScriptKore] (Korean (alias for Hangul + Han)
  /// script).
  ///
  /// ISO 15924 Alpha-4 code: `Kore`, ISO 15924 Numeric code: `287`.
  /// {@endtemplate}
  const factory() = _KoreFactory;

  const new _()
    : super._(
        name: "Korean (alias for Hangul + Han)",
        code: "Kore",
        codeNumeric: "287",
        date: "2007-06-13",
      );
}
