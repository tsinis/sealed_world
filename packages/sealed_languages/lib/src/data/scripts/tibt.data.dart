part of "../../model/script/writing_system.dart";

extension type const _TibtFactory._(ScriptTibt _) implements ScriptTibt {
  const _TibtFactory() : this._(const ScriptTibt._());
}

/// A class that represents the Tibetan script.
class ScriptTibt extends Script {
  /// {@template sealed_world.script_tibt_constructor}
  /// Creates a instance of [ScriptTibt] (Tibetan script).
  ///
  /// ISO 15924 Alpha-4 code: `Tibt`, ISO 15924 Numeric code: `330`.
  /// {@endtemplate}
  const factory ScriptTibt() = _TibtFactory;

  const ScriptTibt._()
    : super(
        name: "Tibetan",
        code: "Tibt",
        codeNumeric: "330",
        date: "2004-05-01",
        pva: "Tibetan",
      );
}
