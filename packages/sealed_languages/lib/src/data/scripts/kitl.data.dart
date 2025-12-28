part of "../../model/script/submodels/script.dart";

extension type const _KitlFactory._(ScriptKitl _) implements ScriptKitl {
  const _KitlFactory() : this._(const ScriptKitl._());
}

/// A class that represents the Khitan large script script.
final class ScriptKitl extends Script {
  /// {@template sealed_world.script_kitl_constructor}
  /// Creates a instance of [ScriptKitl] (Khitan large script script).
  ///
  /// ISO 15924 Alpha-4 code: `Kitl`, ISO 15924 Numeric code: `505`.
  /// {@endtemplate}
  const factory ScriptKitl() = _KitlFactory;

  const ScriptKitl._()
    : super._(
        name: "Khitan large script",
        code: "Kitl",
        codeNumeric: "505",
        date: "2015-07-15",
      );
}
