part of "../../model/script/submodels/script.dart";

extension type const _GothFactory._(ScriptGoth _) implements ScriptGoth {
  const _GothFactory() : this._(const ScriptGoth._());
}

/// A class that represents the Gothic script.
final class ScriptGoth extends Script {
  /// {@template sealed_world.script_goth_constructor}
  /// Creates a instance of [ScriptGoth] (Gothic script).
  ///
  /// ISO 15924 Alpha-4 code: `Goth`, ISO 15924 Numeric code: `206`.
  /// {@endtemplate}
  const factory ScriptGoth() = _GothFactory;

  const ScriptGoth._()
    : super._(
        name: "Gothic",
        code: "Goth",
        codeNumeric: "206",
        date: "2004-05-01",
        pva: "Gothic",
      );
}
