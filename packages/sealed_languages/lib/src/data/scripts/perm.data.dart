part of "../../model/script/submodels/script.dart";

extension type const _PermFactory._(ScriptPerm _) implements ScriptPerm {
  const _PermFactory() : this._(const ScriptPerm._());
}

/// A class that represents the Old Permic script.
final class ScriptPerm extends Script {
  /// {@template sealed_world.script_perm_constructor}
  /// Creates a instance of [ScriptPerm] (Old Permic script).
  ///
  /// ISO 15924 Alpha-4 code: `Perm`, ISO 15924 Numeric code: `227`.
  /// {@endtemplate}
  const factory ScriptPerm() = _PermFactory;

  const ScriptPerm._()
    : super._(
        name: "Old Permic",
        code: "Perm",
        codeNumeric: "227",
        date: "2014-11-15",
        pva: "Old_Permic",
      );
}
