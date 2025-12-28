part of "../../model/script/submodels/script.dart";

extension type const _GonmFactory._(ScriptGonm _) implements ScriptGonm {
  const _GonmFactory() : this._(const ScriptGonm._());
}

/// A class that represents the Masaram Gondi script.
final class ScriptGonm extends Script {
  /// {@template sealed_world.script_gonm_constructor}
  /// Creates a instance of [ScriptGonm] (Masaram Gondi script).
  ///
  /// ISO 15924 Alpha-4 code: `Gonm`, ISO 15924 Numeric code: `313`.
  /// {@endtemplate}
  const factory ScriptGonm() = _GonmFactory;

  const ScriptGonm._()
    : super._(
        name: "Masaram Gondi",
        code: "Gonm",
        codeNumeric: "313",
        date: "2017-07-26",
        pva: "Masaram_Gondi",
      );
}
