part of "../../model/script/submodels/script.dart";

extension type const _NkdbFactory._(ScriptNkdb _) implements ScriptNkdb {
  const new() : this._(const ScriptNkdb._());
}

/// A class that represents the Naxi Dongba (na²¹ɕi³³ to³³ba²¹, Nakhi Tomba)
/// script.
final class ScriptNkdb extends Script {
  /// {@template sealed_world.script_nkdb_constructor}
  /// Creates a instance of [ScriptNkdb]
  /// (Naxi Dongba (na²¹ɕi³³ to³³ba²¹, Nakhi Tomba) script).
  ///
  /// ISO 15924 Alpha-4 code: `Nkdb`, ISO 15924 Numeric code: `085`.
  /// {@endtemplate}
  const factory() = _NkdbFactory;

  const new _()
    : super._(
        name: "Naxi Dongba (na²¹ɕi³³ to³³ba²¹, Nakhi Tomba)",
        code: "Nkdb",
        codeNumeric: "085",
        date: "2017-07-26",
      );
}
