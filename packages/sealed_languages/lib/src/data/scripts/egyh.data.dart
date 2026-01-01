part of "../../model/script/submodels/script.dart";

extension type const _EgyhFactory._(ScriptEgyh _) implements ScriptEgyh {
  const _EgyhFactory() : this._(const ScriptEgyh._());
}

/// A class that represents the Egyptian hieratic script.
final class ScriptEgyh extends Script {
  /// {@template sealed_world.script_egyh_constructor}
  /// Creates a instance of [ScriptEgyh] (Egyptian hieratic script).
  ///
  /// ISO 15924 Alpha-4 code: `Egyh`, ISO 15924 Numeric code: `060`.
  /// {@endtemplate}
  const factory ScriptEgyh() = _EgyhFactory;

  const ScriptEgyh._()
    : super._(
        name: "Egyptian hieratic",
        code: "Egyh",
        codeNumeric: "060",
        date: "2004-05-01",
      );
}
