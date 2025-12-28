part of "../../model/script/submodels/script.dart";

extension type const _PcunFactory._(ScriptPcun _) implements ScriptPcun {
  const _PcunFactory() : this._(const ScriptPcun._());
}

/// A class that represents the Proto-Cuneiform script.
final class ScriptPcun extends Script {
  /// {@template sealed_world.script_pcun_constructor}
  /// Creates a instance of [ScriptPcun] (Proto-Cuneiform script).
  ///
  /// ISO 15924 Alpha-4 code: `Pcun`, ISO 15924 Numeric code: `015`.
  /// {@endtemplate}
  const factory ScriptPcun() = _PcunFactory;

  const ScriptPcun._()
    : super._(
        name: "Proto-Cuneiform",
        code: "Pcun",
        codeNumeric: "015",
        date: "2021-01-25",
      );
}
