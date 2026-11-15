part of "../../model/script/submodels/script.dart";

extension type const _QaaaFactory._(ScriptQaaa _) implements ScriptQaaa {
  const new() : this._(const ScriptQaaa._());
}

/// A class that represents the Reserved for private use (start) script.
final class ScriptQaaa extends Script {
  /// {@template sealed_world.script_qaaa_constructor}
  /// Creates a instance of [ScriptQaaa]
  /// (Reserved for private use (start) script).
  ///
  /// ISO 15924 Alpha-4 code: `Qaaa`, ISO 15924 Numeric code: `900`.
  /// {@endtemplate}
  const factory() = _QaaaFactory;

  const new _()
    : super._(
        name: "Reserved for private use (start)",
        code: "Qaaa",
        codeNumeric: "900",
        date: "2004-05-29",
      );
}
