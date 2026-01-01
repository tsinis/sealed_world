part of "../../model/script/submodels/script.dart";

extension type const _LaooFactory._(ScriptLaoo _) implements ScriptLaoo {
  const _LaooFactory() : this._(const ScriptLaoo._());
}

/// A class that represents the Lao script.
final class ScriptLaoo extends Script {
  /// {@template sealed_world.script_laoo_constructor}
  /// Creates a instance of [ScriptLaoo] (Lao script).
  ///
  /// ISO 15924 Alpha-4 code: `Laoo`, ISO 15924 Numeric code: `356`.
  /// {@endtemplate}
  const factory ScriptLaoo() = _LaooFactory;

  const ScriptLaoo._()
    : super._(
        name: "Lao",
        code: "Laoo",
        codeNumeric: "356",
        date: "2004-05-01",
        pva: "Lao",
      );
}
