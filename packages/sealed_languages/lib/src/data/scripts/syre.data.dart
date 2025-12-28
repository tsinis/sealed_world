part of "../../model/script/submodels/script.dart";

extension type const _SyreFactory._(ScriptSyre _) implements ScriptSyre {
  const _SyreFactory() : this._(const ScriptSyre._());
}

/// A class that represents the Syriac (Estrangelo variant) script.
final class ScriptSyre extends Script {
  /// {@template sealed_world.script_syre_constructor}
  /// Creates a instance of [ScriptSyre] (Syriac (Estrangelo variant) script).
  ///
  /// ISO 15924 Alpha-4 code: `Syre`, ISO 15924 Numeric code: `138`.
  /// {@endtemplate}
  const factory ScriptSyre() = _SyreFactory;

  const ScriptSyre._()
    : super._(
        name: "Syriac (Estrangelo variant)",
        code: "Syre",
        codeNumeric: "138",
        date: "2004-05-01",
      );
}
