part of "../../model/script/submodels/script.dart";

extension type const _CprtFactory._(ScriptCprt _) implements ScriptCprt {
  const _CprtFactory() : this._(const ScriptCprt._());
}

/// A class that represents the Cypriot syllabary script.
final class ScriptCprt extends Script {
  /// {@template sealed_world.script_cprt_constructor}
  /// Creates a instance of [ScriptCprt] (Cypriot syllabary script).
  ///
  /// ISO 15924 Alpha-4 code: `Cprt`, ISO 15924 Numeric code: `403`.
  /// {@endtemplate}
  const factory ScriptCprt() = _CprtFactory;

  const ScriptCprt._()
    : super._(
        name: "Cypriot syllabary",
        code: "Cprt",
        codeNumeric: "403",
        date: "2017-07-26",
        pva: "Cypriot",
      );
}
