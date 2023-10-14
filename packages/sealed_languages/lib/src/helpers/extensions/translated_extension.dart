import "../../../sealed_languages.dart";
import "../../interfaces/translated.dart";

extension TranslatedExtension<T extends TranslatedName> on Translated<T> {
  T? maybeTranslation(
    NaturalLanguage language, {
    String? countryCode,
    Script? script,
  }) {
    for (final l10n in translations) {
      if (l10n.language != language) continue;
      if (countryCode != null && l10n.countryCode != countryCode) continue;
      if (script != null && l10n.script != script) continue;

      return l10n;
    }

    return null;
  }
}
