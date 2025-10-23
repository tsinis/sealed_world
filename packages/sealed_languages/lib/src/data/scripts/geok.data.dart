part of "../../model/script/writing_system.dart";

extension type const _GeokFactory._(ScriptGeok _) implements ScriptGeok {
  const _GeokFactory() : this._(const ScriptGeok._());
}

/// A class that represents the Khutsuri (Asomtavruli and Nuskhuri) script.
class ScriptGeok extends Script {
  /// {@template sealed_world.script_geok_constructor}
  /// Creates a instance of [ScriptGeok] (Khutsuri (Asomtavruli and Nuskhuri) script).
  ///
  /// ISO 15924 Alpha-4 code: `Geok`, ISO 15924 Numeric code: `241`.
  /// {@endtemplate}
  const factory ScriptGeok() = _GeokFactory;

  const ScriptGeok._()
    : super(
        name: "Khutsuri (Asomtavruli and Nuskhuri)",
        code: "Geok",
        codeNumeric: "241",
        date: "2012-10-16",
        pva: "Georgian",
      );
}
