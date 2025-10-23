part of "../../model/script/writing_system.dart";

extension type const _HangFactory._(ScriptHang _) implements ScriptHang {
  const _HangFactory() : this._(const ScriptHang._());
}

/// A class that represents the Hangul (Hangŭl, Hangeul) script.
class ScriptHang extends Script {
  /// {@template sealed_world.script_hang_constructor}
  /// Creates a instance of [ScriptHang] (Hangul (Hangŭl, Hangeul) script).
  ///
  /// ISO 15924 Alpha-4 code: `Hang`, ISO 15924 Numeric code: `286`.
  /// {@endtemplate}
  const factory ScriptHang() = _HangFactory;

  const ScriptHang._()
    : super(
        name: "Hangul (Hangŭl, Hangeul)",
        code: "Hang",
        codeNumeric: "286",
        date: "2004-05-29",
        pva: "Hangul",
      );
}
