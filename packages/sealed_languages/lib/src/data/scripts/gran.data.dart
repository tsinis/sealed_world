part of "../../model/script/submodels/script.dart";

extension type const _GranFactory._(ScriptGran _) implements ScriptGran {
  const _GranFactory() : this._(const ScriptGran._());
}

/// A class that represents the Grantha script.
final class ScriptGran extends Script {
  /// {@template sealed_world.script_gran_constructor}
  /// Creates a instance of [ScriptGran] (Grantha script).
  ///
  /// ISO 15924 Alpha-4 code: `Gran`, ISO 15924 Numeric code: `343`.
  /// {@endtemplate}
  const factory ScriptGran() = _GranFactory;

  const ScriptGran._()
    : super._(
        name: "Grantha",
        code: "Gran",
        codeNumeric: "343",
        date: "2014-11-15",
        pva: "Grantha",
      );
}
