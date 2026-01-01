part of "../../model/script/submodels/script.dart";

extension type const _SinhFactory._(ScriptSinh _) implements ScriptSinh {
  const _SinhFactory() : this._(const ScriptSinh._());
}

/// A class that represents the Sinhala script.
final class ScriptSinh extends Script {
  /// {@template sealed_world.script_sinh_constructor}
  /// Creates a instance of [ScriptSinh] (Sinhala script).
  ///
  /// ISO 15924 Alpha-4 code: `Sinh`, ISO 15924 Numeric code: `348`.
  /// {@endtemplate}
  const factory ScriptSinh() = _SinhFactory;

  const ScriptSinh._()
    : super._(
        name: "Sinhala",
        code: "Sinh",
        codeNumeric: "348",
        date: "2004-05-01",
        pva: "Sinhala",
      );
}
