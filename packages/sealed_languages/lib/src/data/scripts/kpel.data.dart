part of "../../model/script/submodels/script.dart";

extension type const _KpelFactory._(ScriptKpel _) implements ScriptKpel {
  const _KpelFactory() : this._(const ScriptKpel._());
}

/// A class that represents the Kpelle script.
final class ScriptKpel extends Script {
  /// {@template sealed_world.script_kpel_constructor}
  /// Creates a instance of [ScriptKpel] (Kpelle script).
  ///
  /// ISO 15924 Alpha-4 code: `Kpel`, ISO 15924 Numeric code: `436`.
  /// {@endtemplate}
  const factory ScriptKpel() = _KpelFactory;

  const ScriptKpel._()
    : super._(
        name: "Kpelle",
        code: "Kpel",
        codeNumeric: "436",
        date: "2010-03-26",
      );
}
