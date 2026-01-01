part of "../../model/script/submodels/script.dart";

extension type const _KhmrFactory._(ScriptKhmr _) implements ScriptKhmr {
  const _KhmrFactory() : this._(const ScriptKhmr._());
}

/// A class that represents the Khmer script.
final class ScriptKhmr extends Script {
  /// {@template sealed_world.script_khmr_constructor}
  /// Creates a instance of [ScriptKhmr] (Khmer script).
  ///
  /// ISO 15924 Alpha-4 code: `Khmr`, ISO 15924 Numeric code: `355`.
  /// {@endtemplate}
  const factory ScriptKhmr() = _KhmrFactory;

  const ScriptKhmr._()
    : super._(
        name: "Khmer",
        code: "Khmr",
        codeNumeric: "355",
        date: "2004-05-29",
        pva: "Khmer",
      );
}
