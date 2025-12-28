part of "../../model/script/submodels/script.dart";

extension type const _BuhdFactory._(ScriptBuhd _) implements ScriptBuhd {
  const _BuhdFactory() : this._(const ScriptBuhd._());
}

/// A class that represents the Buhid script.
final class ScriptBuhd extends Script {
  /// {@template sealed_world.script_buhd_constructor}
  /// Creates a instance of [ScriptBuhd] (Buhid script).
  ///
  /// ISO 15924 Alpha-4 code: `Buhd`, ISO 15924 Numeric code: `372`.
  /// {@endtemplate}
  const factory ScriptBuhd() = _BuhdFactory;

  const ScriptBuhd._()
    : super._(
        name: "Buhid",
        code: "Buhd",
        codeNumeric: "372",
        date: "2004-05-01",
        pva: "Buhid",
      );
}
