part of "../../model/script/submodels/script.dart";

extension type const _TaluFactory._(ScriptTalu _) implements ScriptTalu {
  const new() : this._(const ScriptTalu._());
}

/// A class that represents the New Tai Lue script.
final class ScriptTalu extends Script {
  /// {@template sealed_world.script_talu_constructor}
  /// Creates a instance of [ScriptTalu] (New Tai Lue script).
  ///
  /// ISO 15924 Alpha-4 code: `Talu`, ISO 15924 Numeric code: `354`.
  /// {@endtemplate}
  const factory() = _TaluFactory;

  const new _()
    : super._(
        name: "New Tai Lue",
        code: "Talu",
        codeNumeric: "354",
        date: "2006-06-21",
        pva: "New_Tai_Lue",
      );
}
