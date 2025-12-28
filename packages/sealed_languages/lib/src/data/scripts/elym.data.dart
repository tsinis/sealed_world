part of "../../model/script/submodels/script.dart";

extension type const _ElymFactory._(ScriptElym _) implements ScriptElym {
  const _ElymFactory() : this._(const ScriptElym._());
}

/// A class that represents the Elymaic script.
final class ScriptElym extends Script {
  /// {@template sealed_world.script_elym_constructor}
  /// Creates a instance of [ScriptElym] (Elymaic script).
  ///
  /// ISO 15924 Alpha-4 code: `Elym`, ISO 15924 Numeric code: `128`.
  /// {@endtemplate}
  const factory ScriptElym() = _ElymFactory;

  const ScriptElym._()
    : super._(
        name: "Elymaic",
        code: "Elym",
        codeNumeric: "128",
        date: "2018-08-26",
        pva: "Elymaic",
      );
}
