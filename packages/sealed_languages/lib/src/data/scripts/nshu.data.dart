part of "../../model/script/writing_system.dart";

extension type const _NshuFactory._(ScriptNshu _) implements ScriptNshu {
  const _NshuFactory() : this._(const ScriptNshu._());
}

/// A class that represents the Nüshu script.
class ScriptNshu extends Script {
  /// {@template sealed_world.script_nshu_constructor}
  /// Creates a instance of [ScriptNshu] (Nüshu script).
  ///
  /// ISO 15924 Alpha-4 code: `Nshu`, ISO 15924 Numeric code: `499`.
  /// {@endtemplate}
  const factory ScriptNshu() = _NshuFactory;

  const ScriptNshu._()
    : super(
        name: "Nüshu",
        code: "Nshu",
        codeNumeric: "499",
        date: "2017-07-26",
        pva: "Nushu",
      );
}
