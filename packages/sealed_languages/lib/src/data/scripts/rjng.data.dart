part of "../../model/script/writing_system.dart";

extension type const _RjngFactory._(ScriptRjng _) implements ScriptRjng {
  const _RjngFactory() : this._(const ScriptRjng._());
}

/// A class that represents the Rejang (Redjang, Kaganga) script.
class ScriptRjng extends Script {
  /// {@template sealed_world.script_rjng_constructor}
  /// Creates a instance of [ScriptRjng] (Rejang (Redjang, Kaganga) script).
  ///
  /// ISO 15924 Alpha-4 code: `Rjng`, ISO 15924 Numeric code: `363`.
  /// {@endtemplate}
  const factory ScriptRjng() = _RjngFactory;

  const ScriptRjng._()
    : super(
        name: "Rejang (Redjang, Kaganga)",
        code: "Rjng",
        codeNumeric: "363",
        date: "2009-02-23",
        pva: "Rejang",
      );
}
