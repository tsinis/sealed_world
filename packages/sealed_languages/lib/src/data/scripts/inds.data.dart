part of "../../model/script/writing_system.dart";

extension type const _IndsFactory._(ScriptInds _) implements ScriptInds {
  const _IndsFactory() : this._(const ScriptInds._());
}

/// A class that represents the Indus (Harappan) script.
class ScriptInds extends Script {
  /// {@template sealed_world.script_inds_constructor}
  /// Creates a instance of [ScriptInds] (Indus (Harappan) script).
  ///
  /// ISO 15924 Alpha-4 code: `Inds`, ISO 15924 Numeric code: `610`.
  /// {@endtemplate}
  const factory ScriptInds() = _IndsFactory;

  const ScriptInds._()
    : super(
        name: "Indus (Harappan)",
        code: "Inds",
        codeNumeric: "610",
        date: "2004-05-01",
      );
}
