part of "../../model/script/writing_system.dart";

extension type const _BengFactory._(ScriptBeng _) implements ScriptBeng {
  const _BengFactory() : this._(const ScriptBeng._());
}

/// A class that represents the Bengali (Bangla) script.
class ScriptBeng extends Script {
  /// {@template sealed_world.script_beng_constructor}
  /// Creates a instance of [ScriptBeng] (Bengali (Bangla) script).
  ///
  /// ISO 15924 Alpha-4 code: `Beng`, ISO 15924 Numeric code: `325`.
  /// {@endtemplate}
  const factory ScriptBeng() = _BengFactory;

  const ScriptBeng._()
    : super(
        name: "Bengali (Bangla)",
        code: "Beng",
        codeNumeric: "325",
        date: "2016-12-05",
        pva: "Bengali",
      );
}
