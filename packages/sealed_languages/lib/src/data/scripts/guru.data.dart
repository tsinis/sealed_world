part of "../../model/script/submodels/script.dart";

extension type const _GuruFactory._(ScriptGuru _) implements ScriptGuru {
  const _GuruFactory() : this._(const ScriptGuru._());
}

/// A class that represents the Gurmukhi script.
final class ScriptGuru extends Script {
  /// {@template sealed_world.script_guru_constructor}
  /// Creates a instance of [ScriptGuru] (Gurmukhi script).
  ///
  /// ISO 15924 Alpha-4 code: `Guru`, ISO 15924 Numeric code: `310`.
  /// {@endtemplate}
  const factory ScriptGuru() = _GuruFactory;

  const ScriptGuru._()
    : super._(
        name: "Gurmukhi",
        code: "Guru",
        codeNumeric: "310",
        date: "2004-05-01",
        pva: "Gurmukhi",
      );
}
