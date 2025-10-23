part of "../../model/script/writing_system.dart";

extension type const _SunuFactory._(ScriptSunu _) implements ScriptSunu {
  const _SunuFactory() : this._(const ScriptSunu._());
}

/// A class that represents the Sunuwar script.
class ScriptSunu extends Script {
  /// {@template sealed_world.script_sunu_constructor}
  /// Creates a instance of [ScriptSunu] (Sunuwar script).
  ///
  /// ISO 15924 Alpha-4 code: `Sunu`, ISO 15924 Numeric code: `274`.
  /// {@endtemplate}
  const factory ScriptSunu() = _SunuFactory;

  const ScriptSunu._()
    : super(
        name: "Sunuwar",
        code: "Sunu",
        codeNumeric: "274",
        date: "2021-12-03",
      );
}
