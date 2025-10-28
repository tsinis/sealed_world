part of "../../model/script/writing_system.dart";

extension type const _ShuiFactory._(ScriptShui _) implements ScriptShui {
  const _ShuiFactory() : this._(const ScriptShui._());
}

/// A class that represents the Shuishu script.
class ScriptShui extends Script {
  /// {@template sealed_world.script_shui_constructor}
  /// Creates a instance of [ScriptShui] (Shuishu script).
  ///
  /// ISO 15924 Alpha-4 code: `Shui`, ISO 15924 Numeric code: `530`.
  /// {@endtemplate}
  const factory ScriptShui() = _ShuiFactory;

  const ScriptShui._()
    : super(
        name: "Shuishu",
        code: "Shui",
        codeNumeric: "530",
        date: "2017-07-26",
      );
}
