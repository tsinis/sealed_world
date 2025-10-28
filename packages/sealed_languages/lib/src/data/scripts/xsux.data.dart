part of "../../model/script/writing_system.dart";

extension type const _XsuxFactory._(ScriptXsux _) implements ScriptXsux {
  const _XsuxFactory() : this._(const ScriptXsux._());
}

/// A class that represents the Cuneiform, Sumero-Akkadian script.
class ScriptXsux extends Script {
  /// {@template sealed_world.script_xsux_constructor}
  /// Creates a instance of [ScriptXsux] (Cuneiform, Sumero-Akkadian script).
  ///
  /// ISO 15924 Alpha-4 code: `Xsux`, ISO 15924 Numeric code: `020`.
  /// {@endtemplate}
  const factory ScriptXsux() = _XsuxFactory;

  const ScriptXsux._()
    : super(
        name: "Cuneiform, Sumero-Akkadian",
        code: "Xsux",
        codeNumeric: "020",
        date: "2006-10-10",
        pva: "Cuneiform",
      );
}
