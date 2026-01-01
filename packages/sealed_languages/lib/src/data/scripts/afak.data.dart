part of "../../model/script/submodels/script.dart";

extension type const _AfakFactory._(ScriptAfak _) implements ScriptAfak {
  const _AfakFactory() : this._(const ScriptAfak._());
}

/// A class that represents the Afaka script.
final class ScriptAfak extends Script {
  /// {@template sealed_world.script_afak_constructor}
  /// Creates a instance of [ScriptAfak] (Afaka script).
  ///
  /// ISO 15924 Alpha-4 code: `Afak`, ISO 15924 Numeric code: `439`.
  /// {@endtemplate}
  const factory ScriptAfak() = _AfakFactory;

  const ScriptAfak._()
    : super._(
        name: "Afaka",
        code: "Afak",
        codeNumeric: "439",
        date: "2010-12-21",
      );
}
