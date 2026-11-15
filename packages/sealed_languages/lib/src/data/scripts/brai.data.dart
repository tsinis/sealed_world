part of "../../model/script/submodels/script.dart";

extension type const _BraiFactory._(ScriptBrai _) implements ScriptBrai {
  const new() : this._(const ScriptBrai._());
}

/// A class that represents the Braille script.
final class ScriptBrai extends Script {
  /// {@template sealed_world.script_brai_constructor}
  /// Creates a instance of [ScriptBrai] (Braille script).
  ///
  /// ISO 15924 Alpha-4 code: `Brai`, ISO 15924 Numeric code: `570`.
  /// {@endtemplate}
  const factory() = _BraiFactory;

  const new _()
    : super._(
        name: "Braille",
        code: "Brai",
        codeNumeric: "570",
        date: "2004-05-01",
        pva: "Braille",
      );
}
