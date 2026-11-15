part of "../../model/script/submodels/script.dart";

extension type const _SyrjFactory._(ScriptSyrj _) implements ScriptSyrj {
  const new() : this._(const ScriptSyrj._());
}

/// A class that represents the Syriac (Western variant) script.
final class ScriptSyrj extends Script {
  /// {@template sealed_world.script_syrj_constructor}
  /// Creates a instance of [ScriptSyrj] (Syriac (Western variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Syrj`, ISO 15924 Numeric code: `137`.
  /// {@endtemplate}
  const factory() = _SyrjFactory;

  const new _()
    : super._(
        name: "Syriac (Western variant)",
        code: "Syrj",
        codeNumeric: "137",
        date: "2004-05-01",
      );
}
