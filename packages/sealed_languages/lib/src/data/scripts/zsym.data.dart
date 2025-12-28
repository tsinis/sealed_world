part of "../../model/script/submodels/script.dart";

extension type const _ZsymFactory._(ScriptZsym _) implements ScriptZsym {
  const _ZsymFactory() : this._(const ScriptZsym._());
}

/// A class that represents the Symbols script.
final class ScriptZsym extends Script {
  /// {@template sealed_world.script_zsym_constructor}
  /// Creates a instance of [ScriptZsym] (Symbols script).
  ///
  /// ISO 15924 Alpha-4 code: `Zsym`, ISO 15924 Numeric code: `996`.
  /// {@endtemplate}
  const factory ScriptZsym() = _ZsymFactory;

  const ScriptZsym._()
    : super._(
        name: "Symbols",
        code: "Zsym",
        codeNumeric: "996",
        date: "2007-11-26",
      );
}
