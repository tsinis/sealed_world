part of "../../model/script/writing_system.dart";

extension type const _ZinhFactory._(ScriptZinh _) implements ScriptZinh {
  const _ZinhFactory() : this._(const ScriptZinh._());
}

/// A class that represents the Code for inherited script script.
class ScriptZinh extends Script {
  /// {@template sealed_world.script_zinh_constructor}
  /// Creates a instance of [ScriptZinh] (Code for inherited script script).
  ///
  /// ISO 15924 Alpha-4 code: `Zinh`, ISO 15924 Numeric code: `994`.
  /// {@endtemplate}
  const factory ScriptZinh() = _ZinhFactory;

  const ScriptZinh._()
    : super(
        name: "Code for inherited script",
        code: "Zinh",
        codeNumeric: "994",
        date: "2009-02-23",
        pva: "Inherited",
      );
}
