part of "../../model/script/submodels/script.dart";

extension type const _BamuFactory._(ScriptBamu _) implements ScriptBamu {
  const new() : this._(const ScriptBamu._());
}

/// A class that represents the Bamum script.
final class ScriptBamu extends Script {
  /// {@template sealed_world.script_bamu_constructor}
  /// Creates a instance of [ScriptBamu] (Bamum script).
  ///
  /// ISO 15924 Alpha-4 code: `Bamu`, ISO 15924 Numeric code: `435`.
  /// {@endtemplate}
  const factory() = _BamuFactory;

  const new _()
    : super._(
        name: "Bamum",
        code: "Bamu",
        codeNumeric: "435",
        date: "2009-06-01",
        pva: "Bamum",
      );
}
