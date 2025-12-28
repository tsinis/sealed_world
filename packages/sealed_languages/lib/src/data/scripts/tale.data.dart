part of "../../model/script/submodels/script.dart";

extension type const _TaleFactory._(ScriptTale _) implements ScriptTale {
  const _TaleFactory() : this._(const ScriptTale._());
}

/// A class that represents the Tai Le script.
final class ScriptTale extends Script {
  /// {@template sealed_world.script_tale_constructor}
  /// Creates a instance of [ScriptTale] (Tai Le script).
  ///
  /// ISO 15924 Alpha-4 code: `Tale`, ISO 15924 Numeric code: `353`.
  /// {@endtemplate}
  const factory ScriptTale() = _TaleFactory;

  const ScriptTale._()
    : super._(
        name: "Tai Le",
        code: "Tale",
        codeNumeric: "353",
        date: "2004-10-25",
        pva: "Tai_Le",
      );
}
