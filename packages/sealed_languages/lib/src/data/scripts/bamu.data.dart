part of "../../model/script/writing_system.dart";

extension type const _BamuFactory._(ScriptBamu _) implements ScriptBamu {
  const _BamuFactory() : this._(const ScriptBamu._());
}

/// A class that represents the Bamum script.
class ScriptBamu extends Script {
  /// {@template sealed_world.script_bamu_constructor}
  /// Creates a instance of [ScriptBamu] (Bamum script).
  ///
  /// ISO 15924 Alpha-4 code: `Bamu`, ISO 15924 Numeric code: `435`.
  /// {@endtemplate}
  const factory ScriptBamu() = _BamuFactory;

  const ScriptBamu._()
    : super(
        name: "Bamum",
        code: "Bamu",
        codeNumeric: "435",
        date: "2009-06-01",
        pva: "Bamum",
      );
}
