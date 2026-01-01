part of "../../model/script/submodels/script.dart";

extension type const _TavtFactory._(ScriptTavt _) implements ScriptTavt {
  const _TavtFactory() : this._(const ScriptTavt._());
}

/// A class that represents the Tai Viet script.
final class ScriptTavt extends Script {
  /// {@template sealed_world.script_tavt_constructor}
  /// Creates a instance of [ScriptTavt] (Tai Viet script).
  ///
  /// ISO 15924 Alpha-4 code: `Tavt`, ISO 15924 Numeric code: `359`.
  /// {@endtemplate}
  const factory ScriptTavt() = _TavtFactory;

  const ScriptTavt._()
    : super._(
        name: "Tai Viet",
        code: "Tavt",
        codeNumeric: "359",
        date: "2009-06-01",
        pva: "Tai_Viet",
      );
}
