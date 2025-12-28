part of "../../model/script/submodels/script.dart";

extension type const _KthiFactory._(ScriptKthi _) implements ScriptKthi {
  const _KthiFactory() : this._(const ScriptKthi._());
}

/// A class that represents the Kaithi script.
final class ScriptKthi extends Script {
  /// {@template sealed_world.script_kthi_constructor}
  /// Creates a instance of [ScriptKthi] (Kaithi script).
  ///
  /// ISO 15924 Alpha-4 code: `Kthi`, ISO 15924 Numeric code: `317`.
  /// {@endtemplate}
  const factory ScriptKthi() = _KthiFactory;

  const ScriptKthi._()
    : super._(
        name: "Kaithi",
        code: "Kthi",
        codeNumeric: "317",
        date: "2009-06-01",
        pva: "Kaithi",
      );
}
