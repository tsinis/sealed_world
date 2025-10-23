part of "../../model/script/writing_system.dart";

extension type const _RanjFactory._(ScriptRanj _) implements ScriptRanj {
  const _RanjFactory() : this._(const ScriptRanj._());
}

/// A class that represents the Ranjana script.
class ScriptRanj extends Script {
  /// {@template sealed_world.script_ranj_constructor}
  /// Creates a instance of [ScriptRanj] (Ranjana script).
  ///
  /// ISO 15924 Alpha-4 code: `Ranj`, ISO 15924 Numeric code: `303`.
  /// {@endtemplate}
  const factory ScriptRanj() = _RanjFactory;

  const ScriptRanj._()
    : super(
        name: "Ranjana",
        code: "Ranj",
        codeNumeric: "303",
        date: "2021-01-25",
      );
}
