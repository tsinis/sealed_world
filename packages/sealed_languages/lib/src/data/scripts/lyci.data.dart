part of "../../model/script/submodels/script.dart";

extension type const _LyciFactory._(ScriptLyci _) implements ScriptLyci {
  const _LyciFactory() : this._(const ScriptLyci._());
}

/// A class that represents the Lycian script.
final class ScriptLyci extends Script {
  /// {@template sealed_world.script_lyci_constructor}
  /// Creates a instance of [ScriptLyci] (Lycian script).
  ///
  /// ISO 15924 Alpha-4 code: `Lyci`, ISO 15924 Numeric code: `202`.
  /// {@endtemplate}
  const factory ScriptLyci() = _LyciFactory;

  const ScriptLyci._()
    : super._(
        name: "Lycian",
        code: "Lyci",
        codeNumeric: "202",
        date: "2007-07-02",
        pva: "Lycian",
      );
}
