part of "../../model/script/writing_system.dart";

extension type const _BugiFactory._(ScriptBugi _) implements ScriptBugi {
  const _BugiFactory() : this._(const ScriptBugi._());
}

/// A class that represents the Buginese script.
class ScriptBugi extends Script {
  /// {@template sealed_world.script_bugi_constructor}
  /// Creates a instance of [ScriptBugi] (Buginese script).
  ///
  /// ISO 15924 Alpha-4 code: `Bugi`, ISO 15924 Numeric code: `367`.
  /// {@endtemplate}
  const factory ScriptBugi() = _BugiFactory;

  const ScriptBugi._()
    : super(
        name: "Buginese",
        code: "Bugi",
        codeNumeric: "367",
        date: "2006-06-21",
        pva: "Buginese",
      );
}
