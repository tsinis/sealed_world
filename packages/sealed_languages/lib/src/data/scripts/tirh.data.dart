part of "../../model/script/submodels/script.dart";

extension type const _TirhFactory._(ScriptTirh _) implements ScriptTirh {
  const _TirhFactory() : this._(const ScriptTirh._());
}

/// A class that represents the Tirhuta script.
final class ScriptTirh extends Script {
  /// {@template sealed_world.script_tirh_constructor}
  /// Creates a instance of [ScriptTirh] (Tirhuta script).
  ///
  /// ISO 15924 Alpha-4 code: `Tirh`, ISO 15924 Numeric code: `326`.
  /// {@endtemplate}
  const factory ScriptTirh() = _TirhFactory;

  const ScriptTirh._()
    : super._(
        name: "Tirhuta",
        code: "Tirh",
        codeNumeric: "326",
        date: "2014-11-15",
        pva: "Tirhuta",
      );
}
