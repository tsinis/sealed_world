part of "../../model/script/writing_system.dart";

extension type const _EgydFactory._(ScriptEgyd _) implements ScriptEgyd {
  const _EgydFactory() : this._(const ScriptEgyd._());
}

/// A class that represents the Egyptian demotic script.
class ScriptEgyd extends Script {
  /// {@template sealed_world.script_egyd_constructor}
  /// Creates a instance of [ScriptEgyd] (Egyptian demotic script).
  ///
  /// ISO 15924 Alpha-4 code: `Egyd`, ISO 15924 Numeric code: `070`.
  /// {@endtemplate}
  const factory ScriptEgyd() = _EgydFactory;

  const ScriptEgyd._()
    : super(
        name: "Egyptian demotic",
        code: "Egyd",
        codeNumeric: "070",
        date: "2004-05-01",
      );
}
