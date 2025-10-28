part of "../../model/script/writing_system.dart";

extension type const _BrahFactory._(ScriptBrah _) implements ScriptBrah {
  const _BrahFactory() : this._(const ScriptBrah._());
}

/// A class that represents the Brahmi script.
class ScriptBrah extends Script {
  /// {@template sealed_world.script_brah_constructor}
  /// Creates a instance of [ScriptBrah] (Brahmi script).
  ///
  /// ISO 15924 Alpha-4 code: `Brah`, ISO 15924 Numeric code: `300`.
  /// {@endtemplate}
  const factory ScriptBrah() = _BrahFactory;

  const ScriptBrah._()
    : super(
        name: "Brahmi",
        code: "Brah",
        codeNumeric: "300",
        date: "2010-07-23",
        pva: "Brahmi",
      );
}
