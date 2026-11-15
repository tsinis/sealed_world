part of "../../model/script/submodels/script.dart";

extension type const _ThaaFactory._(ScriptThaa _) implements ScriptThaa {
  const new() : this._(const ScriptThaa._());
}

/// A class that represents the Thaana script.
final class ScriptThaa extends Script {
  /// {@template sealed_world.script_thaa_constructor}
  /// Creates a instance of [ScriptThaa] (Thaana script).
  ///
  /// ISO 15924 Alpha-4 code: `Thaa`, ISO 15924 Numeric code: `170`.
  /// {@endtemplate}
  const factory() = _ThaaFactory;

  const new _()
    : super._(
        name: "Thaana",
        code: "Thaa",
        codeNumeric: "170",
        date: "2004-05-01",
        pva: "Thaana",
      );
}
