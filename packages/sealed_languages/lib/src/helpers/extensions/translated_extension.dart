import "../../../sealed_languages.dart";
import "../../interfaces/translated.dart";

extension TranslatedExtension<T extends TranslatedName> on Translated<T> {
  // ignore: long-parameter-list, `useLanguageFallback` is probably unnecessary.
  T translation(
    NaturalLanguage language, {
    String? countryCode,
    Script? script,
    bool useLanguageFallback = true,
    NaturalLanguage orElse = const LangEng(),
  }) =>
      maybeTranslation(
        language,
        countryCode: countryCode,
        script: script,
        useLanguageFallback: useLanguageFallback,
      ) ??
      translations.firstWhere((translation) => translation.language == orElse);

  T? maybeTranslation(
    NaturalLanguage language, {
    String? countryCode,
    Script? script,
    bool useLanguageFallback = true,
  }) {
    final filtered = List<T>.unmodifiable(
      translations.where((l10n) => l10n.language == language),
    );

    return switch (filtered.length) {
      0 => null,
      1 => filtered.first,
      _ => _maybeTranslation(
          filtered,
          useLanguageFallback: useLanguageFallback,
          countryCode: countryCode,
          script: script,
        ),
    };
  }

  T? _maybeTranslation(
    List<T> translations, {
    required bool useLanguageFallback,
    String? countryCode,
    Script? script,
  }) {
    if (countryCode == null && script == null) return translations.first;
    for (final l10n in translations) {
      if (countryCode != null && l10n.countryCode != countryCode) continue;
      if (script != null && l10n.script != script) continue;

      return l10n;
    }

    return useLanguageFallback ? translations.first : null;
  }
}
