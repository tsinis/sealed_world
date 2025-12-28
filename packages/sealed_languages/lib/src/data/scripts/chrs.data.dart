part of "../../model/script/submodels/script.dart";

extension type const _ChrsFactory._(ScriptChrs _) implements ScriptChrs {
  const _ChrsFactory() : this._(const ScriptChrs._());
}

/// A class that represents the Chorasmian script.
final class ScriptChrs extends Script {
  /// {@template sealed_world.script_chrs_constructor}
  /// Creates a instance of [ScriptChrs] (Chorasmian script).
  ///
  /// ISO 15924 Alpha-4 code: `Chrs`, ISO 15924 Numeric code: `109`.
  /// {@endtemplate}
  const factory ScriptChrs() = _ChrsFactory;

  const ScriptChrs._()
    : super._(
        name: "Chorasmian",
        code: "Chrs",
        codeNumeric: "109",
        date: "2019-08-19",
        pva: "Chorasmian",
      );
}
