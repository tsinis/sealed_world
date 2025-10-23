part of "../../model/script/writing_system.dart";

extension type const _YiiiFactory._(ScriptYiii _) implements ScriptYiii {
  const _YiiiFactory() : this._(const ScriptYiii._());
}

/// A class that represents the Yi script.
class ScriptYiii extends Script {
  /// {@template sealed_world.script_yiii_constructor}
  /// Creates a instance of [ScriptYiii] (Yi script).
  ///
  /// ISO 15924 Alpha-4 code: `Yiii`, ISO 15924 Numeric code: `460`.
  /// {@endtemplate}
  const factory ScriptYiii() = _YiiiFactory;

  const ScriptYiii._()
    : super(
        name: "Yi",
        code: "Yiii",
        codeNumeric: "460",
        date: "2004-05-01",
        pva: "Yi",
      );
}
