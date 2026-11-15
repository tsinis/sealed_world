part of "../../model/script/submodels/script.dart";

extension type const _TagbFactory._(ScriptTagb _) implements ScriptTagb {
  const new() : this._(const ScriptTagb._());
}

/// A class that represents the Tagbanwa script.
final class ScriptTagb extends Script {
  /// {@template sealed_world.script_tagb_constructor}
  /// Creates a instance of [ScriptTagb] (Tagbanwa script).
  ///
  /// ISO 15924 Alpha-4 code: `Tagb`, ISO 15924 Numeric code: `373`.
  /// {@endtemplate}
  const factory() = _TagbFactory;

  const new _()
    : super._(
        name: "Tagbanwa",
        code: "Tagb",
        codeNumeric: "373",
        date: "2004-05-01",
        pva: "Tagbanwa",
      );
}
