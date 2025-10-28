part of "../../model/script/writing_system.dart";

extension type const _MahjFactory._(ScriptMahj _) implements ScriptMahj {
  const _MahjFactory() : this._(const ScriptMahj._());
}

/// A class that represents the Mahajani script.
class ScriptMahj extends Script {
  /// {@template sealed_world.script_mahj_constructor}
  /// Creates a instance of [ScriptMahj] (Mahajani script).
  ///
  /// ISO 15924 Alpha-4 code: `Mahj`, ISO 15924 Numeric code: `314`.
  /// {@endtemplate}
  const factory ScriptMahj() = _MahjFactory;

  const ScriptMahj._()
    : super(
        name: "Mahajani",
        code: "Mahj",
        codeNumeric: "314",
        date: "2014-11-15",
        pva: "Mahajani",
      );
}
