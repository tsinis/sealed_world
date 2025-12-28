part of "../../model/script/submodels/script.dart";

extension type const _VispFactory._(ScriptVisp _) implements ScriptVisp {
  const _VispFactory() : this._(const ScriptVisp._());
}

/// A class that represents the Visible Speech script.
final class ScriptVisp extends Script {
  /// {@template sealed_world.script_visp_constructor}
  /// Creates a instance of [ScriptVisp] (Visible Speech script).
  ///
  /// ISO 15924 Alpha-4 code: `Visp`, ISO 15924 Numeric code: `280`.
  /// {@endtemplate}
  const factory ScriptVisp() = _VispFactory;

  const ScriptVisp._()
    : super._(
        name: "Visible Speech",
        code: "Visp",
        codeNumeric: "280",
        date: "2004-05-01",
      );
}
