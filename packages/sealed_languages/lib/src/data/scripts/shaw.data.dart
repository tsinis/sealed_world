part of "../../model/script/submodels/script.dart";

extension type const _ShawFactory._(ScriptShaw _) implements ScriptShaw {
  const _ShawFactory() : this._(const ScriptShaw._());
}

/// A class that represents the Shavian (Shaw) script.
final class ScriptShaw extends Script {
  /// {@template sealed_world.script_shaw_constructor}
  /// Creates a instance of [ScriptShaw] (Shavian (Shaw) script).
  ///
  /// ISO 15924 Alpha-4 code: `Shaw`, ISO 15924 Numeric code: `281`.
  /// {@endtemplate}
  const factory ScriptShaw() = _ShawFactory;

  const ScriptShaw._()
    : super._(
        name: "Shavian (Shaw)",
        code: "Shaw",
        codeNumeric: "281",
        date: "2004-05-01",
        pva: "Shavian",
      );
}
