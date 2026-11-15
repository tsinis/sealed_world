part of "../../model/script/submodels/script.dart";

extension type const _SoyoFactory._(ScriptSoyo _) implements ScriptSoyo {
  const new() : this._(const ScriptSoyo._());
}

/// A class that represents the Soyombo script.
final class ScriptSoyo extends Script {
  /// {@template sealed_world.script_soyo_constructor}
  /// Creates a instance of [ScriptSoyo] (Soyombo script).
  ///
  /// ISO 15924 Alpha-4 code: `Soyo`, ISO 15924 Numeric code: `329`.
  /// {@endtemplate}
  const factory() = _SoyoFactory;

  const new _()
    : super._(
        name: "Soyombo",
        code: "Soyo",
        codeNumeric: "329",
        date: "2017-07-26",
        pva: "Soyombo",
      );
}
