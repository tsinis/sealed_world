part of "../../model/script/writing_system.dart";

extension type const _ManiFactory._(ScriptMani _) implements ScriptMani {
  const _ManiFactory() : this._(const ScriptMani._());
}

/// A class that represents the Manichaean script.
class ScriptMani extends Script {
  /// {@template sealed_world.script_mani_constructor}
  /// Creates a instance of [ScriptMani] (Manichaean script).
  ///
  /// ISO 15924 Alpha-4 code: `Mani`, ISO 15924 Numeric code: `139`.
  /// {@endtemplate}
  const factory ScriptMani() = _ManiFactory;

  const ScriptMani._()
    : super(
        name: "Manichaean",
        code: "Mani",
        codeNumeric: "139",
        date: "2014-11-15",
        pva: "Manichaean",
      );
}
