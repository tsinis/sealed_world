part of "../../model/script/submodels/script.dart";

extension type const _LekeFactory._(ScriptLeke _) implements ScriptLeke {
  const _LekeFactory() : this._(const ScriptLeke._());
}

/// A class that represents the Leke script.
final class ScriptLeke extends Script {
  /// {@template sealed_world.script_leke_constructor}
  /// Creates a instance of [ScriptLeke] (Leke script).
  ///
  /// ISO 15924 Alpha-4 code: `Leke`, ISO 15924 Numeric code: `364`.
  /// {@endtemplate}
  const factory ScriptLeke() = _LekeFactory;

  const ScriptLeke._()
    : super._(
        name: "Leke",
        code: "Leke",
        codeNumeric: "364",
        date: "2015-07-07",
      );
}
