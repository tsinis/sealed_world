import "package:sealed_languages/language_translations.dart";
import "package:sealed_languages/src/helpers/extensions/iso_translated_iterable_extension.dart";
import "package:sealed_languages/src/model/language/language.dart";
import "package:test/test.dart";

void main() => group("IsoTranslatedIterableExtension", () {
      test(
        """there should be a translations cache map for every language in supported languages""",
        () {
          for (final language in kSealedLanguagesSupportedLanguages) {
            final cache = NaturalLanguage.list.translationsCacheMap(
              language,
              script: language.scripts.first,
            );
            expect(cache.length, NaturalLanguage.list.length);
          }
        },
      );
    });
