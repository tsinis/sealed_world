part of "../../model/script/submodels/script.dart";

extension type const _KawiFactory._(ScriptKawi _) implements ScriptKawi {
  const _KawiFactory() : this._(const ScriptKawi._());
}

/// A class that represents the Kawi script.
final class ScriptKawi extends Script {
  /// {@template sealed_world.script_kawi_constructor}
  /// Creates a instance of [ScriptKawi] (Kawi script).
  ///
  /// ISO 15924 Alpha-4 code: `Kawi`, ISO 15924 Numeric code: `368`.
  /// {@endtemplate}
  const factory ScriptKawi() = _KawiFactory;

  const ScriptKawi._()
    : super._(
        name: "Kawi",
        code: "Kawi",
        codeNumeric: "368",
        date: "2021-12-03",
      );
}
