part of "../../model/script/writing_system.dart";

extension type const _WchoFactory._(ScriptWcho _) implements ScriptWcho {
  const _WchoFactory() : this._(const ScriptWcho._());
}

/// A class that represents the Wancho script.
class ScriptWcho extends Script {
  /// {@template sealed_world.script_wcho_constructor}
  /// Creates a instance of [ScriptWcho] (Wancho script).
  ///
  /// ISO 15924 Alpha-4 code: `Wcho`, ISO 15924 Numeric code: `283`.
  /// {@endtemplate}
  const factory ScriptWcho() = _WchoFactory;

  const ScriptWcho._()
    : super(
        name: "Wancho",
        code: "Wcho",
        codeNumeric: "283",
        date: "2017-07-26",
        pva: "Wancho",
      );
}
