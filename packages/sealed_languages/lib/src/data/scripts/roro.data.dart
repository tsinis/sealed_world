part of "../../model/script/writing_system.dart";

extension type const _RoroFactory._(ScriptRoro _) implements ScriptRoro {
  const _RoroFactory() : this._(const ScriptRoro._());
}

/// A class that represents the Rongorongo script.
class ScriptRoro extends Script {
  /// {@template sealed_world.script_roro_constructor}
  /// Creates a instance of [ScriptRoro] (Rongorongo script).
  ///
  /// ISO 15924 Alpha-4 code: `Roro`, ISO 15924 Numeric code: `620`.
  /// {@endtemplate}
  const factory ScriptRoro() = _RoroFactory;

  const ScriptRoro._()
    : super(
        name: "Rongorongo",
        code: "Roro",
        codeNumeric: "620",
        date: "2004-05-01",
      );
}
