part of "../../model/script/submodels/script.dart";

extension type const _ShrdFactory._(ScriptShrd _) implements ScriptShrd {
  const _ShrdFactory() : this._(const ScriptShrd._());
}

/// A class that represents the Sharada, Śāradā script.
final class ScriptShrd extends Script {
  /// {@template sealed_world.script_shrd_constructor}
  /// Creates a instance of [ScriptShrd] (Sharada, Śāradā script).
  ///
  /// ISO 15924 Alpha-4 code: `Shrd`, ISO 15924 Numeric code: `319`.
  /// {@endtemplate}
  const factory ScriptShrd() = _ShrdFactory;

  const ScriptShrd._()
    : super._(
        name: "Sharada, Śāradā",
        code: "Shrd",
        codeNumeric: "319",
        date: "2012-02-06",
        pva: "Sharada",
      );
}
