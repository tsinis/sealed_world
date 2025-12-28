part of "../../model/script/submodels/script.dart";

extension type const _JpanFactory._(ScriptJpan _) implements ScriptJpan {
  const _JpanFactory() : this._(const ScriptJpan._());
}

/// A class that represents the Japanese (alias for Han + Hiragana + Katakana) script.
final class ScriptJpan extends Script {
  /// {@template sealed_world.script_jpan_constructor}
  /// Creates a instance of [ScriptJpan] (Japanese (alias for Han + Hiragana + Katakana) script).
  ///
  /// ISO 15924 Alpha-4 code: `Jpan`, ISO 15924 Numeric code: `413`.
  /// {@endtemplate}
  const factory ScriptJpan() = _JpanFactory;

  const ScriptJpan._()
    : super._(
        name: "Japanese (alias for Han + Hiragana + Katakana)",
        code: "Jpan",
        codeNumeric: "413",
        date: "2006-06-21",
      );
}
