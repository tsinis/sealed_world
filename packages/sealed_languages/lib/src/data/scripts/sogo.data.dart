part of "../../model/script/submodels/script.dart";

extension type const _SogoFactory._(ScriptSogo _) implements ScriptSogo {
  const _SogoFactory() : this._(const ScriptSogo._());
}

/// A class that represents the Old Sogdian script.
final class ScriptSogo extends Script {
  /// {@template sealed_world.script_sogo_constructor}
  /// Creates a instance of [ScriptSogo] (Old Sogdian script).
  ///
  /// ISO 15924 Alpha-4 code: `Sogo`, ISO 15924 Numeric code: `142`.
  /// {@endtemplate}
  const factory ScriptSogo() = _SogoFactory;

  const ScriptSogo._()
    : super._(
        name: "Old Sogdian",
        code: "Sogo",
        codeNumeric: "142",
        date: "2017-11-21",
        pva: "Old_Sogdian",
      );
}
