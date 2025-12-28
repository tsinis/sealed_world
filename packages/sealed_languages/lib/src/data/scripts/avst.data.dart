part of "../../model/script/submodels/script.dart";

extension type const _AvstFactory._(ScriptAvst _) implements ScriptAvst {
  const _AvstFactory() : this._(const ScriptAvst._());
}

/// A class that represents the Avestan script.
final class ScriptAvst extends Script {
  /// {@template sealed_world.script_avst_constructor}
  /// Creates a instance of [ScriptAvst] (Avestan script).
  ///
  /// ISO 15924 Alpha-4 code: `Avst`, ISO 15924 Numeric code: `134`.
  /// {@endtemplate}
  const factory ScriptAvst() = _AvstFactory;

  const ScriptAvst._()
    : super._(
        name: "Avestan",
        code: "Avst",
        codeNumeric: "134",
        date: "2009-06-01",
        pva: "Avestan",
      );
}
