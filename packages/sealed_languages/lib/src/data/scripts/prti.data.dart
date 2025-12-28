part of "../../model/script/submodels/script.dart";

extension type const _PrtiFactory._(ScriptPrti _) implements ScriptPrti {
  const _PrtiFactory() : this._(const ScriptPrti._());
}

/// A class that represents the Inscriptional Parthian script.
final class ScriptPrti extends Script {
  /// {@template sealed_world.script_prti_constructor}
  /// Creates a instance of [ScriptPrti] (Inscriptional Parthian script).
  ///
  /// ISO 15924 Alpha-4 code: `Prti`, ISO 15924 Numeric code: `130`.
  /// {@endtemplate}
  const factory ScriptPrti() = _PrtiFactory;

  const ScriptPrti._()
    : super._(
        name: "Inscriptional Parthian",
        code: "Prti",
        codeNumeric: "130",
        date: "2009-06-01",
        pva: "Inscriptional_Parthian",
      );
}
