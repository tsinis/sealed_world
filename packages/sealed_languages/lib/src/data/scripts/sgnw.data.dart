part of "../../model/script/writing_system.dart";

extension type const _SgnwFactory._(ScriptSgnw _) implements ScriptSgnw {
  const _SgnwFactory() : this._(const ScriptSgnw._());
}

/// A class that represents the SignWriting script.
class ScriptSgnw extends Script {
  /// {@template sealed_world.script_sgnw_constructor}
  /// Creates a instance of [ScriptSgnw] (SignWriting script).
  ///
  /// ISO 15924 Alpha-4 code: `Sgnw`, ISO 15924 Numeric code: `095`.
  /// {@endtemplate}
  const factory ScriptSgnw() = _SgnwFactory;

  const ScriptSgnw._()
    : super(
        name: "SignWriting",
        code: "Sgnw",
        codeNumeric: "095",
        date: "2015-07-07",
        pva: "SignWriting",
      );
}
