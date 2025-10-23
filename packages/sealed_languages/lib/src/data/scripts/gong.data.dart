part of "../../model/script/writing_system.dart";

extension type const _GongFactory._(ScriptGong _) implements ScriptGong {
  const _GongFactory() : this._(const ScriptGong._());
}

/// A class that represents the Gunjala Gondi script.
class ScriptGong extends Script {
  /// {@template sealed_world.script_gong_constructor}
  /// Creates a instance of [ScriptGong] (Gunjala Gondi script).
  ///
  /// ISO 15924 Alpha-4 code: `Gong`, ISO 15924 Numeric code: `312`.
  /// {@endtemplate}
  const factory ScriptGong() = _GongFactory;

  const ScriptGong._()
    : super(
        name: "Gunjala Gondi",
        code: "Gong",
        codeNumeric: "312",
        date: "2016-12-05",
        pva: "Gunjala_Gondi",
      );
}
