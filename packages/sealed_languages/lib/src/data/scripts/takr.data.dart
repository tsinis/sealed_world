part of "../../model/script/writing_system.dart";

extension type const _TakrFactory._(ScriptTakr _) implements ScriptTakr {
  const _TakrFactory() : this._(const ScriptTakr._());
}

/// A class that represents the Takri, Ṭākrī, Ṭāṅkrī script.
class ScriptTakr extends Script {
  /// {@template sealed_world.script_takr_constructor}
  /// Creates a instance of [ScriptTakr] (Takri, Ṭākrī, Ṭāṅkrī script).
  ///
  /// ISO 15924 Alpha-4 code: `Takr`, ISO 15924 Numeric code: `321`.
  /// {@endtemplate}
  const factory ScriptTakr() = _TakrFactory;

  const ScriptTakr._()
    : super(
        name: "Takri, Ṭākrī, Ṭāṅkrī",
        code: "Takr",
        codeNumeric: "321",
        date: "2012-02-06",
        pva: "Takri",
      );
}
