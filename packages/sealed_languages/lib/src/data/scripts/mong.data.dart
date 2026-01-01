part of "../../model/script/submodels/script.dart";

extension type const _MongFactory._(ScriptMong _) implements ScriptMong {
  const _MongFactory() : this._(const ScriptMong._());
}

/// A class that represents the Mongolian script.
final class ScriptMong extends Script {
  /// {@template sealed_world.script_mong_constructor}
  /// Creates a instance of [ScriptMong] (Mongolian script).
  ///
  /// ISO 15924 Alpha-4 code: `Mong`, ISO 15924 Numeric code: `145`.
  /// {@endtemplate}
  const factory ScriptMong() = _MongFactory;

  const ScriptMong._()
    : super._(
        name: "Mongolian",
        code: "Mong",
        codeNumeric: "145",
        date: "2004-05-01",
        pva: "Mongolian",
      );
}
