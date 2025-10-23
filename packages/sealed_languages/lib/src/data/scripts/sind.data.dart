part of "../../model/script/writing_system.dart";

extension type const _SindFactory._(ScriptSind _) implements ScriptSind {
  const _SindFactory() : this._(const ScriptSind._());
}

/// A class that represents the Khudawadi, Sindhi script.
class ScriptSind extends Script {
  /// {@template sealed_world.script_sind_constructor}
  /// Creates a instance of [ScriptSind] (Khudawadi, Sindhi script).
  ///
  /// ISO 15924 Alpha-4 code: `Sind`, ISO 15924 Numeric code: `318`.
  /// {@endtemplate}
  const factory ScriptSind() = _SindFactory;

  const ScriptSind._()
    : super(
        name: "Khudawadi, Sindhi",
        code: "Sind",
        codeNumeric: "318",
        date: "2014-11-15",
        pva: "Khudawadi",
      );
}
