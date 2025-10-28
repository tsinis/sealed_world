part of "../../model/script/writing_system.dart";

extension type const _MrooFactory._(ScriptMroo _) implements ScriptMroo {
  const _MrooFactory() : this._(const ScriptMroo._());
}

/// A class that represents the Mro, Mru script.
class ScriptMroo extends Script {
  /// {@template sealed_world.script_mroo_constructor}
  /// Creates a instance of [ScriptMroo] (Mro, Mru script).
  ///
  /// ISO 15924 Alpha-4 code: `Mroo`, ISO 15924 Numeric code: `264`.
  /// {@endtemplate}
  const factory ScriptMroo() = _MrooFactory;

  const ScriptMroo._()
    : super(
        name: "Mro, Mru",
        code: "Mroo",
        codeNumeric: "264",
        date: "2016-12-05",
        pva: "Mro",
      );
}
