part of "../../model/script/writing_system.dart";

extension type const _TotoFactory._(ScriptToto _) implements ScriptToto {
  const _TotoFactory() : this._(const ScriptToto._());
}

/// A class that represents the Toto script.
class ScriptToto extends Script {
  /// {@template sealed_world.script_toto_constructor}
  /// Creates a instance of [ScriptToto] (Toto script).
  ///
  /// ISO 15924 Alpha-4 code: `Toto`, ISO 15924 Numeric code: `294`.
  /// {@endtemplate}
  const factory ScriptToto() = _TotoFactory;

  const ScriptToto._()
    : super(
        name: "Toto",
        code: "Toto",
        codeNumeric: "294",
        date: "2020-04-16",
        pva: "Toto",
      );
}
