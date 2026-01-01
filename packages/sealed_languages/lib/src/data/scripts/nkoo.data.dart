part of "../../model/script/submodels/script.dart";

extension type const _NkooFactory._(ScriptNkoo _) implements ScriptNkoo {
  const _NkooFactory() : this._(const ScriptNkoo._());
}

/// A class that represents the N’Ko script.
final class ScriptNkoo extends Script {
  /// {@template sealed_world.script_nkoo_constructor}
  /// Creates a instance of [ScriptNkoo] (N’Ko script).
  ///
  /// ISO 15924 Alpha-4 code: `Nkoo`, ISO 15924 Numeric code: `165`.
  /// {@endtemplate}
  const factory ScriptNkoo() = _NkooFactory;

  const ScriptNkoo._()
    : super._(
        name: "N’Ko",
        code: "Nkoo",
        codeNumeric: "165",
        date: "2006-10-10",
        pva: "Nko",
      );
}
