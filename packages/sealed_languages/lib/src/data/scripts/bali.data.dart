part of "../../model/script/writing_system.dart";

extension type const _BaliFactory._(ScriptBali _) implements ScriptBali {
  const _BaliFactory() : this._(const ScriptBali._());
}

/// A class that represents the Balinese script.
class ScriptBali extends Script {
  /// {@template sealed_world.script_bali_constructor}
  /// Creates a instance of [ScriptBali] (Balinese script).
  ///
  /// ISO 15924 Alpha-4 code: `Bali`, ISO 15924 Numeric code: `360`.
  /// {@endtemplate}
  const factory ScriptBali() = _BaliFactory;

  const ScriptBali._()
    : super(
        name: "Balinese",
        code: "Bali",
        codeNumeric: "360",
        date: "2006-10-10",
        pva: "Balinese",
      );
}
