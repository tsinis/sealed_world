part of "../../model/script/submodels/script.dart";

extension type const _PelmFactory._(ScriptPelm _) implements ScriptPelm {
  const _PelmFactory() : this._(const ScriptPelm._());
}

/// A class that represents the Proto-Elamite script.
final class ScriptPelm extends Script {
  /// {@template sealed_world.script_pelm_constructor}
  /// Creates a instance of [ScriptPelm] (Proto-Elamite script).
  ///
  /// ISO 15924 Alpha-4 code: `Pelm`, ISO 15924 Numeric code: `016`.
  /// {@endtemplate}
  const factory ScriptPelm() = _PelmFactory;

  const ScriptPelm._()
    : super._(
        name: "Proto-Elamite",
        code: "Pelm",
        codeNumeric: "016",
        date: "2021-01-25",
      );
}
