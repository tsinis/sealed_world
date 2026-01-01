part of "../../model/script/submodels/script.dart";

extension type const _YeziFactory._(ScriptYezi _) implements ScriptYezi {
  const _YeziFactory() : this._(const ScriptYezi._());
}

/// A class that represents the Yezidi script.
final class ScriptYezi extends Script {
  /// {@template sealed_world.script_yezi_constructor}
  /// Creates a instance of [ScriptYezi] (Yezidi script).
  ///
  /// ISO 15924 Alpha-4 code: `Yezi`, ISO 15924 Numeric code: `192`.
  /// {@endtemplate}
  const factory ScriptYezi() = _YeziFactory;

  const ScriptYezi._()
    : super._(
        name: "Yezidi",
        code: "Yezi",
        codeNumeric: "192",
        date: "2019-08-19",
        pva: "Yezidi",
      );
}
