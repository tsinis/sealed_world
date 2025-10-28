part of "../../model/script/writing_system.dart";

extension type const _MymrFactory._(ScriptMymr _) implements ScriptMymr {
  const _MymrFactory() : this._(const ScriptMymr._());
}

/// A class that represents the Myanmar (Burmese) script.
class ScriptMymr extends Script {
  /// {@template sealed_world.script_mymr_constructor}
  /// Creates a instance of [ScriptMymr] (Myanmar (Burmese) script).
  ///
  /// ISO 15924 Alpha-4 code: `Mymr`, ISO 15924 Numeric code: `350`.
  /// {@endtemplate}
  const factory ScriptMymr() = _MymrFactory;

  const ScriptMymr._()
    : super(
        name: "Myanmar (Burmese)",
        code: "Mymr",
        codeNumeric: "350",
        date: "2004-05-01",
        pva: "Myanmar",
      );
}
