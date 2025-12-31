part of "../../model/script/submodels/script.dart";

extension type const _NkgbFactory._(ScriptNkgb _) implements ScriptNkgb {
  const _NkgbFactory() : this._(const ScriptNkgb._());
}

/// A class that represents the Naxi Geba
/// (na²¹ɕi³³ gʌ²¹ba²¹, 'Na-'Khi ²Ggŏ-¹baw, Nakhi Geba) script.
final class ScriptNkgb extends Script {
  /// {@template sealed_world.script_nkgb_constructor}
  /// Creates a instance of [ScriptNkgb]
  /// (Naxi Geba (na²¹ɕi³³ gʌ²¹ba²¹, 'Na-'Khi ²Ggŏ-¹baw, Nakhi Geba) script).
  ///
  /// ISO 15924 Alpha-4 code: `Nkgb`, ISO 15924 Numeric code: `420`.
  /// {@endtemplate}
  const factory ScriptNkgb() = _NkgbFactory;

  const ScriptNkgb._()
    : super._(
        name: "Naxi Geba (na²¹ɕi³³ gʌ²¹ba²¹, 'Na-'Khi ²Ggŏ-¹baw, Nakhi Geba)",
        code: "Nkgb",
        codeNumeric: "420",
        date: "2017-07-26",
      );
}
