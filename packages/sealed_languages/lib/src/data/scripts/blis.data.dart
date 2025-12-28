part of "../../model/script/submodels/script.dart";

extension type const _BlisFactory._(ScriptBlis _) implements ScriptBlis {
  const _BlisFactory() : this._(const ScriptBlis._());
}

/// A class that represents the Blissymbols script.
final class ScriptBlis extends Script {
  /// {@template sealed_world.script_blis_constructor}
  /// Creates a instance of [ScriptBlis] (Blissymbols script).
  ///
  /// ISO 15924 Alpha-4 code: `Blis`, ISO 15924 Numeric code: `550`.
  /// {@endtemplate}
  const factory ScriptBlis() = _BlisFactory;

  const ScriptBlis._()
    : super._(
        name: "Blissymbols",
        code: "Blis",
        codeNumeric: "550",
        date: "2004-05-01",
      );
}
