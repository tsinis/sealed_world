part of "../../model/script/submodels/script.dart";

extension type const _GlagFactory._(ScriptGlag _) implements ScriptGlag {
  const _GlagFactory() : this._(const ScriptGlag._());
}

/// A class that represents the Glagolitic script.
final class ScriptGlag extends Script {
  /// {@template sealed_world.script_glag_constructor}
  /// Creates a instance of [ScriptGlag] (Glagolitic script).
  ///
  /// ISO 15924 Alpha-4 code: `Glag`, ISO 15924 Numeric code: `225`.
  /// {@endtemplate}
  const factory ScriptGlag() = _GlagFactory;

  const ScriptGlag._()
    : super._(
        name: "Glagolitic",
        code: "Glag",
        codeNumeric: "225",
        date: "2006-06-21",
        pva: "Glagolitic",
      );
}
