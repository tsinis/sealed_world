part of "../../model/script/writing_system.dart";

extension type const _PhagFactory._(ScriptPhag _) implements ScriptPhag {
  const _PhagFactory() : this._(const ScriptPhag._());
}

/// A class that represents the Phags-pa script.
class ScriptPhag extends Script {
  /// {@template sealed_world.script_phag_constructor}
  /// Creates a instance of [ScriptPhag] (Phags-pa script).
  ///
  /// ISO 15924 Alpha-4 code: `Phag`, ISO 15924 Numeric code: `331`.
  /// {@endtemplate}
  const factory ScriptPhag() = _PhagFactory;

  const ScriptPhag._()
    : super(
        name: "Phags-pa",
        code: "Phag",
        codeNumeric: "331",
        date: "2006-10-10",
        pva: "Phags_Pa",
      );
}
