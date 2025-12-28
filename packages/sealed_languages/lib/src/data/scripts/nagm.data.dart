part of "../../model/script/submodels/script.dart";

extension type const _NagmFactory._(ScriptNagm _) implements ScriptNagm {
  const _NagmFactory() : this._(const ScriptNagm._());
}

/// A class that represents the Nag Mundari script.
final class ScriptNagm extends Script {
  /// {@template sealed_world.script_nagm_constructor}
  /// Creates a instance of [ScriptNagm] (Nag Mundari script).
  ///
  /// ISO 15924 Alpha-4 code: `Nagm`, ISO 15924 Numeric code: `295`.
  /// {@endtemplate}
  const factory ScriptNagm() = _NagmFactory;

  const ScriptNagm._()
    : super._(
        name: "Nag Mundari",
        code: "Nagm",
        codeNumeric: "295",
        date: "2021-12-03",
      );
}
