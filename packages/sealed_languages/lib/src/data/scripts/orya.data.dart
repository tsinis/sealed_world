part of "../../model/script/submodels/script.dart";

extension type const _OryaFactory._(ScriptOrya _) implements ScriptOrya {
  const _OryaFactory() : this._(const ScriptOrya._());
}

/// A class that represents the Oriya (Odia) script.
final class ScriptOrya extends Script {
  /// {@template sealed_world.script_orya_constructor}
  /// Creates a instance of [ScriptOrya] (Oriya (Odia) script).
  ///
  /// ISO 15924 Alpha-4 code: `Orya`, ISO 15924 Numeric code: `327`.
  /// {@endtemplate}
  const factory ScriptOrya() = _OryaFactory;

  const ScriptOrya._()
    : super._(
        name: "Oriya (Odia)",
        code: "Orya",
        codeNumeric: "327",
        date: "2016-12-05",
        pva: "Oriya",
      );
}
