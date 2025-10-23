part of "../../model/script/writing_system.dart";

extension type const _HmngFactory._(ScriptHmng _) implements ScriptHmng {
  const _HmngFactory() : this._(const ScriptHmng._());
}

/// A class that represents the Pahawh Hmong script.
class ScriptHmng extends Script {
  /// {@template sealed_world.script_hmng_constructor}
  /// Creates a instance of [ScriptHmng] (Pahawh Hmong script).
  ///
  /// ISO 15924 Alpha-4 code: `Hmng`, ISO 15924 Numeric code: `450`.
  /// {@endtemplate}
  const factory ScriptHmng() = _HmngFactory;

  const ScriptHmng._()
    : super(
        name: "Pahawh Hmong",
        code: "Hmng",
        codeNumeric: "450",
        date: "2014-11-15",
        pva: "Pahawh_Hmong",
      );
}
