part of "../../model/script/submodels/script.dart";

extension type const _LepcFactory._(ScriptLepc _) implements ScriptLepc {
  const _LepcFactory() : this._(const ScriptLepc._());
}

/// A class that represents the Lepcha (Róng) script.
final class ScriptLepc extends Script {
  /// {@template sealed_world.script_lepc_constructor}
  /// Creates a instance of [ScriptLepc] (Lepcha (Róng) script).
  ///
  /// ISO 15924 Alpha-4 code: `Lepc`, ISO 15924 Numeric code: `335`.
  /// {@endtemplate}
  const factory ScriptLepc() = _LepcFactory;

  const ScriptLepc._()
    : super._(
        name: "Lepcha (Róng)",
        code: "Lepc",
        codeNumeric: "335",
        date: "2007-07-02",
        pva: "Lepcha",
      );
}
