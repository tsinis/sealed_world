part of "../../model/script/writing_system.dart";

extension type const _GujrFactory._(ScriptGujr _) implements ScriptGujr {
  const _GujrFactory() : this._(const ScriptGujr._());
}

/// A class that represents the Gujarati script.
class ScriptGujr extends Script {
  /// {@template sealed_world.script_gujr_constructor}
  /// Creates a instance of [ScriptGujr] (Gujarati script).
  ///
  /// ISO 15924 Alpha-4 code: `Gujr`, ISO 15924 Numeric code: `320`.
  /// {@endtemplate}
  const factory ScriptGujr() = _GujrFactory;

  const ScriptGujr._()
    : super(
        name: "Gujarati",
        code: "Gujr",
        codeNumeric: "320",
        date: "2004-05-01",
        pva: "Gujarati",
      );
}
