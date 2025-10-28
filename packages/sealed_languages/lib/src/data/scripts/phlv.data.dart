part of "../../model/script/writing_system.dart";

extension type const _PhlvFactory._(ScriptPhlv _) implements ScriptPhlv {
  const _PhlvFactory() : this._(const ScriptPhlv._());
}

/// A class that represents the Book Pahlavi script.
class ScriptPhlv extends Script {
  /// {@template sealed_world.script_phlv_constructor}
  /// Creates a instance of [ScriptPhlv] (Book Pahlavi script).
  ///
  /// ISO 15924 Alpha-4 code: `Phlv`, ISO 15924 Numeric code: `133`.
  /// {@endtemplate}
  const factory ScriptPhlv() = _PhlvFactory;

  const ScriptPhlv._()
    : super(
        name: "Book Pahlavi",
        code: "Phlv",
        codeNumeric: "133",
        date: "2007-07-15",
      );
}
