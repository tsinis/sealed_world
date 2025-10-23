part of "../../model/script/writing_system.dart";

extension type const _SyrnFactory._(ScriptSyrn _) implements ScriptSyrn {
  const _SyrnFactory() : this._(const ScriptSyrn._());
}

/// A class that represents the Syriac (Eastern variant) script.
class ScriptSyrn extends Script {
  /// {@template sealed_world.script_syrn_constructor}
  /// Creates a instance of [ScriptSyrn] (Syriac (Eastern variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Syrn`, ISO 15924 Numeric code: `136`.
  /// {@endtemplate}
  const factory ScriptSyrn() = _SyrnFactory;

  const ScriptSyrn._()
    : super(
        name: "Syriac (Eastern variant)",
        code: "Syrn",
        codeNumeric: "136",
        date: "2004-05-01",
      );
}
