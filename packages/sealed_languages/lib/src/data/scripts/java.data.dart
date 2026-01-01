part of "../../model/script/submodels/script.dart";

extension type const _JavaFactory._(ScriptJava _) implements ScriptJava {
  const _JavaFactory() : this._(const ScriptJava._());
}

/// A class that represents the Javanese script.
final class ScriptJava extends Script {
  /// {@template sealed_world.script_java_constructor}
  /// Creates a instance of [ScriptJava] (Javanese script).
  ///
  /// ISO 15924 Alpha-4 code: `Java`, ISO 15924 Numeric code: `361`.
  /// {@endtemplate}
  const factory ScriptJava() = _JavaFactory;

  const ScriptJava._()
    : super._(
        name: "Javanese",
        code: "Java",
        codeNumeric: "361",
        date: "2009-06-01",
        pva: "Javanese",
      );
}
