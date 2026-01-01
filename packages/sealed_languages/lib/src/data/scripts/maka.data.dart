part of "../../model/script/submodels/script.dart";

extension type const _MakaFactory._(ScriptMaka _) implements ScriptMaka {
  const _MakaFactory() : this._(const ScriptMaka._());
}

/// A class that represents the Makasar script.
final class ScriptMaka extends Script {
  /// {@template sealed_world.script_maka_constructor}
  /// Creates a instance of [ScriptMaka] (Makasar script).
  ///
  /// ISO 15924 Alpha-4 code: `Maka`, ISO 15924 Numeric code: `366`.
  /// {@endtemplate}
  const factory ScriptMaka() = _MakaFactory;

  const ScriptMaka._()
    : super._(
        name: "Makasar",
        code: "Maka",
        codeNumeric: "366",
        date: "2016-12-05",
        pva: "Makasar",
      );
}
