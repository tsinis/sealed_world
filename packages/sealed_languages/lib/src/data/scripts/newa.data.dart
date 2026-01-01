part of "../../model/script/submodels/script.dart";

extension type const _NewaFactory._(ScriptNewa _) implements ScriptNewa {
  const _NewaFactory() : this._(const ScriptNewa._());
}

/// A class that represents the Newa, Newar, Newari, Nepāla lipi script.
final class ScriptNewa extends Script {
  /// {@template sealed_world.script_newa_constructor}
  /// Creates a instance of [ScriptNewa] (Newa, Newar, Newari, Nepāla lipi
  /// script).
  ///
  /// ISO 15924 Alpha-4 code: `Newa`, ISO 15924 Numeric code: `333`.
  /// {@endtemplate}
  const factory ScriptNewa() = _NewaFactory;

  const ScriptNewa._()
    : super._(
        name: "Newa, Newar, Newari, Nepāla lipi",
        code: "Newa",
        codeNumeric: "333",
        date: "2016-12-05",
        pva: "Newa",
      );
}
