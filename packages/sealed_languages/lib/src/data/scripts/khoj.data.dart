part of "../../model/script/writing_system.dart";

extension type const _KhojFactory._(ScriptKhoj _) implements ScriptKhoj {
  const _KhojFactory() : this._(const ScriptKhoj._());
}

/// A class that represents the Khojki script.
class ScriptKhoj extends Script {
  /// {@template sealed_world.script_khoj_constructor}
  /// Creates a instance of [ScriptKhoj] (Khojki script).
  ///
  /// ISO 15924 Alpha-4 code: `Khoj`, ISO 15924 Numeric code: `322`.
  /// {@endtemplate}
  const factory ScriptKhoj() = _KhojFactory;

  const ScriptKhoj._()
    : super(
        name: "Khojki",
        code: "Khoj",
        codeNumeric: "322",
        date: "2014-11-15",
        pva: "Khojki",
      );
}
