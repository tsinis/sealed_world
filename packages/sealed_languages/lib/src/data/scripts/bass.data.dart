part of "../../model/script/writing_system.dart";

extension type const _BassFactory._(ScriptBass _) implements ScriptBass {
  const _BassFactory() : this._(const ScriptBass._());
}

/// A class that represents the Bassa Vah script.
class ScriptBass extends Script {
  /// {@template sealed_world.script_bass_constructor}
  /// Creates a instance of [ScriptBass] (Bassa Vah script).
  ///
  /// ISO 15924 Alpha-4 code: `Bass`, ISO 15924 Numeric code: `259`.
  /// {@endtemplate}
  const factory ScriptBass() = _BassFactory;

  const ScriptBass._()
    : super(
        name: "Bassa Vah",
        code: "Bass",
        codeNumeric: "259",
        date: "2014-11-15",
        pva: "Bassa_Vah",
      );
}
