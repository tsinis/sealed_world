part of "../../model/script/submodels/script.dart";

extension type const _GrekFactory._(ScriptGrek _) implements ScriptGrek {
  const _GrekFactory() : this._(const ScriptGrek._());
}

/// A class that represents the Greek script.
final class ScriptGrek extends Script {
  /// {@template sealed_world.script_grek_constructor}
  /// Creates a instance of [ScriptGrek] (Greek script).
  ///
  /// ISO 15924 Alpha-4 code: `Grek`, ISO 15924 Numeric code: `200`.
  /// {@endtemplate}
  const factory ScriptGrek() = _GrekFactory;

  const ScriptGrek._()
    : super._(
        name: "Greek",
        code: "Grek",
        codeNumeric: "200",
        date: "2004-05-01",
        pva: "Greek",
      );
}
