part of "../../model/script/submodels/script.dart";

extension type const _MoonFactory._(ScriptMoon _) implements ScriptMoon {
  const _MoonFactory() : this._(const ScriptMoon._());
}

/// A class that represents the Moon (Moon code, Moon script, Moon type) script.
final class ScriptMoon extends Script {
  /// {@template sealed_world.script_moon_constructor}
  /// Creates a instance of [ScriptMoon]
  /// (Moon (Moon code, Moon script, Moon type) script).
  ///
  /// ISO 15924 Alpha-4 code: `Moon`, ISO 15924 Numeric code: `218`.
  /// {@endtemplate}
  const factory ScriptMoon() = _MoonFactory;

  const ScriptMoon._()
    : super._(
        name: "Moon (Moon code, Moon script, Moon type)",
        code: "Moon",
        codeNumeric: "218",
        date: "2006-12-11",
      );
}
