part of "../../model/script/submodels/script.dart";

extension type const _CansFactory._(ScriptCans _) implements ScriptCans {
  const _CansFactory() : this._(const ScriptCans._());
}

/// A class that represents the Unified Canadian Aboriginal Syllabics script.
final class ScriptCans extends Script {
  /// {@template sealed_world.script_cans_constructor}
  /// Creates a instance of [ScriptCans] (Unified Canadian Aboriginal Syllabics script).
  ///
  /// ISO 15924 Alpha-4 code: `Cans`, ISO 15924 Numeric code: `440`.
  /// {@endtemplate}
  const factory ScriptCans() = _CansFactory;

  const ScriptCans._()
    : super._(
        name: "Unified Canadian Aboriginal Syllabics",
        code: "Cans",
        codeNumeric: "440",
        date: "2004-05-29",
        pva: "Canadian_Aboriginal",
      );
}
