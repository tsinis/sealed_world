part of "../../model/script/submodels/script.dart";

extension type const _VithFactory._(ScriptVith _) implements ScriptVith {
  const _VithFactory() : this._(const ScriptVith._());
}

/// A class that represents the Vithkuqi script.
final class ScriptVith extends Script {
  /// {@template sealed_world.script_vith_constructor}
  /// Creates a instance of [ScriptVith] (Vithkuqi script).
  ///
  /// ISO 15924 Alpha-4 code: `Vith`, ISO 15924 Numeric code: `228`.
  /// {@endtemplate}
  const factory ScriptVith() = _VithFactory;

  const ScriptVith._()
    : super._(
        name: "Vithkuqi",
        code: "Vith",
        codeNumeric: "228",
        date: "2021-02-17",
        pva: "Vithkuqi",
      );
}
