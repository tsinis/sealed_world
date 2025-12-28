part of "../../model/script/submodels/script.dart";

extension type const _JurcFactory._(ScriptJurc _) implements ScriptJurc {
  const _JurcFactory() : this._(const ScriptJurc._());
}

/// A class that represents the Jurchen script.
final class ScriptJurc extends Script {
  /// {@template sealed_world.script_jurc_constructor}
  /// Creates a instance of [ScriptJurc] (Jurchen script).
  ///
  /// ISO 15924 Alpha-4 code: `Jurc`, ISO 15924 Numeric code: `510`.
  /// {@endtemplate}
  const factory ScriptJurc() = _JurcFactory;

  const ScriptJurc._()
    : super._(
        name: "Jurchen",
        code: "Jurc",
        codeNumeric: "510",
        date: "2010-12-21",
      );
}
