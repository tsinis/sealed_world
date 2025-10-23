part of "../../model/script/writing_system.dart";

extension type const _OlckFactory._(ScriptOlck _) implements ScriptOlck {
  const _OlckFactory() : this._(const ScriptOlck._());
}

/// A class that represents the Ol Chiki (Ol Cemet’, Ol, Santali) script.
class ScriptOlck extends Script {
  /// {@template sealed_world.script_olck_constructor}
  /// Creates a instance of [ScriptOlck] (Ol Chiki (Ol Cemet’, Ol, Santali) script).
  ///
  /// ISO 15924 Alpha-4 code: `Olck`, ISO 15924 Numeric code: `261`.
  /// {@endtemplate}
  const factory ScriptOlck() = _OlckFactory;

  const ScriptOlck._()
    : super(
        name: "Ol Chiki (Ol Cemet’, Ol, Santali)",
        code: "Olck",
        codeNumeric: "261",
        date: "2007-07-02",
        pva: "Ol_Chiki",
      );
}
