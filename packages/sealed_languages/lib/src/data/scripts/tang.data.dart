part of "../../model/script/submodels/script.dart";

extension type const _TangFactory._(ScriptTang _) implements ScriptTang {
  const _TangFactory() : this._(const ScriptTang._());
}

/// A class that represents the Tangut script.
final class ScriptTang extends Script {
  /// {@template sealed_world.script_tang_constructor}
  /// Creates a instance of [ScriptTang] (Tangut script).
  ///
  /// ISO 15924 Alpha-4 code: `Tang`, ISO 15924 Numeric code: `520`.
  /// {@endtemplate}
  const factory ScriptTang() = _TangFactory;

  const ScriptTang._()
    : super._(
        name: "Tangut",
        code: "Tang",
        codeNumeric: "520",
        date: "2016-12-05",
        pva: "Tangut",
      );
}
