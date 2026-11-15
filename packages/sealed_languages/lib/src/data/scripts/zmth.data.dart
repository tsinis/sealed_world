part of "../../model/script/submodels/script.dart";

extension type const _ZmthFactory._(ScriptZmth _) implements ScriptZmth {
  const new() : this._(const ScriptZmth._());
}

/// A class that represents the Mathematical notation script.
final class ScriptZmth extends Script {
  /// {@template sealed_world.script_zmth_constructor}
  /// Creates a instance of [ScriptZmth] (Mathematical notation script).
  ///
  /// ISO 15924 Alpha-4 code: `Zmth`, ISO 15924 Numeric code: `995`.
  /// {@endtemplate}
  const factory() = _ZmthFactory;

  const new _()
    : super._(
        name: "Mathematical notation",
        code: "Zmth",
        codeNumeric: "995",
        date: "2007-11-26",
      );
}
