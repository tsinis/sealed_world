part of "../../model/script/submodels/script.dart";

extension type const _PsinFactory._(ScriptPsin _) implements ScriptPsin {
  const new() : this._(const ScriptPsin._());
}

/// A class that represents the Proto-Sinaitic script.
final class ScriptPsin extends Script {
  /// {@template sealed_world.script_psin_constructor}
  /// Creates a instance of [ScriptPsin] (Proto-Sinaitic script).
  ///
  /// ISO 15924 Alpha-4 code: `Psin`, ISO 15924 Numeric code: `103`.
  /// {@endtemplate}
  const factory() = _PsinFactory;

  const new _()
    : super._(
        name: "Proto-Sinaitic",
        code: "Psin",
        codeNumeric: "103",
        date: "2021-01-25",
      );
}
