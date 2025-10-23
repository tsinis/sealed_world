part of "../../model/script/writing_system.dart";

extension type const _MarcFactory._(ScriptMarc _) implements ScriptMarc {
  const _MarcFactory() : this._(const ScriptMarc._());
}

/// A class that represents the Marchen script.
class ScriptMarc extends Script {
  /// {@template sealed_world.script_marc_constructor}
  /// Creates a instance of [ScriptMarc] (Marchen script).
  ///
  /// ISO 15924 Alpha-4 code: `Marc`, ISO 15924 Numeric code: `332`.
  /// {@endtemplate}
  const factory ScriptMarc() = _MarcFactory;

  const ScriptMarc._()
    : super(
        name: "Marchen",
        code: "Marc",
        codeNumeric: "332",
        date: "2016-12-05",
        pva: "Marchen",
      );
}
