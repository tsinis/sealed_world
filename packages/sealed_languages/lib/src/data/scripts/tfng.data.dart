part of "../../model/script/submodels/script.dart";

extension type const _TfngFactory._(ScriptTfng _) implements ScriptTfng {
  const _TfngFactory() : this._(const ScriptTfng._());
}

/// A class that represents the Tifinagh (Berber) script.
final class ScriptTfng extends Script {
  /// {@template sealed_world.script_tfng_constructor}
  /// Creates a instance of [ScriptTfng] (Tifinagh (Berber) script).
  ///
  /// ISO 15924 Alpha-4 code: `Tfng`, ISO 15924 Numeric code: `120`.
  /// {@endtemplate}
  const factory ScriptTfng() = _TfngFactory;

  const ScriptTfng._()
    : super._(
        name: "Tifinagh (Berber)",
        code: "Tfng",
        codeNumeric: "120",
        date: "2006-06-21",
        pva: "Tifinagh",
      );
}
