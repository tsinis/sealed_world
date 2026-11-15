part of "../../model/script/submodels/script.dart";

extension type const _BaliFactory._(ScriptBali _) implements ScriptBali {
  const new() : this._(const ScriptBali._());
}

/// A class that represents the Balinese script.
final class ScriptBali extends Script {
  /// {@template sealed_world.script_bali_constructor}
  /// Creates a instance of [ScriptBali] (Balinese script).
  ///
  /// ISO 15924 Alpha-4 code: `Bali`, ISO 15924 Numeric code: `360`.
  /// {@endtemplate}
  const factory() = _BaliFactory;

  const new _()
    : super._(
        name: "Balinese",
        code: "Bali",
        codeNumeric: "360",
        date: "2006-10-10",
        pva: "Balinese",
      );
}
