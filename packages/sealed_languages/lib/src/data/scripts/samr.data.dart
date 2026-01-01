part of "../../model/script/submodels/script.dart";

extension type const _SamrFactory._(ScriptSamr _) implements ScriptSamr {
  const _SamrFactory() : this._(const ScriptSamr._());
}

/// A class that represents the Samaritan script.
final class ScriptSamr extends Script {
  /// {@template sealed_world.script_samr_constructor}
  /// Creates a instance of [ScriptSamr] (Samaritan script).
  ///
  /// ISO 15924 Alpha-4 code: `Samr`, ISO 15924 Numeric code: `123`.
  /// {@endtemplate}
  const factory ScriptSamr() = _SamrFactory;

  const ScriptSamr._()
    : super._(
        name: "Samaritan",
        code: "Samr",
        codeNumeric: "123",
        date: "2009-06-01",
        pva: "Samaritan",
      );
}
