part of "../../model/script/submodels/script.dart";

extension type const _OgamFactory._(ScriptOgam _) implements ScriptOgam {
  const _OgamFactory() : this._(const ScriptOgam._());
}

/// A class that represents the Ogham script.
final class ScriptOgam extends Script {
  /// {@template sealed_world.script_ogam_constructor}
  /// Creates a instance of [ScriptOgam] (Ogham script).
  ///
  /// ISO 15924 Alpha-4 code: `Ogam`, ISO 15924 Numeric code: `212`.
  /// {@endtemplate}
  const factory ScriptOgam() = _OgamFactory;

  const ScriptOgam._()
    : super._(
        name: "Ogham",
        code: "Ogam",
        codeNumeric: "212",
        date: "2004-05-01",
        pva: "Ogham",
      );
}
