part of "../../model/script/writing_system.dart";

extension type const _CirtFactory._(ScriptCirt _) implements ScriptCirt {
  const _CirtFactory() : this._(const ScriptCirt._());
}

/// A class that represents the Cirth script.
class ScriptCirt extends Script {
  /// {@template sealed_world.script_cirt_constructor}
  /// Creates a instance of [ScriptCirt] (Cirth script).
  ///
  /// ISO 15924 Alpha-4 code: `Cirt`, ISO 15924 Numeric code: `291`.
  /// {@endtemplate}
  const factory ScriptCirt() = _CirtFactory;

  const ScriptCirt._()
    : super(
        name: "Cirth",
        code: "Cirt",
        codeNumeric: "291",
        date: "2004-05-01",
      );
}
