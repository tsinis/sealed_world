part of "../../model/script/submodels/script.dart";

extension type const _MayaFactory._(ScriptMaya _) implements ScriptMaya {
  const _MayaFactory() : this._(const ScriptMaya._());
}

/// A class that represents the Mayan hieroglyphs script.
final class ScriptMaya extends Script {
  /// {@template sealed_world.script_maya_constructor}
  /// Creates a instance of [ScriptMaya] (Mayan hieroglyphs script).
  ///
  /// ISO 15924 Alpha-4 code: `Maya`, ISO 15924 Numeric code: `090`.
  /// {@endtemplate}
  const factory ScriptMaya() = _MayaFactory;

  const ScriptMaya._()
    : super._(
        name: "Mayan hieroglyphs",
        code: "Maya",
        codeNumeric: "090",
        date: "2004-05-01",
      );
}
