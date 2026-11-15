part of "../../model/script/submodels/script.dart";

extension type const _TengFactory._(ScriptTeng _) implements ScriptTeng {
  const new() : this._(const ScriptTeng._());
}

/// A class that represents the Tengwar script.
final class ScriptTeng extends Script {
  /// {@template sealed_world.script_teng_constructor}
  /// Creates a instance of [ScriptTeng] (Tengwar script).
  ///
  /// ISO 15924 Alpha-4 code: `Teng`, ISO 15924 Numeric code: `290`.
  /// {@endtemplate}
  const factory() = _TengFactory;

  const new _()
    : super._(
        name: "Tengwar",
        code: "Teng",
        codeNumeric: "290",
        date: "2004-05-01",
      );
}
