part of "../../model/script/submodels/script.dart";

extension type const _HungFactory._(ScriptHung _) implements ScriptHung {
  const _HungFactory() : this._(const ScriptHung._());
}

/// A class that represents the Old Hungarian (Hungarian Runic) script.
final class ScriptHung extends Script {
  /// {@template sealed_world.script_hung_constructor}
  /// Creates a instance of [ScriptHung] (Old Hungarian (Hungarian Runic) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hung`, ISO 15924 Numeric code: `176`.
  /// {@endtemplate}
  const factory ScriptHung() = _HungFactory;

  const ScriptHung._()
    : super._(
        name: "Old Hungarian (Hungarian Runic)",
        code: "Hung",
        codeNumeric: "176",
        date: "2015-07-07",
        pva: "Old_Hungarian",
      );
}
