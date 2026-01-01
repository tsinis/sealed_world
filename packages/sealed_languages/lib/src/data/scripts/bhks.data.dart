part of "../../model/script/submodels/script.dart";

extension type const _BhksFactory._(ScriptBhks _) implements ScriptBhks {
  const _BhksFactory() : this._(const ScriptBhks._());
}

/// A class that represents the Bhaiksuki script.
final class ScriptBhks extends Script {
  /// {@template sealed_world.script_bhks_constructor}
  /// Creates a instance of [ScriptBhks] (Bhaiksuki script).
  ///
  /// ISO 15924 Alpha-4 code: `Bhks`, ISO 15924 Numeric code: `334`.
  /// {@endtemplate}
  const factory ScriptBhks() = _BhksFactory;

  const ScriptBhks._()
    : super._(
        name: "Bhaiksuki",
        code: "Bhks",
        codeNumeric: "334",
        date: "2016-12-05",
        pva: "Bhaiksuki",
      );
}
