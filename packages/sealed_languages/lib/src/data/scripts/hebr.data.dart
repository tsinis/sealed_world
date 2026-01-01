part of "../../model/script/submodels/script.dart";

extension type const _HebrFactory._(ScriptHebr _) implements ScriptHebr {
  const _HebrFactory() : this._(const ScriptHebr._());
}

/// A class that represents the Hebrew script.
final class ScriptHebr extends Script {
  /// {@template sealed_world.script_hebr_constructor}
  /// Creates a instance of [ScriptHebr] (Hebrew script).
  ///
  /// ISO 15924 Alpha-4 code: `Hebr`, ISO 15924 Numeric code: `125`.
  /// {@endtemplate}
  const factory ScriptHebr() = _HebrFactory;

  const ScriptHebr._()
    : super._(
        name: "Hebrew",
        code: "Hebr",
        codeNumeric: "125",
        date: "2004-05-01",
        pva: "Hebrew",
      );
}
