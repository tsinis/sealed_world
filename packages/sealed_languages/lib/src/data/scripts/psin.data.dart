part of "../../model/script/writing_system.dart";

extension type const _PsinFactory._(ScriptPsin _) implements ScriptPsin {
  const _PsinFactory() : this._(const ScriptPsin._());
}

/// A class that represents the Proto-Sinaitic script.
class ScriptPsin extends Script {
  /// {@template sealed_world.script_psin_constructor}
  /// Creates a instance of [ScriptPsin] (Proto-Sinaitic script).
  ///
  /// ISO 15924 Alpha-4 code: `Psin`, ISO 15924 Numeric code: `103`.
  /// {@endtemplate}
  const factory ScriptPsin() = _PsinFactory;

  const ScriptPsin._()
    : super(
        name: "Proto-Sinaitic",
        code: "Psin",
        codeNumeric: "103",
        date: "2021-01-25",
      );
}
