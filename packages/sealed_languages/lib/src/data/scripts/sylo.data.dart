part of "../../model/script/submodels/script.dart";

extension type const _SyloFactory._(ScriptSylo _) implements ScriptSylo {
  const _SyloFactory() : this._(const ScriptSylo._());
}

/// A class that represents the Syloti Nagri script.
final class ScriptSylo extends Script {
  /// {@template sealed_world.script_sylo_constructor}
  /// Creates a instance of [ScriptSylo] (Syloti Nagri script).
  ///
  /// ISO 15924 Alpha-4 code: `Sylo`, ISO 15924 Numeric code: `316`.
  /// {@endtemplate}
  const factory ScriptSylo() = _SyloFactory;

  const ScriptSylo._()
    : super._(
        name: "Syloti Nagri",
        code: "Sylo",
        codeNumeric: "316",
        date: "2006-06-21",
        pva: "Syloti_Nagri",
      );
}
